CREATE PROCEDURE AppointmentMake
@patientid INT,@patientproblem VARCHAR(MAX),@patientdate DATETIME
AS
WITH TEMP AS
(
SELECT StaffID from dbo.Doctor
WHERE Specialization=@patientproblem
),
TEMP2 AS(
SELECT TOP 1 TEMP.StaffID from TEMP WHERE TEMP.StaffID NOT IN (Select StaffID from dbo.Appointment where [Datetime] between @patientdate and DATEADD(minute,15,@patientdate)
))
INSERT INTO dbo.Appointment(PatientID,StaffID,[Datetime])
VALUES(@patientid,(SELECT * FROM TEMP2), @patientdate)

----------------------------------------------------------------
DROP PROCEDURE AppointmentMake
GO
--------------------------------------------------------------------
CREATE TRIGGER Trigger40 ON dbo.Patient
AFTER INSERT 
AS
DECLARE @patientID INT, @patientproblem VARCHAR(MAX),@patientdate datetime;
SET @patientID=(Select PatientID from inserted)
SET @patientproblem=(select PatientProblem from inserted)
SET @patientdate=(select PatientDate from inserted)
EXECUTE AppointmentMake @patientID,@patientproblem,@patientdate
GO

DROP TRIGGER Trigger40
DBCC CHECKIDENT ('dbo.Appointment', RESEED, 7)


