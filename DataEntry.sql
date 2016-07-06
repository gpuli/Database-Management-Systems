INSERT INTO Country 
	VALUES		('India'),
				('United States of America'),
				('France'),
				('Mexico'),
				('Egypt'),
				('Germany'),
				('China'),
				('Japan'),
				('United Arab Emirates');


INSERT INTO State
	VALUES	('Telangana', 1),
			('Maharashtra',1),
			('AndhraPradesh',1),
			('Karnataka',1),
			('TamilNadu',1),
			('WestBengal',1),
			('NewYork',2),
			('Florida',2),
			('California',2),
			('Texas',2),
			('Illinois',2),
			('Colorado',2),
			(' Île-de-France',3),
			('Auvergne-Rhône-Alpes',3),
			('Côte d''Azur',3),
			(' Midi-Pyrénées',3),
			('Distrito Federal',4),
			('Quintana Roo',4),
			('Jalisco',4),
			('Nuevo León',4),
			('Baja California',4),
			('NA',5),
			('Hesse',6),
			('Bavaria',6),
			('North Rhine-Westphalia',6),
			('Berlin',6),
			('Beijing',7),
			('Shanghai',7),
			('Sichuan',7),
			('NA',8),
			('Dubai',9),
			('Abu Dhabi',9),
			('Sharjah',9);


				

INSERT INTO City
	VALUES		('Hyderabad', 1),
				('Mumbai', 2),
				('Vishakapatnam', 3),
				('Bengaluru', 4),
				('Chennai', 5),
				('Kolkata', 6),
				('NewYorkCity', 7),
				('Miami', 8),
				('LosAngeles', 9),
				('Houston', 10),
				('Chicago', 11),
				('Denver', 12),
				('Paris', 13),
				('Lyon', 14),
				('Nice', 15),
				('Marseille', 15),
				('Toulouse', 16),
				('MexicoCity',17),
				('Cancún', 18),
				('Guadalajara', 19),
				('Monterrey', 20),
				('Tijuana', 21),
				('Cairo', 22),
				('AswanDaraw', 22),
				('AbuSimbel', 22),
				('Alexandria', 22),
				('Frankfurt am Main', 23),
				('Munich', 24),
				('Düsseldorf', 25),
				('Berlin', 26),
				('Beijing', 27),
				('Shanghai', 28),
				('Chengdu', 29),
				('Tokyo', 30),
				('Osaka', 30),
				('Dubai', 31),
				('AbuDhabi', 32),
				('Sharjah', 33);

INSERT INTO Airports
	VALUES		('HYD', 'RajivGandhiInternationalAirport', 30, 50, 1),
				('BOM', 'ChatrapathiShivajiInternationalAirport', 25, 60, 2),
				('VTZ', 'VishakapatnamInternatiionalAirport', 15, 40, 3),
				('BLR', 'BengaluruInternationalAirport', 23, 40, 4),
				('MAA', 'ChennaiInternationalAirport', 30, 50, 5),
				('CCU', 'NetajiSubhasChandraBoseInternationalAirport', 40, 40, 6),
				('JFK', 'JohnFKennedyInternationalAirport', 60, 100, 7),
				('MIA', 'MiamiInternationalAirport', 50, 60, 8),
				('LAX', 'LosAngelesInternationalAirport', 60, 70, 9),
				('IAH', 'George Bush Intercontinental Airport', 50, 40, 10),
				('ORD', 'O''Hare International Airport', 40, 60, 11),
				('DEN', 'Denver International Airport', 60, 80, 12),
				('CDG', 'Paris Charles de Gaulle' , 50, 100, 13),
				('LYS', 'Lyon St Exupéry' , 30, 50, 14),
				('NCE', 'Nice' , 35, 35, 15),
				('MRS', 'Marseille' , 45, 35, 16),
				('TLS', 'Toulouse Blagnac' , 25, 40, 17),
				('MEX', 'Benito Juárez International Airport' , 50, 100, 18),
				('CUN', 'Cancún International Airport' , 45, 80, 19),
				('GDL', 'Miguel Hidalgo y Costilla International Airport' , 40, 75, 20),
				('MTY', 'General Mariano Escobedo International Airport' , 40, 60, 21),
				('TIJ', 'Tijuana International Airport' , 30, 45, 22),
				('CAI', 'Cairo International Airport' , 60, 80, 23),
				('ASW', 'Aswan International Airport' , 30, 44, 24),
				('ABS', 'Abu Simbel Airport' , 30, 22, 25),
				('ALY', 'Alexandria International Airport' , 33, 26, 26),
				('FRA', 'Frankfurt Airport' , 80, 120, 27),
				('MUC', 'Munich Airport' , 60, 85, 28),
				('DUS', 'Düsseldorf Airport' , 55, 78, 29),
				('BER', 'Berlin Brandenburg Airport' , 66, 93, 30),
				('PEK', 'Beijing Capital International Airport' , 150, 200, 31),
				('PVG', 'Shanghai Pudong International Airport' , 120, 150, 32),
				('CTU', 'Chengdu Shuangliu International Airport' , 100, 101, 33),
				('NRT', 'Narita Airport' , 50, 80, 34),
				('KIX', 'Kansai International Airport' , 64, 180, 35),
				('DXB', 'Dubai International Airport' , 190, 360, 36),
				('AUH', 'Abu Dhabi International Airport' , 85, 200, 37),
				('SHJ', 'Sharjah International Airport' , 95, 68, 38);

SELECT * FROM Airports

INSERT INTO AirportFees
	VALUES		('ABS', 26.30, 25.00, 15.37, 7.80),
				('ALY', 35.90, 20.98, 34.57, 9.97),
				('ASW', 23.54, 43.99, 32.33, 10.00),
				('AUH', 88.07, 43.75, 23.88, 12.98),
				('BER', 21.00, 34.51, 8.00, 21.73),
				('BLR', 9.00, 32.98, 61.91, 84.01),
				('BOM', 87.90, 32.00, 20.87, 12.00),
				('CAI', 23.54, 43.99, 32.33, 10.00),
				('CCU', 23.54, 43.99, 32.33, 10.00),
				('CDG', 88.07, 43.75, 23.88, 12.98),
				('CTU', 9.00, 32.98, 61.91, 84.01),
				('CUN', 87.90, 32.00, 20.87, 12.00),
				('DEN', 88.07, 43.75, 23.88, 12.98),
				('DUS', 88.07, 43.75, 23.88, 12.98),
				('DXB', 21.00, 34.51, 8.00, 21.73),
				('FRA', 9.00, 32.98, 61.91, 84.01),
				('GDL', 35.90, 20.98, 34.57, 9.97),
				('HYD', 23.54, 43.99, 32.33, 10.00),
				('IAH', 88.07, 43.75, 23.88, 12.98),
				('JFK', 21.00, 34.51, 8.00, 21.73),
				('KIX', 88.07, 43.75, 23.88, 12.98),
				('LAX', 21.00, 34.51, 8.00, 21.73),
				('LYS', 9.00, 32.98, 61.91, 84.01),
				('MAA', 87.90, 32.00, 20.87, 12.00),
				('MEX', 23.54, 43.99, 32.33, 10.00),
				('MIA', 9.00, 32.98, 61.91, 84.01),
				('MRS', 87.90, 32.00, 20.87, 12.00),
				('MTY', 9.00, 32.98, 61.91, 84.01),
				('MUC', 87.90, 32.00, 20.87, 12.00),
				('NCE', 88.07, 43.75, 23.88, 12.98),
				('NRT', 88.07, 43.75, 23.88, 12.98),
				('ORD', 9.00, 32.98, 61.91, 84.01),
				('PEK', 21.00, 34.51, 8.00, 21.73),
				('PVG', 9.00, 32.98, 61.91, 84.01),
				('SHJ', 87.90, 32.00, 20.87, 12.00),
				('TIJ', 23.54, 43.99, 32.33, 10.00),
				('TLS', 23.54, 43.99, 32.33, 10.00),
				('VTZ', 35.90, 20.98, 34.57, 9.97);


INSERT INTO TerminalsAvailable
	VALUES		('ABS', 6),
				('ALY', 2),
				('ASW', 5),
				('AUH', 7),
				('BER', 1),
				('BLR', 13),
				('BOM', 5),
				('CAI', 7),
				('CCU', 8),
				('CDG', 2),
				('CTU', 4),
				('CUN', 6),
				('DEN', 2),
				('DUS', 7),
				('DXB', 10),
				('FRA', 7),
				('GDL', 0),
				('HYD', 1),
				('IAH', 5),
				('JFK', 2),
				('KIX', 12),
				('LAX', 4),
				('LYS', 2),
				('MAA', 9),
				('MEX', 2),
				('MIA', 6),
				('MRS', 1),
				('MTY', 9),
				('MUC', 3),
				('NCE', 4),
				('NRT', 7),
				('ORD', 4),
				('PEK', 7),
				('PVG', 14),
				('SHJ', 6),
				('TIJ', 2),
				('TLS', 8),
				('VTZ', 7);

SELECT *
	FROM TerminalsAvailable
	ORDER BY TerminalNumber

DECLARE @id AS INT;
--http://blog.sqlauthority.com/2007/04/29/sql-server-random-number-generator-script-sql-query/--
DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT

---- This will create a random number between 1 and 999
SET @Lower = 1 ---- The lowest random number
SET @Upper = 60 ---- The highest random number
--------------------------------------------------------------------------------------------------

DECLARE MyCursor CURSOR FOR
	SELECT Id FROM TerminalsAvailable;

OPEN MyCursor;
	FETCH NEXT FROM MyCursor INTO @id

WHILE @@FETCH_STATUS = 0
	BEGIN 
		SELECT @Random = ROUND(((@Upper - @Lower -1) * RAND() + @Lower), 0) --http://blog.sqlauthority.com/2007/04/29/sql-server-random-number-generator-script-sql-query/
		INSERT INTO GatesAvailable
			VALUES		(@id, @Random);
		FETCH NEXT FROM MyCursor INTO @id;
	END

CLOSE MyCursor;
DEALLOCATE MyCursor;


SELECT *
	FROM GatesAvailable
	ORDER BY GateNumber;

INSERT INTO Class
	VALUES		('Economy'),
				('EconomyPlus'),
				('Business'),
				('First');

INSERT INTO CrewType
	VALUES		('Pliot'),
				('FlightAttendant');

INSERT INTO FlightStatus
	VALUES		('Transit'),
				('Parking');

SELECT * FROM FlightStatus

INSERT INTO LocationInfo
	VALUES		(2, 78.4531, 109.4675),
				(1, 28.7138, 100.8497),
				(1, 17.4531, 78.4675),
				(2, 52.3666, 13.5033),
				(1, 58.7138, 120.8497),
				(1, 55.9039, 70.0948),
				(2, 78.4531, 109.4675),
				(1, 34.7138, 133.8497),
				(1, 67.9039, 120.0948),
				(2, 17.4531, 78.4675);

SELECT * FROM LocationInfo

INSERT INTO PropulsionMethod
	VALUES		('Jet'),
				('Propeller'),
				('Hypersonic');

INSERT INTO Manufacturers
	VALUES		('Beoing'),
				('Airbus'),
				('Embraer');

INSERT INTO AirplaneModelNo
	VALUES		('A380'),
				('B737'),
				('A320'),
				('B787'),
				('A350'),
				('A330'),
				('B777'),
				('E190'),
				('E195');


SELECT * FROM Manufacturers;   
SELECT * FROM AirplaneModelNo;
SELECT * FROM PropulsionMethod;
SELECT * FROM LocationInfo;

INSERT INTO FlightAvailability
	VALUES		('Available'),
				('Retired'),
				('RequireMaintenance');

SELECT * FROM Airplanes

INSERT INTO Airplanes
	VALUES		(1, 2, '2008-06-23', 1, 20, 1, 2, 'HYD'),
				(2, 1, '2006-09-30', 1, 25, NULL, 3, NULL),
				(3, 8, '2010-09-20', 2, 8, NULL, 4, 'DEN'),
				(1, 7, '2015-09-15', 1, 20, 1, 5, 'BER'),
				(2, 3, '2012-06-23', 1, 15, NULL, 6,NULL),
				(2, 3, '2012-06-23', 1, 15, 1, 1,'BER'),
				(1, 7, '2015-09-15', 1, 20, NULL, 3, 'HYD'),
				(2, 4, '2012-06-23', 2, 15, 1, 6,NULL),
				(2, 5, '2012-06-23', 1, 15, 1, 7,'DEN'),
				(1, 6, '2015-09-15', 1, 20, NULL, 5, 'HYD'),
				(2, 1, '2010-09-20', 3, 15, 1, 9,NULL),
				(3, 5, '2012-06-23', 1, 15, 1, 10,'DEN');


SELECT * FROM Airplanes;
SELECT * FROM Class;

INSERT INTO Capacity
	VALUES		(1, 1, 200),
				(1, 2, 60),
				(1, 3, 40),
				(1, 4, 20),
				(2, 1, 250),
				(2, 2, 70),
				(2, 3, 50),
				(2, 4, 30),
				(3, 1, 50),
				(3, 2, 10),
				(3, 3, 8),
				(4, 1, 300),
				(4, 2, 100),
				(4, 3, 80),
				(4, 4, 45),
				(5, 1, 280),
				(5, 2, 100),
				(5, 3, 80),
				(5, 4, 30);
				

SELECT * FROM Airplanes;
SELECT * FROM CrewType;

INSERT INTO CrewRequired
	VALUES		(1, 1, 3),
				(1, 2, 10),
				(2, 1, 4),
				(2, 2, 15),
				(3, 1, 2),
				(3, 2, 2),
				(4, 1, 3),
				(5, 2, 10),
				(5, 1, 6),
				(5, 2, 20);


INSERT INTO EntertainmentOptions
	VALUES		('WiFi'),
				('Music'),
				('Movies'),
				('LiveTV'),
				('SatelliteRadio'),
				('InFlightSMS'),
				('InFlightCall');


SELECT * FROM Airplanes;
SELECT * FROM EntertainmentOptions;

INSERT INTO AirplanesEntertainment
	VALUES		(1,1),
				(1,2),
				(1,3),
				(1,4),
				(1,5),
				(1,6),
				(1,7),
				(2,1),
				(2,2),
				(2,3),
				(2,5),
				(2,7),
				(3,2),
				(3,3),
				(3,6),
				(3,7),
				(4,1),
				(4,2),
				(4,3),
				(4,6),
				(4,7),
				(5,1),
				(5,2),
				(5,4),
				(5,6),
				(5,7);


INSERT INTO MaintenanceType
	VALUES		('A-check'),
				('B-check'),
				('C-check'),
				('D-check');

SELECT * FROM Airplanes


INSERT INTO Maintenance
	VALUES		(1, '2004-07-01', 1, '2004-07-03'),
				(1, '2005-08-21', 2, '2005-08-27'),
				(2, '2014-07-30', 3, '2014-08-15'),
				(3, '1994-03-15', 2, '1994-03-20'),
				(5, '2016-09-12', 4, '2004-11-20');


INSERT INTO Employees	
	VALUES		('John', NULL, 'Doe', '906-78-381', 45218.34),
				('John', NULL, 'Doe', '654-78-381', 63784.24),
				('Max', NULL, 'Ball', '983-47-658', 87006.54), 
				('Jonathan', 'Garfield', 'Paterson', '906-78-381', 59000.78),
				('Keith', NULL, 'Allan', '906-78-381', 63784.24),
				('Joe',	NULL, 'Sutherland', '654-29-716', 87006.54),
				('Jonathan', 'Payton', 'Roberts', '651-97-384', 59000.78),
				('Nathan', NULL, 'Newman', '983-47-658', 63784.24),
				('Boris', 'Hank', 'Terry', '906-78-381', 45217.64),
				('Julian', NULL, 'Buckland', '906-78-381', 59000.78),
				('Luke', NULL, 'Pullman', '654-29-716', 45217.64),
				('Nathan', NULL, 'Payne', '651-97-384', 87006.54),
				('John', 'West', 'Vance', '906-78-381', 63784.24),
				('Phil', NULL, 'Bond', '983-47-658', 59000.78),
				('Dominic', NULL, 'Avery', '654-29-716', 59000.78),
				('John', 'Bradman', 'Paterson', '906-78-381', 63784.24),
				('Phil', NULL, 'McGrath', '906-78-381', 87006.54),
				('Sam', NULL, 'Bond', '651-97-384', 59000.78),
				('James', 'Kobe', 'Churchill', '654-29-716', 59000.78),
				('Leonard', NULL, 'White', '906-78-381', 59000.78),
				('Benjamin', NULL, 'Welch', '651-97-384', 45217.64),
				('Boris', NULL, 'Chapman', '654-29-716', 59000.78),
				('Kevin', NULL, 'Langdon', '906-78-381', 87006.54),
				('Harry', NULL, 'Tucker', '651-97-384', 45217.64),
				('Charles', NULL, 'Henderson', '906-78-381', 59000.78);

SELECT * FROM Maintenance;

INSERT INTO MaintenanceEmployees
	VALUES	(1,1),(4,1),(10,1),(15,1),(23,1),
			(3,2),(7,2),(8,2),(12,2),(19,2),(21,2),(23,2),
			(4,3),(5,3),(6,3),(14,3),(20,3),(23,3),(24,3),(25,3),(21,3),(19,3),
			(1,4),(2,4),(8,4),(13,4),(17,4),(19,4),(25,4),
			(1,5),(5,5),(6,5),(14,5),(20,5),(23,5),(24,5),(25,5),(21,5),(12,5),(13,5),(17,5),(19,5),(3,5);


INSERT INTO Customers
	VALUES		('Andrew', 'Mitchell', NULL, '1990-07-09', 'AA09789378' ),
				('Craig', 'Richardson', 'Sara', '1990-07-09', NULL ),
				('Deborah', 'Snyder', NULL, '1990-07-09', NULL ),
				('Charles', 'Gilbert', NULL, '1990-07-09', 'AA09409478' ),
				('Rebecca', 'Perkins', 'Nick', '1990-07-09', 'AA09784094' ),
				('Harold', 'Green', NULL, '1990-07-09', NULL ),
				('Jason', 'Stone', 'Adam', '1990-07-09', 'AA12345678' ),
				('James', 'Romero', 'Jose', '1990-07-09', NULL ),
				('Betty', 'Williamson', NULL, '1990-07-09', 'AA24681012' ),
				('Brandon', 'Robinson', NULL, '1990-07-09', 'AA13579101' ),
				('Gregory', 'Rios', 'Romero', '1990-07-09', NULL ),
				('Robert', 'Reid', NULL, '1990-07-09', 'AA98765432' ),
				('Kevin', 'Castillo', NULL, '1990-07-09', 'AA95175364' ),
				('Nicole', 'Castro', 'Tiara', '1990-07-09', NULL ),
				('Jacqueline', 'Nguyen', NULL, '1990-07-09', 'AA15935713' ),
				('Sara', 'Herrera', NULL, '1990-07-09', 'AA12378945' );

SELECT * FROM Customers

SELECT * FROM Airports;

INSERT INTO FlightRoutes
	VALUES		('ABS', 'BLR', 10.62),
				('ASW', 'BER', 8.50),
				('BOM', 'CAI', 19.75),
				('CCU', 'CDG', 5.30),
				('DUS', 'DXB', 10.62),
				('JFK', 'IAH', 19.75),
				('LAX', 'KIX', 10.62),
				('MIA', 'MRS', 5.30),
				('ORD', 'NRT', 22.65),
				('SHJ', 'PVG', 10.62),
				('VTZ', 'JFK', 19.75),
				('LYS', 'MAA', 10.62),
				('HYD', 'FRA', 5.30),
				('DEN', 'DUS', 10.62),
				('CCU', 'AUH', 22.65),
				('JFK', 'CUN', 10.62),
				('HYD', 'IAH', 22.65),
				('IAH', 'HYD', 5.30),
				('DUS', 'DEN', 19.75),
				('JFK', 'VTZ', 10.62);

SELECT * FROM AirplaneModelNo;
SELECT * FROM Airports;

INSERT INTO AccomodatedPlanesModelNos
	VALUES		('ABS', 1),('ABS', 2),('ABS', 3),('ABS', 4),('ABS', 5),
				('AUH', 2),('AUH', 3),('AUH', 4),('AUH', 5),('AUH', 6),('AUH', 8),
				('BOM', 1),('BOM', 2),('BOM', 3),('BOM', 4),('BOM', 5),('BOM', 6),('BOM', 9),
				('DEN', 1),('DEN', 3),('DEN', 4),('DEN', 5),('DEN', 6),('DEN', 7),
				('DXB', 1),('DXB', 2),('DXB', 3),('DXB', 4),('DXB', 5),('DXB', 6),('DXB', 7),('DXB', 8),('DXB', 9),
				('JFK', 1),('JFK', 2),('JFK', 3),('JFK', 4),('JFK', 5),('JFK', 6),('JFK', 7),('JFK', 8),('JFK', 9),
				('MAA', 3),('MAA', 5),('MAA', 6),('MAA', 7),('MAA', 8),
				('ORD', 1),('ORD', 2),('ORD', 3),('ORD', 5),('ORD', 6),('ORD', 7),
				('DUS', 1),('DUS', 2),('DUS', 3),('DUS', 4),('DUS', 5);


INSERT INTO ScheduleStatus
	VALUES		('Scheduled–Ontime'),
			    ('Scheduled–Delayed'), 
				('InProgress–Ontime'), 
				('InProgress–Late'), 
				('Completed');

SELECT * FROM ScheduleStatus;
SELECT * FROM Airplanes;
SELECT * FROM FlightRoutes;

INSERT INTO ScheduledFlights
	VALUES		(3214, 1, 1, 3),
				(3209, 2, 4, 14),
				(3210, 2, 2, 19),
				(0943, 4, 4, 11),
				(0944, 4, 2, 20);

SELECT * FROM ScheduledFlights

INSERT INTO SeatCostDetails	
	VALUES		(123.89),
				(450.62),
				(780.57),
				(1200.65),
				(230.89),
				(650.62),
				(930.57),
				(1500.65),
				(63.89),
				(250.62),
				(500.57),
				(900.65),
				(923.89),
				(1450.62),
				(2030.57),
				(2050.65),
				(98.89),
				(145.62),
				(620.57),
				(1200.65);

SELECT * FROM ScheduledFlights;
SELECT * FROM Customers;
SELECT * FROM Class;

INSERT INTO SeatDetails
	VALUES		(1, 1, 1, 1),
				(1, 2, 2, 2),
				(1, 3, 3, 3),
				(1, 4, 4, 4),
				(2, 5, 5, 1),
				(2, 6, 6, 2),
				(2, 7, 7, 3),
				(2, 8, 8, 4),
				(3, 9, 9, 1),
				(3, 10, 10, 2),
				(3, 11, 11, 3),
				(3, 12, 12, 4),
				(4, 13, 13, 1),
				(4, 14, 14, 2),
				(4, 15, 15, 3),
				(4, 16, 16, 4),
				(5, 13, 13, 1),
				(5, 15, 15, 3);



SELECT * FROM ScheduledFlights;
			
INSERT INTO ProjectedDetails
	VALUES		(1, '12:00:00 PM', '06:00:00 AM'),
				(2, '08:00:00 PM', '06:00:00 PM'),
				(3, '04:35:00 PM', '09:42:00 PM'),
				(4, '12:35:00 AM', '10:10:00 AM'),
				(5, '03:55:00 PM', '11:42:00 PM');

--DELETE FROM ProjectedDetails;
				

SELECT * FROM ProjectedDetails;

SELECT * FROM ScheduledFlights;
SELECT * FROM FlightRoutes;

INSERT INTO ScheduledDetails
	VALUES		(1, '12:00 PM', '06:03 AM','BOM', 'CAI', 3),
				(2, '10:00 PM', '06:00 AM','DEN', 'DUS', 5),
				(3, '16:35', '21:42','DUS', 'DEN', 6),
				(4, '12:50 AM', '10:30 AM','VTZ', 'JFK', 1),
				(5, '05:00 PM', '01:03 AM','JFK', 'VTZ', 2);

INSERT INTO ActualDetails
	VALUES		(1, '12:03 PM', '06:10 AM','BOM', 'CAI', 1),
				(2, '10:00 PM', '06:00 AM','DEN', 'DUS', 2),
				(3, '16:35', '21:42','DUS', 'DEN', 3),
				(4, '12:55 AM', '10:50 AM','VTZ', 'IAH', 4),
				(5, '05:30 PM', '01:33 AM','JFK', 'VTZ', 5);

INSERT INTO Transactions
	VALUES		(1, '2007-05-29'),
				(2, '2016-03-19'),
				(3, '2015-05-07'),
				(4, '2008-04-23'),
				(5, '2009-09-12'),
				(6, '2002-01-15'),
				(7, '2007-03-11'),
				(8, '2006-08-09'),
				(9, '2009-04-06'),
				(10, '2010-05-03'),
				(11, '2012-05-22'),
				(12, '2007-01-15'),
				(13, '2007-12-19'),
				(14, '2007-11-29'),
				(15, '2007-10-14'),
				(16, '2007-05-12'),
				(13, '2007-12-19'),
				(15, '2007-10-14');

INSERT INTO PaymentMethod
	VALUES		('Cash'),
				('Card'),
				('Check'),
				('FrequentFlyerMiles');
				
INSERT INTO CheckInStatus
	VALUES		('CheckedIn'),
				('NotCheckedIn'),
				('OnlineCheckIn');

SELECT * FROM Transactions;
SELECT * FROM ScheduledFlights;
SELECT * FROM SeatDetails;

INSERT INTO ScheduleTransactions
	VALUES		(1, 1, 1, '09:00'),
				(2, 1, 2, NULL),
				(3, 1, 1, '07:00'),
				(4, 1, 3, '13:00'),
				(5, 2, 1, '09:00'),
				(6, 2, 2, NULL),
				(7, 2, 1, '07:00'),
				(8, 2, 3, '13:00'),
				(9, 3, 1, '09:00'),
				(10, 3, 2, NULL),
				(11, 3, 3, '07:00'),
				(12, 3, 2, NULL);
				

SELECT * FROM ScheduleTransactions

INSERT INTO CheckedLuggageDetails
	VALUES		(1, 0, NULL, NULL, 0.00),
				(2, 2, '2007-09-08', 2, 130.98),
				(3, 1, '2005-09-08', 1, 90.89),
				(4, 0, NULL, NULL, 0.00),
				(5, 3, '2007-09-08', 2, 130.98),
				(6, 2, '2003-09-18', 1, 130.98),
				(7, 0, NULL, NULL, 0.00),
				(8, 3, '2007-09-18', 2, 90.89),
				(9, 1, '2005-05-28', 1, 51.32),
				(10, 0, NULL, NULL, 0.00),
				(11, 2, '2007-02-08', 2, 51.32),
				(12, 1, '2005-09-18', 1, 130.98);

SELECT * FROM Transactions;

INSERT INTO PriceOfTransaction
	VALUES		(1, 650.32, 90.98, 32.09, 800.90, 3200, 1),
				(2, 1050.32, 110.98, 32.09, 1200.90, 9000, 2),
				(3, 780.32, 90.98, 32.09, 80.90, 10000, 1),
				(4, 650.32, 90.98, 32.09, 800.90, 3200, 4),
				(5, 1050.32, 110.98, 32.09, 1200.90, 9000, 2),
				(6, 780.32, 90.98, 32.09, 80.90, 10000, 1),
				(7, 650.32, 90.98, 32.09, 800.90, 3200, 4),
				(8, 1050.32, 110.98, 32.09, 1200.90, 9000, 2),
				(9, 780.32, 90.98, 32.09, 80.90, 10000, 1),
				(10, 650.32, 90.98, 32.09, 800.90, 3200, 4),
				(11, 1050.32, 110.98, 32.09, 1200.90, 9000, 2),
				(12, 780.32, 90.98, 32.09, 80.90, 10000, 1),
				(13, 650.32, 90.98, 32.09, 800.90, 3200, 4),
				(14, 1050.32, 110.98, 32.09, 1200.90, 9000, 2),
				(15, 780.32, 90.98, 32.09, 80.90, 10000, 1),
				(16, 650.32, 90.98, 32.09, 800.90, 3200, 1),
				(17, 1050.32, 110.98, 32.09, 1200.90, 9000, 2),
				(18, 780.32, 90.98, 32.09, 80.90, 10000, 1);


