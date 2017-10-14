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
