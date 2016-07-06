-- Created by Vertabelo (http://vertabelo.com)
--Modified by G. Gaurav Roy Puli
-- Last modification date: 2016-06-26 08:12:34.538

-- foreign keys

ALTER TABLE ScheduledDetails
	DROP CONSTRAINT ScheduledDetails_GatesAvailable;

ALTER TABLE ActualDetails
	DROP CONSTRAINT ActualDetails_GatesAvailable;

ALTER TABLE CheckedLuggageDetails
	DROP CONSTRAINT CheckedLuggageQty_ck;

ALTER TABLE CrewRequired
	DROP CONSTRAINT RequiredNumber_ck;

ALTER TABLE Customers
	DROP CONSTRAINT FrequentFlyerNumber_ck;

ALTER TABLE Employees
	DROP CONSTRAINT SSN_ck;

ALTER TABLE FlightRoutes
	DROP CONSTRAINT LengthOfFlight_ck;

ALTER TABLE GatesAvailable
	DROP CONSTRAINT GateNumber_ck;

ALTER TABLE LocationInfo
	DROP CONSTRAINT Latitude_ck1;

ALTER TABLE LocationInfo
	DROP CONSTRAINT Latitude_ck2;

ALTER TABLE LocationInfo
	DROP CONSTRAINT Longitude_ck1;

ALTER TABLE LocationInfo
	DROP CONSTRAINT Longitude_ck2;

ALTER TABLE AccomodatedPlanesModelNos
    DROP CONSTRAINT AccomodatedPlanesModelNos_AirplaneModelNo;

ALTER TABLE AccomodatedPlanesModelNos
    DROP CONSTRAINT AccomodatedPlanesModelNos_Airports;

ALTER TABLE ActualDetails
    DROP CONSTRAINT ActualDetails_Airports1;

ALTER TABLE ActualDetails
    DROP CONSTRAINT ActualDetails_Airports2;

ALTER TABLE ActualDetails
    DROP CONSTRAINT ActualDetails_ScheduledFlights;

ALTER TABLE AirplanesEntertainment
    DROP CONSTRAINT AirplanesEntertainment_Airplanes;

ALTER TABLE AirplanesEntertainment
    DROP CONSTRAINT AirplanesEntertainment_EntertainmentOptions;

ALTER TABLE Airplanes
    DROP CONSTRAINT Airplanes_AirplaneModelNo;

ALTER TABLE Airplanes
    DROP CONSTRAINT Airplanes_Airports;

ALTER TABLE Airplanes 
	DROP CONSTRAINT Airplanes_FlightAvailability;

ALTER TABLE Airplanes
    DROP CONSTRAINT Airplanes_LocationInfo;

ALTER TABLE Airplanes
    DROP CONSTRAINT Airplanes_Manufacturers;

ALTER TABLE Airplanes
    DROP CONSTRAINT Airplanes_PropulsionMethod;

ALTER TABLE ScheduledFlights
    DROP CONSTRAINT Airplanes_ScheduledFlights;

ALTER TABLE AirportFees
    DROP CONSTRAINT AirportFees_Airports;

ALTER TABLE Airports
    DROP CONSTRAINT Airports_City;

ALTER TABLE Capacity
    DROP CONSTRAINT Capacity_Airplanes;

ALTER TABLE Capacity
    DROP CONSTRAINT Capacity_Class;

ALTER TABLE CheckedLuggageDetails
    DROP CONSTRAINT CheckedLuggageDetails_PaymentMethod;

ALTER TABLE CheckedLuggageDetails
    DROP CONSTRAINT CheckedLuggageDetails_ScheduleTransactions;

ALTER TABLE City
    DROP CONSTRAINT City_State;

ALTER TABLE CrewRequired
    DROP CONSTRAINT CrewRequired_Airplanes;

ALTER TABLE CrewRequired
    DROP CONSTRAINT CrewRequired_CrewType;

ALTER TABLE FlightRoutes
    DROP CONSTRAINT FlightRoutes_Airports1;

ALTER TABLE FlightRoutes
    DROP CONSTRAINT FlightRoutes_Airports2;

ALTER TABLE GatesAvailable
    DROP CONSTRAINT GatesAvailable_TerminalsAvailable;

ALTER TABLE MaintenanceEmployees
    DROP CONSTRAINT JoiningTables_Employees;

ALTER TABLE MaintenanceEmployees
    DROP CONSTRAINT JoiningTables_Maintenance;

ALTER TABLE LocationInfo
    DROP CONSTRAINT LocationInfo_FlightStatus;

ALTER TABLE Maintenance
    DROP CONSTRAINT Maintenance_Airplanes;

ALTER TABLE Maintenance
    DROP CONSTRAINT Maintenance_MaintenanceType;

ALTER TABLE PriceOfTransaction
    DROP CONSTRAINT PriceOfTransaction_PaymentMethod;

ALTER TABLE ProjectedDetails
    DROP CONSTRAINT ProjectedDetails_ScheduledFlights;

ALTER TABLE ScheduleTransactions
    DROP CONSTRAINT ScheduleTransactions_CheckInStatus;

ALTER TABLE ScheduledDetails
    DROP CONSTRAINT ScheduledDetails_Airports1;

ALTER TABLE ScheduledDetails
    DROP CONSTRAINT ScheduledDetails_Airports2;

ALTER TABLE ScheduledDetails
    DROP CONSTRAINT ScheduledDetails_ScheduledFlights;

ALTER TABLE ScheduledFlights
    DROP CONSTRAINT ScheduledFlights_FlightRoutes;

ALTER TABLE ScheduleTransactions
    DROP CONSTRAINT ScheduledFlights_ScheduleTransactions;

ALTER TABLE ScheduledFlights
    DROP CONSTRAINT ScheduledFlights_ScheduleStatus;

ALTER TABLE SeatDetails
    DROP CONSTRAINT SeatDetails_Class;

ALTER TABLE SeatDetails
    DROP CONSTRAINT SeatDetails_Customers;

ALTER TABLE SeatDetails
    DROP CONSTRAINT SeatDetails_ScheduledFlights;

ALTER TABLE SeatDetails
    DROP CONSTRAINT SeatDetails_SeatCostDetails;

ALTER TABLE State
    DROP CONSTRAINT State_Country;

ALTER TABLE TerminalsAvailable
    DROP CONSTRAINT TerminalsAvailable_Airports;

ALTER TABLE ScheduleTransactions
    DROP CONSTRAINT TransactionDetails_Transactions;

ALTER TABLE Transactions
    DROP CONSTRAINT Transactions_Customers;

ALTER TABLE PriceOfTransaction
    DROP CONSTRAINT Transactions_PriceOfTransaction;

-- tables
DROP TABLE AccomodatedPlanesModelNos;

DROP TABLE ActualDetails;

DROP TABLE AirplaneModelNo;

DROP TABLE Airplanes;

DROP TABLE AirplanesEntertainment;

DROP TABLE AirportFees;

DROP TABLE Airports;

DROP TABLE Capacity;

DROP TABLE CheckInStatus;

DROP TABLE CheckedLuggageDetails;

DROP TABLE City;

DROP TABLE Class;

DROP TABLE Country;

DROP TABLE CrewRequired;

DROP TABLE CrewType;

DROP TABLE Customers;

DROP TABLE Employees;

DROP TABLE EntertainmentOptions;

DROP TABLE FlightAvailability;

DROP TABLE FlightRoutes;

DROP TABLE FlightStatus;

DROP TABLE GatesAvailable;

DROP TABLE LocationInfo;

DROP TABLE Maintenance;

DROP TABLE MaintenanceEmployees;

DROP TABLE MaintenanceType;

DROP TABLE Manufacturers;

DROP TABLE PaymentMethod;

DROP TABLE PriceOfTransaction;

DROP TABLE ProjectedDetails;

DROP TABLE PropulsionMethod;

DROP TABLE ScheduleTransactions;

DROP TABLE ScheduleStatus;

DROP TABLE ScheduledDetails;

DROP TABLE ScheduledFlights;

DROP TABLE SeatCostDetails;

DROP TABLE SeatDetails;

DROP TABLE State;

DROP TABLE TerminalsAvailable;

DROP TABLE Transactions;

-- End of file.
