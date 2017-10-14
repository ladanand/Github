
USE Projectgroup1
GO

CREATE MASTER KEY ENCRYPTION
BY PASSWORD ='fuhrerbegum0A@';
-----Check if master key already exists or not by following statement----
SELECT * FROM sys.symmetric_keys WHERE symmetric_key_id = 101 
------Create a certificate with encryption-------
CREATE CERTIFICATE Cert_Password
ENCRYPTION BY PASSWORD = 'fuhrerbegum0A@'
WITH SUBJECT = 'Password protection',
EXPIRY_DATE = '12/31/2019';
 ------Check certificate execution------------- 
SELECT * FROM sys.certificates;
-------Create Symmetric key-------------------
CREATE SYMMETRIC KEY Sym_password
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE Cert_Password;
-------Check database for creation-----------
SELECT * FROM sys.symmetric_keys WHERE symmetric_key_id = 256
-------Encrypt data-------------------------
OPEN SYMMETRIC KEY Sym_password
DECRYPTION BY CERTIFICATE Cert_Password WITH PASSWORD = 'fuhrerbegum0A@';
-------Testing Data-------------------------
UPDATE PharmacyStore
SET Name = EncryptByKey(Key_GUID('Sym_password'),Name);
CLOSE SYMMETRIC KEY Sym_password;
-------Decrypt Data-------------------------
OPEN SYMMETRIC KEY Sym_password
DECRYPTION BY CERTIFICATE Cert_Password WITH PASSWORD = 'fuhrerbegum0A@';
SELECT CAST(DECRYPTBYKEY([Name]) as varchar(200))
FROM PharmacyStore
CLOSE SYMMETRIC KEY Sym_password;