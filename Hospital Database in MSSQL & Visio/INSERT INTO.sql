INSERT INTO Operation
VALUES (1,'Plastic Surgery',500000),
       (2,'Apendix Surgery',1000000),
       (3,'Anthroscopy',150000),
       (4,'Breast Biopsy',200000),
       (5,'Dental Restoration',300000),
       (6,'Heart Surgery',600000),
       (7,'Gastric Bypass',500000),
       (8,'Spinal Surgery',400000),
       (9,'Openknee Surgery',100000),
       (10,'Shoulder Surgery',600000),
       (11,'Brain Tumors',400000),
       (12,'Thermal Removal',120000),
       (13,'Ventral Hernia',300000),
       (14,'Liver Resection',80000),
       (15,'Lung Resection',20000),
       (16,'Breast Cancer',300000),
       (17,'Breast Reduction',200000),
       (18,'Removal of Skin Cancer',200000),
       (19,'Adrenal gland removal',300000),
       (20,'Lung Airway Surgery',600000);
----------------------------------------------

INSERT INTO Department
VALUES (1,	'Doctors'),
       (2,	'Nursing'),
       (3,	'Cleaning'),
       (4,	 'Security'),
       (5,	'Administration'),
       (6,	'LaboratoryStaff'),
       (7,	'Pantry'),
       (8,	'Parking'),
       (9,	'FireandSafety');
----------------------------------------------------------------

INSERT INTO Lab
VALUES (1,	'Radiology'),
       (2,	'Radiology'),
       (3,	'Radiology'),
       (4,	'Radiology'),
       (5,	'Radiology'),
       (6,	'Pathology'),
       (7,	'Pathology'),
       (8,	'Pathology'),
       (9,	'Pathology'),
       (10,'Pathology');
------------------------------------------------------------------

INSERT INTO PharmacyStore
VALUES (1,		'2019-12-01',	100),
       (2,		'2019-12-02',	150),
       (3,		'2019-12-03',	250),
       (4,		'2019-12-04',	350),
       (5,		'2019-12-05',	470),
       (6,		'2019-12-06',	100),
       (7,		'2019-12-07',	250),
       (8,		'2019-12-08',	390),
       (9,		'2019-12-11',	650),
       (10,	    '2019-12-14',	20);
-------------------------------------------------------------------

INSERT INTO Staff
VALUES 
(1,	'Shah','Harsh',8576123456,'M','Doctor',	1),
(2,	'Lad','Anand',8576017654,'M','Doctor',	1),
(3,	'Steve','Johns',6127654352,'M','Doctor',	1),
(4,	'Dana','Adam',6784325143,'F','Administrator',	5),
(5,	'Sharma','Priya',8678975432,'F','Administrator',	5),
(6,	'Gandhi','Nupur',7866543241,'F','security',	4),
(7,	'Patel','Shrey',6178657654,'M','Doctor',	1),
(8,	'Arens','Rubie',8576125432,'F','Janitor',	3),
(9,	'Runwal','Suraj',8573128654,'M','Doctor',	1),
(10,'Shah','Nishit',8673126436,'M','Valet',	8),
(11,'Patel','Harsh',9339339898,'M','Valet',	1),
(12,'Shah','Vipul',	7387393939,'M','Doctor',1);
----------------------------------------------------------------

INSERT INTO Room
VALUES
(1,	'Deluxe',	100),
(2,	'General',	50),
(3,	'Deluxe',	100),
(4,	'Deluxe',	100),
(5,	'General',	50),
(6, 'General',	50),
(7,	'Deluxe',	100),
(8,	'General',	50),
(9,	'Deluxe',	100),
(10,'Deluxe',	100);


--------------------------------------------------------