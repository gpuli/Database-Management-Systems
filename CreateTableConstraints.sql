-- Created by Vertabelo (http://vertabelo.com)
--Modified by G. Gaurav Roy Puli
-- Last modification date: 2016-01-01 05:53:15.827

-- Tables are created below with their respective details

-- Table: AccomodatedPlanesModelNos
-- List of planes that the airport can accomodate.
CREATE TABLE AccomodatedPlanesModelNos (
    AirportId VARCHAR(3) NOT NULL,
    ModelId INT NOT NULL,
    CONSTRAINT AccomodatedPlanesModelNos_pk PRIMARY KEY (AirportId,ModelId)
);

-- Table: ActualDetails
-- Actual arrival and departure details of scheduled flights.
CREATE TABLE ActualDetails (
    Id INT NOT NULL,
    DepartureTime TIME NOT NULL,
	ArrivalTime TIME NOT NULL,
    DepartureAirportId VARCHAR(3) NOT NULL,
	ArrivalAirportId VARCHAR(3) NOT NULL,
	GateNumber INT NOT NULL,
    CONSTRAINT ActualDetails_pk PRIMARY KEY (Id)
);

-- Table: AirplaneModelNo
-- Lookup table for the different airplane model numbers.
CREATE TABLE AirplaneModelNo (
    ModelId INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT AirplaneModelNo_pk PRIMARY KEY (ModelId)
);

-- Table: Airplanes
-- Detailed information about each and every airplane on the fleet.
CREATE TABLE Airplanes (
    AirplaneId INT IDENTITY(1,1) NOT NULL,
    Manufacturer INT NOT NULL,
    ModelNo INT NOT NULL,
    DateBuilt DATE NOT NULL,
    PropulsionMethod INT NOT NULL,
    RangeOfFlight INT NOT NULL,
    FlightAvailability INT NULL,
    Location INT NOT NULL,
    AirportId VARCHAR(3) NULL,
    CONSTRAINT Airplanes_pk PRIMARY KEY (AirplaneId)
);

-- Table: AirplanesEntertainment
-- Look up table for the entertainment options on a flight.
CREATE TABLE AirplanesEntertainment (
    AirplaneId INT NOT NULL,
    EntertainmentOptionsId INT NOT NULL,
    CONSTRAINT AirplanesEntertainment_pk PRIMARY KEY (AirplaneId,EntertainmentOptionsId)
);

-- Table: AirportFees
-- Look up table for the various fees related to a particular airport.
CREATE TABLE AirportFees (
    Id VARCHAR(3) NOT NULL,
    AirportFees DECIMAL(6,2) NOT NULL,
    CityTaxes DECIMAL(6,2) NOT NULL,
    StateTaxes DECIMAL(6,2) NOT NULL,
    OtherFees DECIMAL(6,2) NOT NULL,
    CONSTRAINT AirportFees_pk PRIMARY KEY (Id)
);

-- Table: Airports
-- List of all airports which the airline uses
CREATE TABLE Airports (
    AirportId VARCHAR(3) NOT NULL,
    AirportName VARCHAR(50) NOT NULL,
    HangarCapacity INT NOT NULL,
    PlanesPresentAtAirport INT NOT NULL,
    City INT NOT NULL,
    CONSTRAINT Airports_pk PRIMARY KEY (AirportId)
);

-- Table: Capacity
-- Capacity of each airplane based on Class
CREATE TABLE Capacity (
    CapacityId INT IDENTITY(1,1) NOT NULL,
    AirplaneId INT NOT NULL,
    Class INT NOT NULL,
    NumberOfSeats INT NOT NULL,
    CONSTRAINT Capacity_pk PRIMARY KEY (CapacityId)
);

-- Table: CheckInStatus
-- Look up table for check in status of customers.
CREATE TABLE CheckInStatus (
    Id INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(20) NOT NULL,
    CONSTRAINT CheckInStatus_pk PRIMARY KEY (Id)
);

-- Table: CheckedLuggageDetails
-- Cost, quantity of checked in luggage of customers.
CREATE TABLE CheckedLuggageDetails (
    CheckedId INT NOT NULL,
    CheckedLuggageQty INT NOT NULL,
    PaymentDate DATE NULL,
    PaymentType INT NULL,
    Cost DECIMAL(5,2) NOT NULL,
    CONSTRAINT CheckedLuggageDetails_pk PRIMARY KEY (CheckedId),
	CONSTRAINT CheckedLuggageQty_ck CHECK ([CheckedLuggageQty] >=0)
);

-- Table: City
-- List of cities that the airline functions at.
CREATE TABLE City (
    CityId INT IDENTITY(1,1) NOT NULL,
    CityName VARCHAR(50) NOT NULL,
    StateId INT NOT NULL,
    CONSTRAINT City_pk PRIMARY KEY (CityId)
);

-- Table: Class
-- Look up table for the various class' available on an airplane
CREATE TABLE Class (
    ClassId INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT Class_pk PRIMARY KEY (ClassId)
);

-- Table: Country
--List of countries
CREATE TABLE Country (
    CountryId INT IDENTITY(1,1) NOT NULL,
    CountryName VARCHAR(50) NOT NULL,
    CONSTRAINT Country_pk PRIMARY KEY (CountryId)
);

-- Table: CrewRequired
-- States the crew required to operate the particular flight 
CREATE TABLE CrewRequired (
    CrewId INT IDENTITY(1,1) NOT NULL,
    AirplaneId INT NOT NULL,
    CrewType INT NOT NULL,
    RequiredNumber INT NOT NULL,
    CONSTRAINT CrewId_pk PRIMARY KEY (CrewId),
	CONSTRAINT RequiredNumber_ck CHECK ([RequiredNumber] > 0)
);

-- Table: CrewType
-- Look up table for the crew type
CREATE TABLE CrewType (
    TypeId INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT CrewType_pk PRIMARY KEY (TypeId)
);

-- Table: Customers
-- Customer info for all passengers of the airline.
CREATE TABLE Customers (
    CustomerId INT IDENTITY(1,1) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50) NULL,
    DateOfBirth DATE NOT NULL,
    FrequentFlyerNumber CHAR(10) NULL,
    CONSTRAINT Customers_pk PRIMARY KEY (CustomerId),
	CONSTRAINT FrequentFlyerNumber_ck CHECK (LEN(FrequentFlyerNumber) = 10)
);

-- Table: Employees
-- List of employees working for the airline.
CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50) NULL,
    LastName VARCHAR(50) NOT NULL,
    SSN VARCHAR(10) NOT NULL,
    Pay DECIMAL(10,2) NOT NULL,
    CONSTRAINT Employees_pk PRIMARY KEY (EmployeeId),
	CONSTRAINT SSN_ck CHECK (SSN LIKE '___-__-___')
);

-- Table: EntertainmentOptions
--List of entertainment options available on a particular flight. 
CREATE TABLE EntertainmentOptions (
    Id INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT EntertainmentOptions_pk PRIMARY KEY (Id)
);

-- Table: FlightAvailablity
-- Status of the flight.
CREATE TABLE FlightAvailability (
	Id INT IDENTITY(1,1) NOT NULL,
	Text VARCHAR(20) NOT NULL,
	CONSTRAINT FlightAvailability_pk PRIMARY KEY (Id)
);

-- Table: FlightRoutes
-- Available flight routes that the airlines functions from
CREATE TABLE FlightRoutes (
    RouteId INT IDENTITY(1,1) NOT NULL,
    DepartingAirport VARCHAR(3) NOT NULL,
    ArrivalAirport VARCHAR(3) NOT NULL,
    LengthOfFlight DECIMAL(4,2) NOT NULL,
    CONSTRAINT FlightRoutes_pk PRIMARY KEY (RouteId),
	CONSTRAINT LengthOfFlight_ck CHECK ([LengthOfFlight] > 0.00)
);

-- Table: FlightStatus
--Status of the operational flight
CREATE TABLE FlightStatus (
    StatusId INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT FlightStatus_pk PRIMARY KEY (StatusId)
);

-- Table: GatesAvailable
-- Gates that planes of this airline can land at
CREATE TABLE GatesAvailable (
    Id INT IDENTITY(1,1) NOT NULL,
    TerminalId INT NOT NULL,
    GateNumber INT NOT NULL,
    CONSTRAINT GatesAvailable_pk PRIMARY KEY (Id),
	CONSTRAINT GateNumber_ck CHECK ([GateNumber] >= 0)
);

-- Table: LocationInfo
-- Present location and latitude information of the airplane. 
CREATE TABLE LocationInfo (
    LocationId INT IDENTITY(1,1) NOT NULL,
    FlightStatus INT NOT NULL,
    Latitude DECIMAL(7,4) NOT NULL,
	Longitude DECIMAL (7,4) NOT NULL,
    CONSTRAINT LocationInfo_pk PRIMARY KEY (LocationId),
	CONSTRAINT Latitude_ck1 CHECK (-90.0000 <= [Latitude]),
	CONSTRAINT Latitude_ck2 CHECK ( [Latitude] <= 90.0000),
	CONSTRAINT Longitude_ck1 CHECK (-180.0000 <= [Latitude]),
	CONSTRAINT Longitude_ck2 CHECK ( [Latitude] <= 180.0000)
);

-- Table: Maintenance
-- The maintenance history of a particular airplane. Also show the maintenance scheduled in the future and employees
-- linked to the particular job. 
CREATE TABLE Maintenance (
    MaintenanceId INT IDENTITY(1,1) NOT NULL,
    AirplaneId INT NOT NULL,
    MaintenanceStartDate DATE NOT NULL,
    Type INT NOT NULL,
    EstimatedCompletion DATE NOT NULL,
    CONSTRAINT Maintenance_pk PRIMARY KEY (MaintenanceId),
);

-- Table: MaintenanceEmployees
CREATE TABLE MaintenanceEmployees (
    EmployeeId INT NOT NULL,
    Maintenanceid INT NOT NULL,
    CONSTRAINT MaintenanceEmployees_pk PRIMARY KEY (EmployeeId,Maintenanceid)
);

-- Table: MaintenanceType
-- Look up table for maintenance types.
CREATE TABLE MaintenanceType (
    Id INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT MaintenanceType_pk PRIMARY KEY (Id)
);

-- Table: Manufacturers
-- Look up table for airplane manufacturers.
CREATE TABLE Manufacturers (
    ManufacturerId INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT Manufacturers_pk PRIMARY KEY (ManufacturerId)
);

-- Table: PaymentMethod
-- Look up table for the different payment methods.
CREATE TABLE PaymentMethod (
    Id INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(20) NOT NULL,
    CONSTRAINT PaymentMethod_pk PRIMARY KEY (Id)
);

-- Table: PriceOfTransaction
-- Details of the transaction showing cost including fees.
CREATE TABLE PriceOfTransaction (
    PriceId INT NOT NULL,
    FlightCost DECIMAL(7,2) NOT NULL,
    AirportFees DECIMAL(7,2) NOT NULL,
    Taxes DECIMAL(7,2) NOT NULL,
    TotalCost DECIMAL(7,2) NOT NULL,
    CostInFrequentFlierMiles INT NOT NULL,
    PaymentMethod INT NOT NULL,
    CONSTRAINT PriceOfTransaction_pk PRIMARY KEY (PriceId)
)

-- Table: ProjectedDetails
-- The projected details for the airplane. 
CREATE TABLE ProjectedDetails (
    Id INT NOT NULL,
    DepartureTime time NOT NULL,
    ArrivalTime time NOT NULL,
    CONSTRAINT ProjectedDetails_pk PRIMARY KEY (Id)
);

-- Table: PropulsionMethod
CREATE TABLE PropulsionMethod (
    Id INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(50) NOT NULL,
    CONSTRAINT PropulsionMethod_pk PRIMARY KEY (Id)
);

-- Table: ScheduleTransactions
-- Tramsactions related to the particular schedule can be viewed including check in status.
CREATE TABLE ScheduleTransactions (
    Id INT IDENTITY(1,1) NOT NULL,
    TransactionId INT NOT NULL,
    ScheduleId INT NOT NULL,
    CheckInStatus INT NOT NULL,
    CheckInTime TIME NULL,
    CONSTRAINT ScheduleTransactions_pk PRIMARY KEY (Id)
);

-- Table: ScheduleStatus
CREATE TABLE ScheduleStatus (
    Id INT IDENTITY(1,1) NOT NULL,
    Text VARCHAR(20) NOT NULL,
    CONSTRAINT ScheduleStatus_pk PRIMARY KEY (Id)
);

-- Table: ScheduledDetails
-- Scheduled arrival and departure details of a particular flight.
CREATE TABLE ScheduledDetails (
    Id INT NOT NULL,
    DepartureTime TIME(4) NOT NULL,
	ArrivalTime TIME(4) NOT NULL,
    DepartureAirportId VARCHAR(3) NOT NULL,
	ArrivalAirportId VARCHAR(3) NOT NULL,
	GateNumber INT NOT NULL,
    CONSTRAINT ScheduledDetails_pk PRIMARY KEY (Id)
);

-- Table: ScheduledFlights
-- List of all the scheduled flights
CREATE TABLE ScheduledFlights (
    ScheduleId INT IDENTITY(1,1) NOT NULL,
    FlightNumber INT NOT NULL,
    AirplaneId INT NOT NULL,
    Status INT NOT NULL,
    RouteId INT NOT NULL,
    CONSTRAINT ScheduledFlights_pk PRIMARY KEY (ScheduleId)
);

-- Table: SeatCostDetails
-- Detaild of each seat cost
CREATE TABLE SeatCostDetails (
    Id INT IDENTITY(1,1) NOT NULL,
    Cost DECIMAL(6,2) NOT NULL,
    CONSTRAINT SeatCostDetails_pk PRIMARY KEY (Id)
);

-- Table: SeatDetails
--Details of each seat.
CREATE TABLE SeatDetails (
    SeatId INT IDENTITY(1,1) NOT NULL,
    ScheduleId INT NOT NULL,
    CustomerId INT NULL,
    Cost INT NOT NULL,
    Class INT NOT NULL,
    CONSTRAINT SeatDetails_pk PRIMARY KEY (SeatId)
);

-- Table: State
CREATE TABLE State (
    StateId INT IDENTITY(1,1) NOT NULL,
    StateName VARCHAR(50) NOT NULL,
    CountryId INT NOT NULL,
    CONSTRAINT State_pk PRIMARY KEY (StateId)
);

-- Table: TerminalsAvailable
CREATE TABLE TerminalsAvailable (
    Id INT IDENTITY(1,1) NOT NULL,
    AirportId VARCHAR(3) NOT NULL,
    TerminalNumber INT NOT NULL,
    CONSTRAINT TerminalsAvailable_pk PRIMARY KEY (Id)
);

-- Table: Transactions
-- Links transaction to booking date.
CREATE TABLE Transactions (
    TransactionId INT IDENTITY(1,1) NOT NULL,
    CustomerId INT NOT NULL,
    BookingDate DATETIME NOT NULL,
    CONSTRAINT Transactions_pk PRIMARY KEY (TransactionId)
);


-- foreign keys
-- Reference: AccomodatedPlanesModelNos_AirplaneModelNo (table: AccomodatedPlanesModelNos)
ALTER TABLE AccomodatedPlanesModelNos ADD CONSTRAINT AccomodatedPlanesModelNos_AirplaneModelNo FOREIGN KEY (ModelId)
    REFERENCES AirplaneModelNo (ModelId);

-- Reference: AccomodatedPlanesModelNos_Airports (table: AccomodatedPlanesModelNos)
ALTER TABLE AccomodatedPlanesModelNos ADD CONSTRAINT AccomodatedPlanesModelNos_Airports FOREIGN KEY (AirportId)
    REFERENCES Airports (AirportId);

--Reference:ActualDetails_GatesAvailable
ALTER TABLE ActualDetails ADD CONSTRAINT ActualDetails_GatesAvailable FOREIGN KEY (GateNumber)
	REFERENCES GatesAvailable(Id);

-- Reference: ActualDetails_Airports1 (table: ActualDetails)
ALTER TABLE ActualDetails ADD CONSTRAINT ActualDetails_Airports1 FOREIGN KEY (DepartureAirportId)
    REFERENCES Airports (AirportId);

-- Reference: ActualDetails_Airports2 (table: ActualDetails)
ALTER TABLE ActualDetails ADD CONSTRAINT ActualDetails_Airports2 FOREIGN KEY (ArrivalAirportId)
    REFERENCES Airports (AirportId);

-- Reference: ActualDetails_ScheduledFlights (table: ActualDetails)
ALTER TABLE ActualDetails ADD CONSTRAINT ActualDetails_ScheduledFlights FOREIGN KEY (Id)
    REFERENCES ScheduledFlights (ScheduleId);

-- Reference: AirplanesEntertainment_Airplanes (table: AirplanesEntertainment)
ALTER TABLE AirplanesEntertainment ADD CONSTRAINT AirplanesEntertainment_Airplanes FOREIGN KEY (AirplaneId)
    REFERENCES Airplanes (AirplaneId);

-- Reference: AirplanesEntertainment_EntertainmentOptions (table: AirplanesEntertainment)
ALTER TABLE AirplanesEntertainment ADD CONSTRAINT AirplanesEntertainment_EntertainmentOptions FOREIGN KEY (EntertainmentOptionsId)
    REFERENCES EntertainmentOptions (Id);

-- Reference: Airplanes_FlightAvailability (table: Airplanes)
ALTER TABLE Airplanes ADD CONSTRAINT Airplanes_FlightAvailability FOREIGN KEY (FlightAvailability)
	REFERENCES FlightAvailability (Id);

-- Reference: Airplanes_AirplaneModelNo (table: Airplanes)
ALTER TABLE Airplanes ADD CONSTRAINT Airplanes_AirplaneModelNo FOREIGN KEY (ModelNo)
    REFERENCES AirplaneModelNo (ModelId);

-- Reference: Airplanes_Airports (table: Airplanes)
ALTER TABLE Airplanes ADD CONSTRAINT Airplanes_Airports FOREIGN KEY (AirportId)
    REFERENCES Airports (AirportId);

-- Reference: Airplanes_LocationInfo (table: Airplanes)
ALTER TABLE Airplanes ADD CONSTRAINT Airplanes_LocationInfo FOREIGN KEY (Location)
    REFERENCES LocationInfo (LocationId);

-- Reference: Airplanes_Manufacturers (table: Airplanes)
ALTER TABLE Airplanes ADD CONSTRAINT Airplanes_Manufacturers FOREIGN KEY (Manufacturer)
    REFERENCES Manufacturers (ManufacturerId);

-- Reference: Airplanes_PropulsionMethod (table: Airplanes)
ALTER TABLE Airplanes ADD CONSTRAINT Airplanes_PropulsionMethod FOREIGN KEY (PropulsionMethod)
    REFERENCES PropulsionMethod (Id);

-- Reference: Airplanes_ScheduledFlights (table: ScheduledFlights)
ALTER TABLE ScheduledFlights ADD CONSTRAINT Airplanes_ScheduledFlights FOREIGN KEY (AirplaneId)
    REFERENCES Airplanes (AirplaneId);

-- Reference: AirportFees_Airports (table: AirportFees)
ALTER TABLE AirportFees ADD CONSTRAINT AirportFees_Airports FOREIGN KEY (Id)
    REFERENCES Airports (AirportId);

-- Reference: Airports_City (table: Airports)
ALTER TABLE Airports ADD CONSTRAINT Airports_City FOREIGN KEY (City)
    REFERENCES CIty (CityId);

-- Reference: Capacity_Airplanes (table: Capacity)
ALTER TABLE Capacity ADD CONSTRAINT Capacity_Airplanes FOREIGN KEY (AirplaneId)
    REFERENCES Airplanes (AirplaneId);

-- Reference: Capacity_Class (table: Capacity)
ALTER TABLE Capacity ADD CONSTRAINT Capacity_Class FOREIGN KEY (Class)
    REFERENCES Class (ClassId);

-- Reference: CheckedLuggageDetails_PaymentMethod (table: CheckedLuggageDetails)
ALTER TABLE CheckedLuggageDetails ADD CONSTRAINT CheckedLuggageDetails_PaymentMethod FOREIGN KEY (PaymentType)
    REFERENCES PaymentMethod (Id);

-- Reference: CheckedLuggageDetails_ScheduleTransactions (table: CheckedLuggageDetails)
ALTER TABLE CheckedLuggageDetails ADD CONSTRAINT CheckedLuggageDetails_ScheduleTransactions FOREIGN KEY (CheckedId)
    REFERENCES ScheduleTransactions (Id);

-- Reference: City_State (table: City)
ALTER TABLE City ADD CONSTRAINT City_State FOREIGN KEY (StateId)
    REFERENCES State (StateId);

-- Reference: CrewRequired_Airplanes (table: CrewRequired)
ALTER TABLE CrewRequired ADD CONSTRAINT CrewRequired_Airplanes FOREIGN KEY (AirplaneId)
    REFERENCES Airplanes (AirplaneId);

-- Reference: CrewRequired_CrewType (table: CrewRequired)
ALTER TABLE CrewRequired ADD CONSTRAINT CrewRequired_CrewType FOREIGN KEY (CrewType)
    REFERENCES CrewType (TypeId);

-- Reference: FlightRoutes_Airports (table: FlightRoutes)
ALTER TABLE FlightRoutes ADD CONSTRAINT FlightRoutes_Airports1 FOREIGN KEY (DepartingAirport)
    REFERENCES Airports (AirportId);

ALTER TABLE FlightRoutes ADD CONSTRAINT FlightRoutes_Airports2 FOREIGN KEY (ArrivalAirport)
    REFERENCES Airports (AirportId);

-- Reference: GatesAvailable_TerminalsAvailable (table: GatesAvailable)
ALTER TABLE GatesAvailable ADD CONSTRAINT GatesAvailable_TerminalsAvailable FOREIGN KEY (TerminalId)
    REFERENCES TerminalsAvailable (Id);

-- Reference: JoiningTables_Employees (table: MaintenanceEmployees)
ALTER TABLE MaintenanceEmployees ADD CONSTRAINT JoiningTables_Employees FOREIGN KEY (EmployeeId)
    REFERENCES Employees (EmployeeId);

-- Reference: JoiningTables_Maintenance (table: MaintenanceEmployees)
ALTER TABLE MaintenanceEmployees ADD CONSTRAINT JoiningTables_Maintenance FOREIGN KEY (Maintenanceid)
    REFERENCES Maintenance (MaintenanceId);

-- Reference: LocationInfo_FlightStatus (table: LocationInfo)
ALTER TABLE LocationInfo ADD CONSTRAINT LocationInfo_FlightStatus FOREIGN KEY (FlightStatus)
    REFERENCES FlightStatus (StatusId);

-- Reference: Maintenance_Airplanes (table: Maintenance)
ALTER TABLE Maintenance ADD CONSTRAINT Maintenance_Airplanes FOREIGN KEY (AirplaneId)
    REFERENCES Airplanes (AirplaneId);

-- Reference: Maintenance_MaintenanceType (table: Maintenance)
ALTER TABLE Maintenance ADD CONSTRAINT Maintenance_MaintenanceType FOREIGN KEY (Type)
    REFERENCES MaintenanceType (Id);

-- Reference: PriceOfTransaction_PaymentMethod (table: PriceOfTransaction)
ALTER TABLE PriceOfTransaction ADD CONSTRAINT PriceOfTransaction_PaymentMethod FOREIGN KEY (PaymentMethod)
    REFERENCES PaymentMethod (Id);

-- Reference: ProjectedDetails_ScheduledFlights (table: ProjectedDetails)
ALTER TABLE ProjectedDetails ADD CONSTRAINT ProjectedDetails_ScheduledFlights FOREIGN KEY (Id)
    REFERENCES ScheduledFlights (ScheduleId);

-- Reference: ScheduleTransactions_CheckInStatus (table: ScheduleTransactions)
ALTER TABLE ScheduleTransactions ADD CONSTRAINT ScheduleTransactions_CheckInStatus FOREIGN KEY (CheckInStatus)
    REFERENCES CheckInStatus (Id);

--Reference:ScheduledDetails_GatesAvailable
ALTER TABLE ScheduledDetails ADD CONSTRAINT ScheduledDetails_GatesAvailable FOREIGN KEY (GateNumber)
	REFERENCES GatesAvailable(Id);

-- Reference: ScheduledDetails_Airports1 (table: ScheduledDetails)
ALTER TABLE ScheduledDetails ADD CONSTRAINT ScheduledDetails_Airports1 FOREIGN KEY (DepartureAirportId)
    REFERENCES Airports (AirportId);

-- Reference: ScheduledDetails_Airports2 (table: ScheduledDetails)
ALTER TABLE ScheduledDetails ADD CONSTRAINT ScheduledDetails_Airports2 FOREIGN KEY (ArrivalAirportId)
    REFERENCES Airports (AirportId);

-- Reference: ScheduledDetails_ScheduledFlights (table: ScheduledDetails)
ALTER TABLE ScheduledDetails ADD CONSTRAINT ScheduledDetails_ScheduledFlights FOREIGN KEY (Id)
    REFERENCES ScheduledFlights (ScheduleId);

-- Reference: ScheduledFlights_FlightRoutes (table: ScheduledFlights)
ALTER TABLE ScheduledFlights ADD CONSTRAINT ScheduledFlights_FlightRoutes FOREIGN KEY (RouteId)
    REFERENCES FlightRoutes (RouteId);

-- Reference: ScheduledFlights_ScheduleTransactions (table: ScheduleTransactions)
ALTER TABLE ScheduleTransactions ADD CONSTRAINT ScheduledFlights_ScheduleTransactions FOREIGN KEY (ScheduleId)
    REFERENCES ScheduledFlights (ScheduleId);

-- Reference: ScheduledFlights_ScheduleStatus (table: ScheduledFlights)
ALTER TABLE ScheduledFlights ADD CONSTRAINT ScheduledFlights_ScheduleStatus FOREIGN KEY (Status)
    REFERENCES ScheduleStatus (Id);

-- Reference: SeatDetails_ClassType (table: SeatDetails)
ALTER TABLE SeatDetails ADD CONSTRAINT SeatDetails_Class FOREIGN KEY (Class)
    REFERENCES Class (ClassId);

-- Reference: SeatDetails_Customers (table: SeatDetails)
ALTER TABLE SeatDetails ADD CONSTRAINT SeatDetails_Customers FOREIGN KEY (CustomerId)
    REFERENCES Customers (CustomerId);

-- Reference: SeatDetails_ScheduledFlights (table: SeatDetails)
ALTER TABLE SeatDetails ADD CONSTRAINT SeatDetails_ScheduledFlights FOREIGN KEY (ScheduleId)
    REFERENCES ScheduledFlights (ScheduleId);

-- Reference: SeatDetails_SeatCostDetails (table: SeatDetails)
ALTER TABLE SeatDetails ADD CONSTRAINT SeatDetails_SeatCostDetails FOREIGN KEY (Cost)
    REFERENCES SeatCostDetails (Id);

-- Reference: State_Country (table: State)
ALTER TABLE State ADD CONSTRAINT State_Country FOREIGN KEY (CountryId)
    REFERENCES Country (CountryId);

-- Reference: TerminalsAvailable_Airports (table: TerminalsAvailable)
ALTER TABLE TerminalsAvailable ADD CONSTRAINT TerminalsAvailable_Airports FOREIGN KEY (AirportId)
    REFERENCES Airports (AirportId);

-- Reference: TransactionDetails_Transactions (table: ScheduleTransactions)
ALTER TABLE ScheduleTransactions ADD CONSTRAINT TransactionDetails_Transactions FOREIGN KEY (TransactionId)
    REFERENCES Transactions (TransactionId);

-- Reference: Transactions_Customers (table: Transactions)
ALTER TABLE Transactions ADD CONSTRAINT Transactions_Customers FOREIGN KEY (CustomerId)
    REFERENCES Customers (CustomerId);

-- Reference: Transactions_PriceOfTransaction (table: PriceOfTransaction)
ALTER TABLE PriceOfTransaction ADD CONSTRAINT Transactions_PriceOfTransaction FOREIGN KEY (PriceId)
    REFERENCES Transactions (TransactionId);

-- End of file.
