--Booking a trip for a customer: This Stored Procedure takes in the customers details from the user and the flight number and books a flight
-- for the user.
CREATE PROCEDURE BookFlight(@FlightNumber AS VARCHAR(20), @FirstName AS VARCHAR(50), @LastName AS VARCHAR(50), 
							@MiddleName AS VARCHAR(50), @BirthDate AS DATE, 
							@FreqFlyerNumber AS CHAR(10), @Class AS VARCHAR(50))
							
AS 
--Checking if the flight number is valid
IF(NOT EXISTS(SELECT 1 FROM ScheduledFlights WHERE FlightNumber = @FlightNumber))
	BEGIN
		--Flight number is not valid
		PRINT 'Error: Please provide a valid flight number and try again.';
		RETURN;
	END;
--Checking if the customer already exists in the list. To minimize the chance of customers with same name, date of birth
--and frequent flyer number are also checked. 
ELSE IF(NOT EXISTS(SELECT 1 
						FROM Customers  
							WHERE FirstName = @FirstName 
							AND LastName = @LastName 
--http://stackoverflow.com/questions/1075142/how-to-compare-values-which-may-both-be-null-is-t-sql
							AND (ISNULL(NULLIF(MiddleName, @MiddleName), NULLIF(@MiddleName, MiddleName)) IS NULL)
							AND DateOfBirth = @BirthDate
							AND (ISNULL(NULLIF(FrequentFlyerNumber, @FreqFlyerNumber), NULLIF(@FreqFlyerNumber, FrequentFlyerNumber)) IS NULL)))
	BEGIN
		INSERT INTO Customers
			VALUES(@FirstName, @LastName, @MiddleName, @BirthDate, @FreqFlyerNumber)
	END;

IF(NOT EXISTS(SELECT 1 FROM SeatDetails a , ScheduledFlights b WHERE a.ScheduleId = b.ScheduleId 
												AND a.CustomerId IS NULL))
	BEGIN
		PRINT 'There are no more seats available on the selected flight. Please choose another flight.';
		RETURN;
	END;
ELSE IF(NOT EXISTS(SELECT 1 FROM SeatDetails a, ScheduledFlights b , Class c WHERE a.ScheduleId = b. ScheduleId 
																			   AND @FlightNumber = b.FlightNumber  
																			   AND a.CustomerId IS NULL
																			   AND c.Text = @Class
																			   AND c.ClassId = a.Class))
	BEGIN
		PRINT 'There are no more seats available in the selected class. Please choose another class.'
		RETURN;
	END;
ELSE
	BEGIN
		DECLARE @CustId AS INT
		SET @CustId = (SELECT CustomerId FROM Customers WHERE FirstName = @FirstName 
															 AND LastName = @LastName 
															 AND (ISNULL(NULLIF(MiddleName, @MiddleName), NULLIF(@MiddleName, MiddleName)) IS NULL)
															 AND DateOfBirth = @BirthDate
															 AND (ISNULL(NULLIF(FrequentFlyerNumber, @FreqFlyerNumber), NULLIF(@FreqFlyerNumber, FrequentFlyerNumber)) IS NULL))
		print @CustId
		UPDATE TOP(1) SeatDetails
			SET CustomerId = @CustId
				FROM SeatDetails a, ScheduledFlights b, Class c WHERE a.ScheduleId = b. ScheduleId 
														 AND a.CustomerId IS NULL
														 AND c.Text = @Class
														 AND c.ClassId = a.Class
	END;

DROP PROCEDURE dbo.BookFlight; 

EXEC dbo.BookFlight
	@FlightNumber='3214', @FirstName='Gaurav Roy', @LastName='Puli', 
						  @MiddleName=NULL, @BirthDate='1990-11-25', 
							@FreqFlyerNumber=NULL, @Class = 'EconomyPlus';

SELECT * FROM ScheduledFlights;
SELECT * FROM SeatDetails;
SELECT * FROM Customers;
SELECT * FROM Class;

DELETE FROM Customers
	WHERE FirstName = 'Gaurav Roy' AND LastName = 'Puli' AND MiddleName IS NULL;

UPDATE SeatDetails
	SET CustomerId = NULL
		WHERE ScheduleId = 1 AND Class = 2 


