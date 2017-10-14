Create View Final_BillView AS
select b.AppointmentID,count(t.TestID) AS TestCount,Count(r.RoomID) AS RoomCount,count(o.OperationNo) As OperationCount,count(p.BillID) as BillCount from BillingStatement b
 full outer join Doctor_Patients_Rooms r on r.AppointmentID=b.AppointmentID
 full outer join Doctor_Patients_Operation o on o.AppointmentID=b.AppointmentID
full outer join Doctor_Patients_Tests t on t.AppointmentID=b.AppointmentID
full outer join Doctor_Patients_PharmacyStore p on p.AppointmentID=b.AppointmentID
Group By b.AppointmentID

Select * from Final_BillView
Drop view Final_BillView
GO

CREATE VIEW CardiacPatients_Doctors
AS 
SELECT p.PatientID, d.StaffID, p.LastName AS PATIENTLASTNAME, p.FirstName AS PATIENTFIRSTNAME, d.LastName AS DOCTORLASTNAME, d.FirstName AS DOCTORFIRSTNAME
, p.PatientProblem, d.Specialization
FROM Patient p
INNER JOIN DOCTOR_PATIENTS dp
ON p.PatientID = dp.PatientID
INNER JOIN Doctor d
ON d.StaffID = dp.StaffID
WHERE p.PatientProblem = 'Cardiac' AND d.Specialization = 'Cardiac'

SELECT * FROM CardiacPatients_Doctors