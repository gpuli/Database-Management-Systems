--Stored Procedure for a customer checking in for his flight
SELECT * FROM Transactions

SELECT * FROM ScheduleTransactions

SELECT * FROM Customers

SELECT * FROM CheckedLuggageDetails

SELECT * FROM CheckInStatus

SELECT * FROM PaymentMethod


DROP PROCEDURE CheckIn

EXEC dbo.CheckIn 'Harold', 'Green', '1990-07-09', NULL, 2, 5, 'Cash'

SELECT * FROM ScheduleTransactions a 
							INNER JOIN Transactions b ON a.TransactionId = b.TransactionId
							WHERE b.CustomerId = 1
							AND a.ScheduleId = 2

CREATE PROCEDURE CheckIn(@FirstName AS VARCHAR(50), @LastName AS VARCHAR(50), @BirthDate AS DATE, @FrequentFlyerNumber AS CHAR(10), @ScheduleId AS INT, @NumberOfBags AS INT, @PaymentType AS VARCHAR(20))
AS
DECLARE @CustomerId AS INT
SET @CustomerId = (SELECT a.CustomerID
						FROM Customers a
						WHERE a.FirstName = @FirstName
							AND a.LastName = @LastName
							AND a.DateOfBirth= @BirthDate
							AND (ISNULL(NULLIF(a.FrequentFlyerNumber, @FrequentFlyerNumber), NULLIF(@FrequentFlyerNumber, a.FrequentFlyerNumber)) IS NULL))

IF(NOT EXISTS(SELECT 1 FROM ScheduleTransactions a 
							INNER JOIN Transactions b ON a.TransactionId = b.TransactionId
							WHERE b.CustomerId = @CustomerId
							AND a.ScheduleId = @ScheduleId))
	BEGIN
		PRINT 'Error : The passenger does not have a reservation. Please check passenger details and schedule details and enter again.'
		RETURN;
	END
ELSE
	BEGIN
		DECLARE @status INT
		SET @status = (SELECT CheckInStatus 
							FROM ScheduleTransactions a
							INNER JOIN Transactions b ON a.TransactionId = b.TransactionId
							INNER JOIN Customers c ON b.CustomerId = c.CustomerId
							WHERE c.CustomerId = @CustomerId)
		IF(@status =1)
			BEGIN
				PRINT 'Warning : This customer has already checked in. Please check identification and allow to proceed.'
				RETURN;
			END;
		ELSE
			BEGIN
				UPDATE ScheduleTransactions
					SET CheckInStatus = 1, CheckInTime = GETDATE()
					FROM ScheduleTransactions a
							INNER JOIN Transactions b ON a.TransactionId = b.TransactionId
							INNER JOIN Customers c ON b.CustomerId = c.CustomerId
							WHERE c.CustomerId = @CustomerId;

				IF(EXISTS(SELECT 1 FROM CheckedLuggageDetails a
									INNER JOIN ScheduleTransactions b ON a.CheckedId = b.Id
									INNER JOIN Transactions c ON c.TransactionId = b.TransactionId
									INNER JOIN Customers d ON c.CustomerId = d.CustomerId
									WHERE d.CustomerId = @CustomerId))
				BEGIN
					DECLARE @NumberOfBagsAlreadyCheckedIn AS INT
					SET @NumberOfBagsAlreadyCheckedIn = (SELECT a.CheckedLuggageQty
															FROM CheckedLuggageDetails a
															INNER JOIN ScheduleTransactions b ON a.CheckedId = b.Id
															INNER JOIN Transactions c ON c.TransactionId = b.TransactionId
															INNER JOIN Customers d ON c.CustomerId = d.CustomerId
															WHERE d.CustomerId = @CustomerId)

					UPDATE CheckedLuggageDetails 
					SET CheckedLuggageQty =  (@NumberOfBags + @NumberOfBagsAlreadyCheckedIn), PaymentType = e.Id, Cost = ((@NumberOfBags + @NumberOfBagsAlreadyCheckedIn) * 45)
						FROM CheckedLuggageDetails a
							INNER JOIN ScheduleTransactions b ON a.CheckedId = b.Id
							INNER JOIN Transactions c ON c.TransactionId = b.TransactionId
							INNER JOIN Customers d ON c.CustomerId = d.CustomerId 
							INNER JOIN PaymentMethod e ON e.Text = @PaymentType 
							WHERE d.CustomerId = @CustomerId;
				END;
				ELSE
					BEGIN
						DECLARE @Id AS INT
						SET @Id = (SELECT a.Id
								FROM ScheduleTransactions a
								INNER JOIN Transactions b ON a.TransactionId = b.TransactionId
								INNER JOIN Customers c ON b.CustomerId = c.CustomerId
								WHERE c.CustomerId = @CustomerId)

						DECLARE @PaymentId AS INT
						SET @PaymentId = (SELECT Id
											FROM PaymentMethods
												WHERE Paymentmethods.Text = @PaymentType)

						DECLARE @Cost AS DECIMAL(5,2)
						SET @Cost = @NumberOfBags * 45
								
					 	INSERT INTO CheckedLuggageDetails
						VALUES (@Id, @NumberOfBags, GETDATE(), @PaymentId, @Cost)
					END;
				PRINT 'The customer has been checked in and luggage quantity and cost have been updated.'
				END;
			END;

