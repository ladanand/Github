USE Projectgroup1;

CREATE TABLE Doctor_Patients
 (
  StaffID int NOT NULL, 
  PatientID int NOT NULL,
  AppointmentID int NOT NULL
  PRIMARY KEY CLUSTERED (StaffID, PatientID),
  FOREIGN KEY ( StaffID ) REFERENCES dbo.Doctor ( StaffID ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( PatientID ) REFERENCES dbo.Patient ( PatientID) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( AppointmentID ) REFERENCES dbo.Appointment (AppointmentID) ON UPDATE  CASCADE  ON DELETE  CASCADE
  );


-----------------------------------------------------------------------------
CREATE TABLE Doctor_Patients_Operation
 (
  AppointmentID int NOT NULL,
  OperationDate DATE NOT NULL,
  OperationNo int NOT NULL,
  TotalCost INT NULL
  PRIMARY KEY CLUSTERED (AppointmentID,OperationNo,OperationDate),
  FOREIGN KEY ( AppointmentID ) REFERENCES dbo.Appointment (AppointmentID) ON UPDATE CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( OperationNo ) REFERENCES dbo.Operation ( OperationNo ) ON UPDATE  CASCADE  ON DELETE  CASCADE
  );

CREATE TRIGGER TRIGGER9 ON Doctor_Patients_Operation
AFTER INSERT 
AS
Declare @cost INT, @id INT
SET @id =(Select OperationNo from inserted)
SET @cost=(SELECT Operation.Price from Operation INNER JOIN inserted i on i.OperationNo=Operation.OperationNo)
UPDATE Doctor_Patients_Operation SET TotalCost = @cost WHERE OperationNo=@id


DROP TABLE Doctor_Patients_Operation

INSERT INTO dbo.Doctor_Patients_Operation (AppointmentID,OperationDate,OperationNo) 
VALUES (1,'2017-07-12',1)

INSERT INTO dbo.Doctor_Patients_Operation (AppointmentID,OperationDate,OperationNo) 
VALUES (1,'2017-07-12',2)

-----------------------------------------------------------------------------
CREATE TABLE Doctor_Patients_PharmacyStore
 (BillID INT IDENTITY (1,1),
  AppointmentID INT ,
  MedicineID INT ,
  TotalQuantity INT NOT NULL,
  PurchaseDate DATE,
  TotalCost INT
  PRIMARY KEY CLUSTERED (AppointmentID,BillID,MedicineID),
  FOREIGN KEY (AppointmentID ) REFERENCES dbo.Appointment (AppointmentID) ON UPDATE CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY (MedicineID ) REFERENCES dbo.PharmacyStore (MedicineID ) ON UPDATE  CASCADE  ON DELETE  CASCADE
 );
GO

CREATE TRIGGER TRIGGER7 ON Doctor_Patients_PharmacyStore
AFTER INSERT 
AS
DECLARE @costtotal INT
DECLARE @qty int
DECLARE @id int
SET @qty=(select TotalQuantity from inserted)
SET @id =(Select MedicineID from inserted)
SET @costtotal=(SELECT @qty*b.Cost from PharmacyStore b INNER JOIN inserted a ON a.MedicineID=b.MedicineID)
UPDATE Doctor_Patients_PharmacyStore SET TotalCost = @costtotal WHERE MedicineID=@id


DROP TRIGGER TRIGGER7
DROP TABLE Doctor_Patients_PharmacyStore
DROP PROCEDURE CostAggregation

truncate table Doctor_Patients_PharmacyStore

INSERT INTO dbo.Doctor_Patients_PharmacyStore (AppointmentID,MedicineID,TotalQuantity,PurchaseDate) 
VALUES (1,3,3,'2017-07-15')
INSERT INTO dbo.Doctor_Patients_PharmacyStore (AppointmentID,MedicineID,TotalQuantity,PurchaseDate) 
VALUES (1,4,3,'2017-07-24')


------------------------------------------------------------------------------------
 CREATE TABLE Lab_Staff
 (
  StaffID int NOT NULL, 
  LabID int NOT NULL 
  PRIMARY KEY CLUSTERED (StaffID, LabID),
  FOREIGN KEY ( StaffId ) REFERENCES [Doctor] ( StaffId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( LabId ) REFERENCES [Lab] ( LabId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  );

-------------------------------------------------------------------------------------
  CREATE TABLE Room_Staff
 (
  StaffID int NOT NULL, 
  RoomID int NOT NULL 
  PRIMARY KEY CLUSTERED (StaffID, RoomID),
  FOREIGN KEY ( StaffId ) REFERENCES [Doctor] ( StaffId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( RoomId ) REFERENCES [Room] ( RoomId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  );

  ----------------------------------------------------------------------------------------

  CREATE TABLE Doctor_Patients_Rooms
 (
  AppointmentID INT NOT NULL,
  RoomID INT  NOT NUll,
  AdmitDate Date Null,
  DischargeDate Date Null,
  BedNumber Int Null,
  TotalCost INT NULL
  PRIMARY KEY CLUSTERED (AppointmentID,RoomID),
  FOREIGN KEY ( AppointmentID) REFERENCES dbo.Appointment( AppointmentID) ON UPDATE CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( RoomID ) REFERENCES dbo.Room ( RoomID ) ON UPDATE  CASCADE  ON DELETE  CASCADE
  );

CREATE TRIGGER TRIGGER8 ON Doctor_Patients_Rooms
AFTER INSERT 
AS
DECLARE @costtotal INT
DECLARE @stay int
DECLARE @id int
SET @stay=(select DATEDIFF(day,AdmitDate,DischargeDate) from inserted)
SET @id =(Select RoomID from inserted)
SET @costtotal=(SELECT @stay*b.Cost from Room b INNER JOIN inserted a ON a.RoomID=b.RoomID)
UPDATE Doctor_Patients_Rooms SET TotalCost = @costtotal WHERE RoomID=@id

INSERT INTO dbo.Doctor_Patients_Rooms (AppointmentID,RoomID,AdmitDate,DischargeDate,BedNumber) 
VALUES (1,1,'2017-07-12','2017-07-15',1)

INSERT INTO dbo.Doctor_Patients_Rooms (AppointmentID,RoomID,AdmitDate,DischargeDate,BedNumber) 
VALUES (2,3,'2017-07-12','2017-07-15',1)

  ----------------------------------------------------------------------------------------------
CREATE TABLE Test
(
TestID int NOT NULL PRIMARY KEY,
LabID int,
TestName VArchar(max),
Cost int
FOREIGN KEY ( LabID ) REFERENCES dbo.Lab ( LabID)
)

CREATE TABLE Doctor_Patients_Tests
 (
  AppointmentID int NOT NULL,
  TestID int NOT NULL,
  TotalCost int null, 
  TestDate date Null
  PRIMARY KEY CLUSTERED (AppointmentID,TestID),
  FOREIGN KEY ( AppointmentID ) REFERENCES dbo.Appointment ( AppointmentID ) ON UPDATE CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( TestID) REFERENCES dbo.Test ( TestID ) ON UPDATE  CASCADE  ON DELETE  CASCADE
  );

CREATE TRIGGER TRIGGER13 ON Doctor_Patients_Tests
AFTER INSERT 
AS
DECLARE @costtotal INT;
DECLARE @id INT;
SET @id = (SELECT TestID FROM inserted)
SET @costtotal = (SELECT Cost FROM Test t INNER JOIN inserted i ON t.TestID = i.TestID)
UPDATE Doctor_Patients_Tests SET TotalCost = @costtotal WHERE TestID = @id;


DROP TRIGGER TRIGGER13
DROP TABLE Doctor_Patients_Tests
DROP PROCEDURE CostAggregation

truncate table Doctor_Patients_PharmacyStore

INSERT INTO Doctor_Patients_Tests (AppointmentID,TestID,TestDate) 
VALUES (1,2,'2017-07-15')

----------------------------------------------------------------------------------------------

CREATE TABLE DOCTOR_PATIENTS
(
AppointmentID INT,
PatientID INT,
StaffID INT
PRIMARY KEY CLUSTERED(AppointmentID,PatientID,StaffID)
)

CREATE TRIGGER TRIGGER20 ON dbo.Appointment
AFTER INSERT
AS
DECLARE @apptid INT
DECLARE @stid INT
DECLARE @pid INT
SET @apptid=(SELECT AppointmentID from inserted)
SET @pid=(SELECT PatientID from inserted)
SET @stid=(SELECT StaffID from inserted)
INSERT INTO dbo.DOCTOR_PATIENTS VALUES(@apptid,@pid,@stid)
GO

--------------------------------------------------------------------------------------------------



