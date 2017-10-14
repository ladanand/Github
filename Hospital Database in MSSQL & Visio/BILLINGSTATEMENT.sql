CREATE TABLE BillingStatement
 (BillingStatementID INT IDENTITY (1,1) PRIMARY KEY,
  AppointmentID INT,   
  OperationCost INT,
  RoomCost INT,
  TestCost INT,
  MedicineCost INT,
  TotalCost INT,
  PaymentMethod VARCHAR(MAX),
  DateAdmitted Date,
  DateDischarged Date,
  FOREIGN KEY (AppointmentID ) REFERENCES dbo.Appointment (AppointmentID) ON UPDATE CASCADE  ON DELETE  CASCADE,
 );
 -------------------------
 DROP TABLE BillingStatement
 ---------------------------
 CREATE FUNCTION FinanceCompute (@Appointmentid INT)
RETURNS @return TABLE (AppointmentID INT,OperationCost INT, RoomCost INT, TestCost INT, MedicineCost INT,TotalCost INT)
AS
BEGIN
DECLARE @opcost INT;
SET @opcost=(SELECT SUM(TotalCost) from Doctor_Patients_Operation GROUP BY AppointmentID having AppointmentID=@Appointmentid)
DECLARE @roomcost INT;
SET @roomcost=(SELECT SUM(TotalCost) from Doctor_Patients_Rooms GROUP BY AppointmentID having AppointmentID=@Appointmentid)
DECLARE @testcost INT;
SET @testcost = (SELECT SUM(TotalCost) from Doctor_Patients_Tests GROUP BY AppointmentID having AppointmentID=@Appointmentid)
DECLARE @MedicineCost INT;
SET @MedicineCost = ( SELECT SUM(TotalCost) from Doctor_Patients_PharmacyStore GROUP BY AppointmentID having AppointmentID=@Appointmentid)
DECLARE @TotalCost INT
SET @TotalCost=@opcost+@roomcost+@testcost+@MedicineCost
INSERT INTO @return
VALUES(@Appointmentid,@opcost,@roomcost,@testcost,@MedicineCost,@TotalCost)
RETURN 
END
----------------------------------------
DROP FUNCTION FinanceCompute
GO
-------------------------------------------------
CREATE TRIGGER TRIGGER15 ON BillingStatement
AFTER INSERT 
AS
DECLARE @appointmentid INT,
@payment VARCHAR(MAX),
@Dateofadmit date,
@Dateofdischarge date;
SET @appointmentid=(SELECT AppointmentID from inserted);
SET @payment=(SELECT PaymentMethod from inserted);
SET @Dateofadmit=(SELECT DateAdmitted from inserted);
SET @Dateofdischarge=(SELECT DateDischarged from inserted)
UPDATE BillingStatement SET PaymentMethod=@payment,
DateAdmitted=@Dateofadmit, DateDischarged=@Dateofdischarge,OperationCost=(SELECT OperationCost from FinanceCompute(@appointmentid)),
RoomCost=(SELECT RoomCost from FinanceCompute(@appointmentid)),TestCost=(SELECT TestCost from FinanceCompute(@appointmentid)),
MedicineCost=(SELECT MedicineCost from FinanceCompute(@appointmentid)),TotalCost=(SELECT TotalCost from FinanceCompute(@appointmentid))
WHERE AppointmentID=@appointmentid;
GO
--------------------------
DROP TRIGGER TRIGGER15
INSERT INTO BillingStatement(AppointmentID,PaymentMethod,DateAdmitted,DateDischarged) VALUES (1,'Card','2017-07-10','2017-07-15')