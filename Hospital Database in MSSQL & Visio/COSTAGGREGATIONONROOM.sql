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

