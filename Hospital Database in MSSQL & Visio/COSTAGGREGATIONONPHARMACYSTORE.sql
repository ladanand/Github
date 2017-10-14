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
VALUES (2,1,3,'2017-07-15')