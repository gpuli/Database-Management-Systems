--Stored Procedure to assign an employee to an airplane maintenance.
--If the employee is already a part of an ongoing maintenance schedule it will give an error

SELECT * FROM Maintenance

SELECT * FROM Employees

SELECT * FROM MaintenanceEmployees

DROP PROCEDURE AssignMaintenanceEmployees

CREATE PROCEDURE AssignMaintenanceEmployees(@FirstName AS VARCHAR(50), @LastName AS VARCHAR(50), @SSN AS VARCHAR(10), @MaintenanceId AS INT)
AS

DECLARE @EmployeeId AS INT
SELECT @EmployeeId = (SELECT EmployeeId 
						FROM Employees
						WHERE FirstName = @FirstName
								AND LastName = @LastName
								AND SSN = @SSN)

IF(EXISTS(SELECT 1 FROM MaintenanceEmployees a, Employees b
					WHERE b.FirstName = @FirstName
							AND b.LastName = @LastName
							AND b.SSN = @SSN
							AND a.EmployeeId = b.EmployeeId))
	BEGIN
		IF (EXISTS(SELECT 1 FROM Employees a, MaintenanceEmployees b, Maintenance c
						WHERE a.FirstName = @FirstName
							AND a.LastName = @LastName
							AND a.SSN = @SSN
							AND a.EmployeeId = b.EmployeeId
							AND b.Maintenanceid = @MaintenanceId))
			BEGIN
				PRINT 'This employee is already assigned to this maintenance job.'
				RETURN;
			END;
		ELSE IF(EXISTS(SELECT * FROM Employees a, MaintenanceEmployees b, Maintenance c, Maintenance d
						WHERE a.FirstName = @FirstName
							AND a.LastName = @LastName
							AND a.SSN = @SSN
							AND a.EmployeeId = b.EmployeeId
							AND c.MaintenanceId = b.MaintenanceId
							AND d.MaintenanceId = @MaintenanceId
							AND ((((c.MaintenanceStartDate >= d.MaintenanceStartDate) AND (c.MaintenanceStartDate <= d.EstimatedCompletion) )
								OR ((c.EstimatedCompletion >= d.MaintenanceStartDate) AND (c.EstimatedCompletion <= d.EstimatedCompletion) ))
								OR ((d.MaintenanceStartDate >= c.MaintenanceStartDate) AND (d.MaintenanceStartDate <= c.EstimatedCompletion) )
								OR ((d.EstimatedCompletion >= c.MaintenanceStartDate) AND (d.EstimatedCompletion <= c.EstimatedCompletion) ))))
			BEGIN
				PRINT 'This employee is already working on another maintenance job whose dates will clash with the required maintenance job.'
				RETURN;
			END
		

	END;

ELSE
	BEGIN
		INSERT INTO MaintenanceEmployees
			VALUES(@EmployeeId,@MaintenanceId);
			PRINT 'The Employee has been assigned to the maintenance job.';
			RETURN;
		END;


SELECT * FROM Maintenance

SELECT * FROM Employees

SELECT * FROM MaintenanceEmployees

INSERT INTO Maintenance
	VALUES (6, '2003-06-09', 2, '2005-08-25');

DELETE FROM Employees
WHERE SSN = 65478381

EXEC dbo.AssignMaintenanceEmployees 'Max', 'Ball', '983-47-658', 1 

UPDATE Maintenance
SET EstimatedCompletion = '2017-09-12'
	WHERE MaintenanceId = 5

INSERT INTO Maintenance
	VALUES(2, '2013-09-23', 3, '2014-08-10')

DELETE FROM MaintenanceEmployees
WHERE EmployeeId = 5 AND MaintenanceId = 5
