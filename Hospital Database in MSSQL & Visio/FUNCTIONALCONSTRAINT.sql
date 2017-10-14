
CREATE FUNCTION CHECKDAY (@purchasedate date)
RETURNS int
AS
BEGIN
DECLARE @flag int;
RETURN
CASE 
WHEN DATENAME(dw,@purchasedate)='Sunday'
THEN 0
ELSE 1
END
END
GO

DROP FUNCTION CHECKDAY

ALTER TABLE dbo.Doctor_Patients_PharmacyStore ADD CONSTRAINT Checkforholiday
CHECK (dbo.CHECKDAY(PurchaseDate)=1);

ALTER TABLE dbo.Doctor_Patients_PharmacyStore DROP CONSTRAINT Checkforholiday