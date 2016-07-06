/*
View to show the list of scheduled flights with following details:
	FlightNumber
	FlightStatus
	ScheduledTime
	ActualTime
	AirplaneModelNo
	DepartingAirport
	ArrivalAirport
*/
CREATE VIEW ListOfScheduledFlights	(FlightNumber, Status, ScheduledTime, 
									ActualTime, AirplaneModelNo, DepartingAirport, 
									ArrivalAirport) 
AS
	SELECT a.FlightNumber, b.Text, c.DepartureTime, d.DepartureTime, g.Text, f.DepartingAirport, f.ArrivalAirport
		FROM ScheduledFlights a 
			INNER JOIN ScheduleStatus b ON a.Status = b.Id
			INNER JOIN ScheduledDetails c ON c.Id=a.ScheduleId
			INNER JOIN ActualDetails d ON d.Id = a.ScheduleId
			INNER JOIN Airplanes e ON a.AirplaneId = e.AirplaneId
			INNER JOIN FlightRoutes f ON a.RouteId = f.RouteId
			INNER JOIN AirplaneModelNo g ON e.ModelNo = g.ModelId;

SELECT *
	FROM ListOfScheduledFlights;

DROP VIEW ListOfScheduledFlights;

/*
View to show the passenger info of all the customers showing details :
	Name(First+Last)
	SeatId
	Class
	DepartingAirport
	DepartingTerminal
	DepartingGate
	ArrivalAirport
	ArrivalTerminal
	ArrivalGate
*/

CREATE VIEW PassengerInfo	(Name, SeatId, Class, 
							DepartingAirport, DepartingTerminal, DepartingGate, 
							ArrivalAirport, ArrivalTerminal, ArrivalGate) 
AS
	SELECT	a.FirstName + ' ' + a.LastName, b.SeatId, b.Class, c.AirportName, d.TerminalNumber, 
			e.GateNumber, f.AirportName, g.TerminalNumber, h.GateNumber
		FROM Customers a 
		LEFT OUTER JOIN SeatDetails b ON b.CustomerId = a.CustomerId
		INNER JOIN ScheduledFlights i ON b.ScheduleId = i.ScheduleId
		INNER JOIN FlightRoutes j ON i.RouteId = j.RouteId
		INNER JOIN Airports c ON j.DepartingAirport = c.AirportId
		INNER JOIN TerminalsAvailable d ON c.AirportId = d.AirportId
		INNER JOIN GatesAvailable e ON e.TerminalId = d.Id
		INNER JOIN Airports f ON j.ArrivalAirport = f.AirportId
		INNER JOIN TerminalsAvailable g ON f.AirportId = g.AirportId
		INNER JOIN GatesAvailable h ON h.TerminalId = g.Id;

DROP VIEW PassengerInfo;

SELECT * FROM PassengerInfo
ORDER BY Name;

/*
View to show the list of all airports where a plane is located. It shows the number of planes at that airport along with 
the following details:
	AiportId
	AirportId
	NumberOfPlanesPresent
*/

CREATE VIEW AirportsWithPlanes(AirportId, AirportName, NumberOfPlanesPresent) 
AS
	SELECT b.AirportId, a.AirportName, COUNT(*)
		FROM Airplanes b, Airports a
			WHERE b.AirportId = a.AirportId
			GROUP BY b.AirportId,a.AirportName;

SELECT * FROM AirportsWithPlanes;

DROP VIEW AirportsWithPlanes;

/*
View to show all the maintenance data of all the Airplanes in the fleet along with the following details :
	AirplaneId
	Manufacturer
	ModelNo
	DateBuilt
	MaintenanceType
	StartDate
	EstimatedCompletionDate
	NoOfEmployeesWorkingOnMaintenance
*/

CREATE VIEW AirplanesMaintenanceData(AirplaneId,Manufacturer,ModelNo, 
									DateBuilt, MaintenanceType, StartDate, 
									EstimatedCompletionDate,NoOfEmployeesWorkingOnMaintenance) 
AS
	SELECT a.AirplaneId, b.Text, c.Text, a.DateBuilt, d.Text, e.MaintenanceStartDate, e.EstimatedCompletion, COUNT(*)
		FROM Airplanes a, Manufacturers b, AirplaneModelNo c, Maintenance e, MaintenanceType d, MaintenanceEmployees f, Employees g 
			  WHERE	a.AirplaneId = e.AirplaneId
				AND a.Manufacturer = b.ManufacturerId
				AND a.ModelNo = c.ModelId 
				AND e.Type = d.Id 
				AND e.MaintenanceId = f.MaintenanceId
				AND f.EmployeeId = g.EmployeeId
			  GROUP BY a.AirplaneId, b.Text, c.Text, a.DateBuilt, d.Text, e.MaintenanceStartDate, e.EstimatedCompletion;

SELECT * FROM AirplanesMaintenanceData;

DROP VIEW AirplanesMaintenanceData;

		  
