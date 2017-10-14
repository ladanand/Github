CREATE TABLE Operation
(
OpeartionNo INT PRIMARY KEY NOT NULL,
Name varchar(500),
Price INT
)
--------------------------------
CREATE TABLE Department
(
DepartmentID INT PRIMARY KEY NOT NULL, 
DepartmentName varchar(50)
);
------------------------------------------
CREATE TABLE Lab
(
LabID INT PRIMARY KEY NOT NULL,
LabName varchar(max)
);
---------------------------------------------
CREATE TABLE PharmacyStore
(
MedicineID INT PRIMARY KEY NOT NULL,
Name varchar(max) NOT NULL,
ExpiryDate DATE NOT NULL,
Cost INT NOT NULL
);
--------------------------------------------
CREATE TABLE Staff
(
StaffID INT PRIMARY KEY NOT NULL,
LastName varchar(50),
FirstName varchar(50),
ContactNo varchar(max),
Sex nchar(10),
Designation varchar(50),
DepartmentID INT NOT NULL
FOREIGN KEY DepartmentID REFERENCES dbo.Department (DepartmentID)
);
-----------------------------------------------------
CREATE TABLE Room 
(
RoomID INT PRIMARY KEY NOT NULL,
RoomType varchar(max),
Cost INT
);
-------------------------------------------------
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
 ------------------------
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
 ------------------------------------------
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
------------------------------------------
CREATE TABLE Lab_Staff
 (
  StaffID int NOT NULL, 
  LabID int NOT NULL 
  PRIMARY KEY CLUSTERED (StaffID, LabID),
  FOREIGN KEY ( StaffId ) REFERENCES [Doctor] ( StaffId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( LabId ) REFERENCES [Lab] ( LabId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  );
 -------------------------------------------------
 CREATE TABLE Room_Staff
 (
  StaffID int NOT NULL, 
  RoomID int NOT NULL 
  PRIMARY KEY CLUSTERED (StaffID, RoomID),
  FOREIGN KEY ( StaffId ) REFERENCES [Doctor] ( StaffId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  FOREIGN KEY ( RoomId ) REFERENCES [Room] ( RoomId ) ON UPDATE  CASCADE  ON DELETE  CASCADE,
  );
 -----------------------------------------------------
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
------------------------------------------
CREATE TABLE Test
(
TestID int NOT NULL PRIMARY KEY,
LabID int,
TestName VArchar(max),
Cost int
FOREIGN KEY ( LabID ) REFERENCES dbo.Lab ( LabID)
)
-----------------------------------------------
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
----------------------------------------------------
CREATE TABLE DOCTOR_PATIENTS
(
AppointmentID INT,
PatientID INT,
StaffID INT
PRIMARY KEY CLUSTERED(AppointmentID,PatientID,StaffID)
)
------------------------------------------
CREATE TABLE Doctor
(
StaffID INT Primary KEY,
LastName VARCHAR(MAX),
FirstName VARCHAR(MAX),
ContactNo VARCHAR(MAX),
DepartmentID INT,
Specialization VARCHAR(MAX),
COnsultingFees int
FOREIGN KEY(DepartmentID) REFERENCES dbo.Staff (DepartmentID)
)
--------------------------------------------------------------------------------------------------------------------------------  
CREATE TABLE Appointment
(
AppointmentID int PRIMARY KEY
PatientID int
StaffID int
[DateTime] datetime 
FOREIGN KEY(PatientID) REFERENCES dbo.Patient(PatientID)
FOREIGN KEY(StaffID) REFERENCES dbo.Doctor(StaffID)
)
----------------------------------------------------------------------------------------------
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
 --------------------------------------------------------------------------------------------------------