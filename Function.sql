--Passenger information
--This is a function that returns a table containing the passenger travel details of the passenger whose information was entered.
-- It returns a table that provides the following data :
-- FlightNumber
-- SeatNumber
-- Class
-- DepartureAirport
-- DepartureTime
-- ArrivalAirport
-- ArrivalTime
-- StatusOfTheFlight

CREATE FUNCTION dbo.PassengerTravelDetails (@FirstName AS VARCHAR(50), @LastName AS VARCHAR(50), @BirthDate AS DATE, @FrequentFlyerNumber AS CHAR(10))
RETURNS @info TABLE(Name VARCHAR(100) NOT NULL,
					FrequentFlyerNumber CHAR(10) NULL,
					FlightNumber VARCHAR(20) NOT NULL,
					SeatNumber INT NOT NULL,
					Class TEXT NOT NULL,
					DepartureAirport VARCHAR(50) NOT NULL,
					DepartureTime TIME NOT NULL,
					ArrivalAirport VARCHAR(50) NOT NULL,
					ArrivalTime TIME NOT NULL,
					Status VARCHAR(20) NOT NULL)					 
AS 
	BEGIN
	DECLARE @tempFlyerNumber  AS VARCHAR(50)
	SET @tempFlyerNumber = @FrequentFlyerNumber
		INSERT INTO @info  (Name, 
							FrequentFlyerNumber, 
							FlightNumber,
							SeatNumber,
							Class, 
							DepartureAirport, 
							DepartureTime, 
							ArrivalAirport, 
							ArrivalTime, 
							Status)
		SELECT	a.FirstName + ' ' + a.LastName, 
				a.FrequentFlyerNumber, 
				b.FlightNumber,
				c.SeatId,
				d.Text, 
				e.DepartureAirportId, 
				e.DepartureTime, 
				e.ArrivalAirportId, 
				e.ArrivalTime, 
				f.Text
		
		FROM	Customers a
				INNER JOIN SeatDetails c ON a.CustomerId = c.CustomerId
				INNER JOIN ScheduledFlights b ON c.ScheduleId = b.ScheduleId
				INNER JOIN CLass d ON c.Class = d.ClassId
				INNER JOIN ScheduledDetails e ON b.ScheduleId = e.Id
				INNER JOIN ScheduleStatus f ON b.Status = f.Id

		WHERE a.FirstName = @FirstName 
		  AND a.LastName = @LastName 
		  AND a.DateOfBirth = @BirthDate 
		  AND (ISNULL(NULLIF(a.FrequentFlyerNumber, @tempFlyerNumber), NULLIF(@tempFlyerNumber, a.FrequentFlyerNumber)) IS NULL)

		RETURN;
	END;
		    
DROP FUNCTION dbo.PassengerTravelDetails;

SELECT * FROM Customers;

SELECT * FROM SeatDetails;

SELECT * FROM dbo.PassengerTravelDetails('Deborah', 'Snyder', '1990-07-09', NULL);

				
