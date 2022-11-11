-- In this script, I am going to do an end to end analysis of salaries of employees who are working in Data Science Industry. 
-- I downloaded this dataset from the very famous website ""Kaggle.com"". The information is from the year 2020 to 2022 encompassing all job roles
-- inside the Data Science job family covering all the regions, experience level, job type,etc.

-- Creating the Database named salary.
CREATE DATABASE salary;
USE salary;

-- Importing ds_salaries table inside salary database.
CREATE TABLE ds_salaries (
    `id` INT,
    `work_year` INT,
    `experience_level` VARCHAR(2),
    `employment_type` VARCHAR(2),
    `job_title` VARCHAR(40),
    `salary` VARCHAR(8),
    `salary_currency` VARCHAR(3),
    `salary_in_usd` INT,
    `employee_residence` VARCHAR(2),
    `remote_ratio` INT,
    `company_location` VARCHAR(2),
    `company_size` VARCHAR(1)
);
Insert into ds_salaries 
Values
(0,2020,'MI','FT','Data Scientist','70000','EUR',79833,'DE',0,'DE','L'),
    (1,2020,'SE','FT','a','d','USD',260000,'JP',0,'JP','S'),
    (2,2020,'SE','FT','b','e','GBP',109024,'GB',50,'GB','M'),
    (3,2020,'MI','FT','c','g','USD',20000,'HN',0,'HN','S'),
    (4,2020,'SE','FT','Machine Learning Engineer','150000','USD',NULL,'US',50,'US','L'),
    (9,2020,'SE','FT','Lead Data Engineer','125000','USD',NULL,'NZ',50,'NZ','S'),
    (10,2020,'EN','FT','Data Scientist',NULL,'EUR',NULL,'FR',0,'FR','S'),
    (11,2020,'MI','FT','Data Scientist',NULL,'INR',NULL,'IN',0,'IN','L'),
    (12,2020,'EN','FT','Data Scientist',NULL,'EUR',NULL,'FR',0,'FR','M'),
    (13,2020,'MI','FT','Lead Data Analyst',NULL,'USD',NULL,'US',100,'US','L'),
    (20,2020,'MI','FT','Machine Learning Engineer',NULL,'CNY',NULL,'CN',0,'CN','M'),
    (21,2020,'MI','FT','Product Data Analyst',NULL,'INR',NULL,'IN',100,'IN','L'),
    (22,2020,'SE','FT','Data Engineer',NULL,'EUR',NULL,'GR',50,'GR','L'),
    (23,2020,'MI','FT','BI Data Analyst',NULL,'USD',NULL,'US',0,'US','M'),
    (24,2020,'MI','FT','Lead Data Scientist',NULL,'USD',NULL,'AE',0,'AE','L'),
    (25,2020,'EX','FT','Director of Data Science',NULL,'USD',NULL,'US',100,'US','L'),
    (26,2020,'EN','FT','Research Scientist',NULL,'USD',NULL,'NL',50,'NL','L'),
    (27,2020,'SE','FT','Data Engineer',NULL,'MXN',33511,'MX',0,'MX','S'),
    (28,2020,'EN','CT','Business Data Analyst',NULL,'USD',100000,'US',100,'US','L'),
    (29,2020,'SE','FT','Machine Learning Manager','157000','CAD',117104,'CA',50,'CA','L'),
    (30,2020,'MI','FT','Data Engineering Manager','51999','EUR',59303,'DE',100,'DE','S'),
    (31,2020,'EN','FT','Big Data Engineer','70000','USD',70000,'US',100,'US','L'),
    (32,2020,'SE','FT','Data Scientist','60000','EUR',68428,'GR',100,'US','L'),
    (33,2020,'MI','FT','Research Scientist','450000','USD',450000,'US',0,'US','M'),
    (34,2020,'MI','FT','Data Analyst','41000','EUR',46759,'FR',50,'FR','L'),
    (35,2020,'MI','FT','Data Engineer','65000','EUR',74130,'AT',50,'AT','L'),
    (36,2020,'MI','FT','Data Science Consultant','103000','USD',103000,'US',100,'US','L'),
    (37,2020,'EN','FT','Machine Learning Engineer','250000','USD',250000,'US',50,'US','L'),
    (38,2020,'EN','FT','Data Analyst','10000','USD',10000,'NG',100,'NG','S'),
    (39,2020,'EN','FT','Machine Learning Engineer','138000','USD',138000,'US',100,'US','S'),
    (40,2020,'MI','FT','Data Scientist','45760','USD',45760,'PH',100,'US','S'),
    (41,2020,'EX','FT','Data Engineering Manager','70000','EUR',79833,'ES',50,'ES','L'),
    (42,2020,'MI','FT','Machine Learning Infrastructure Engineer','44000','EUR',50180,'PT',0,'PT','M'),
    (43,2020,'MI','FT','Data Engineer','106000','USD',106000,'US',100,'US','L'),
    (44,2020,'MI','FT','Data Engineer','88000','GBP',112872,'GB',50,'GB','L'),
    (45,2020,'EN','PT','ML Engineer','14000','EUR',15966,'DE',100,'DE','S'),
    (46,2020,'MI','FT','Data Scientist','60000','GBP',76958,'GB',100,'GB','S'),
    (47,2020,'SE','FT','Data Engineer','188000','USD',188000,'US',100,'US','L'),
    (48,2020,'MI','FT','Data Scientist','105000','USD',105000,'US',100,'US','L'),
    (49,2020,'MI','FT','Data Engineer','61500','EUR',70139,'FR',50,'FR','L'),
    (50,2020,'EN','FT','Data Analyst','450000','INR',6072,'IN',0,'IN','S'),
    (51,2020,'EN','FT','Data Analyst','91000','USD',91000,'US',100,'US','L'),
    (52,2020,'EN','FT','AI Scientist','300000','DKK',45896,'DK',50,'DK','S'),
    (53,2020,'EN','FT','Data Engineer','48000','EUR',54742,'PK',100,'DE','L'),
    (54,2020,'SE','FL','Computer Vision Engineer','60000','USD',60000,'RU',100,'US','S'),
    (55,2020,'SE','FT','Principal Data Scientist','130000','EUR',148261,'DE',100,'DE','M'),
    (56,2020,'MI','FT','Data Scientist','34000','EUR',38776,'ES',100,'ES','M'),
    (57,2020,'MI','FT','Data Scientist','118000','USD',118000,'US',100,'US','M'),
    (58,2020,'SE','FT','Data Scientist','120000','USD',120000,'US',50,'US','L'),
    (59,2020,'MI','FT','Data Scientist','138350','USD',138350,'US',100,'US','M'),
    (60,2020,'MI','FT','Data Engineer','110000','USD',110000,'US',100,'US','L'),
    (61,2020,'MI','FT','Data Engineer','130800','USD',130800,'ES',100,'US','M'),
    (62,2020,'EN','PT','Data Scientist','19000','EUR',21669,'IT',50,'IT','S'),
    (63,2020,'SE','FT','Data Scientist','412000','USD',412000,'US',100,'US','L'),
    (64,2020,'SE','FT','Machine Learning Engineer','40000','EUR',45618,'HR',100,'HR','S'),
    (65,2020,'EN','FT','Data Scientist','55000','EUR',62726,'DE',50,'DE','S'),
    (66,2020,'EN','FT','Data Scientist','43200','EUR',49268,'DE',0,'DE','S'),
    (67,2020,'SE','FT','Data Science Manager','190200','USD',190200,'US',100,'US','M'),
    (68,2020,'EN','FT','Data Scientist','105000','USD',105000,'US',100,'US','S'),
    (69,2020,'SE','FT','Data Scientist','80000','EUR',91237,'AT',0,'AT','S'),
    (70,2020,'MI','FT','Data Scientist','55000','EUR',62726,'FR',50,'LU','S'),
    (71,2020,'MI','FT','Data Scientist','37000','EUR',42197,'FR',50,'FR','S'),
    (72,2021,'EN','FT','Research Scientist','60000','GBP',82528,'GB',50,'GB','L'),
    (73,2021,'EX','FT','BI Data Analyst','150000','USD',150000,'IN',100,'US','L'),
    (74,2021,'EX','FT','Head of Data','235000','USD',235000,'US',100,'US','L'),
    (75,2021,'SE','FT','Data Scientist','45000','EUR',53192,'FR',50,'FR','L'),
    (76,2021,'MI','FT','BI Data Analyst','100000','USD',100000,'US',100,'US','M'),
    (77,2021,'MI','PT','3D Computer Vision Researcher','400000','INR',5409,'IN',50,'IN','M'),
    (78,2021,'MI','CT','ML Engineer','270000','USD',270000,'US',100,'US','L'),
    (79,2021,'EN','FT','Data Analyst','80000','USD',80000,'US',100,'US','M'),
    (80,2021,'SE','FT','Data Analytics Engineer','67000','EUR',79197,'DE',100,'DE','L'),
    (81,2021,'MI','FT','Data Engineer','140000','USD',140000,'US',100,'US','L'),
    (82,2021,'MI','FT','Applied Data Scientist','68000','CAD',54238,'GB',50,'CA','L'),
    (83,2021,'MI','FT','Machine Learning Engineer','40000','EUR',47282,'ES',100,'ES','S'),
    (84,2021,'EX','FT','Director of Data Science','130000','EUR',153667,'IT',100,'PL','L'),
    (85,2021,'MI','FT','Data Engineer','110000','PLN',28476,'PL',100,'PL','L'),
    (86,2021,'EN','FT','Data Analyst','50000','EUR',59102,'FR',50,'FR','M'),
    (87,2021,'MI','FT','Data Analytics Engineer','110000','USD',110000,'US',100,'US','L'),
    (88,2021,'SE','FT','Lead Data Analyst','170000','USD',170000,'US',100,'US','L'),
    (89,2021,'SE','FT','Data Analyst','80000','USD',80000,'BG',100,'US','S'),
    (90,2021,'SE','FT','Marketing Data Analyst','75000','EUR',88654,'GR',100,'DK','L'),
    (91,2021,'EN','FT','Data Science Consultant','65000','EUR',76833,'DE',100,'DE','S'),
    (92,2021,'MI','FT','Lead Data Analyst','1450000','INR',19609,'IN',100,'IN','L'),
    (93,2021,'SE','FT','Lead Data Engineer','276000','USD',276000,'US',0,'US','L'),
    (94,2021,'EN','FT','Data Scientist','2200000','INR',29751,'IN',50,'IN','L'),
    (95,2021,'MI','FT','Cloud Data Engineer','120000','SGD',89294,'SG',50,'SG','L'),
    (96,2021,'EN','PT','AI Scientist','12000','USD',12000,'BR',100,'US','S'),
    (97,2021,'MI','FT','Financial Data Analyst','450000','USD',450000,'US',100,'US','L'),
    (98,2021,'EN','FT','Computer Vision Software Engineer','70000','USD',70000,'US',100,'US','M'),
    (99,2021,'MI','FT','Computer Vision Software Engineer','81000','EUR',95746,'DE',100,'US','S'),
    (100,2021,'MI','FT','Data Analyst','75000','USD',75000,'US',0,'US','L'),
    (101,2021,'SE','FT','Data Engineer','150000','USD',150000,'US',100,'US','L'),
    (102,2021,'MI','FT','BI Data Analyst','11000000','HUF',36259,'HU',50,'US','L'),
    (103,2021,'MI','FT','Data Analyst','62000','USD',62000,'US',0,'US','L'),
    (104,2021,'MI','FT','Data Scientist','73000','USD',73000,'US',0,'US','L'),
    (105,2021,'MI','FT','Data Analyst','37456','GBP',51519,'GB',50,'GB','L'),
    (106,2021,'MI','FT','Research Scientist','235000','CAD',187442,'CA',100,'CA','L'),
    (107,2021,'SE','FT','Data Engineer','115000','USD',115000,'US',100,'US','S'),
    (108,2021,'SE','FT','Data Engineer','150000','USD',150000,'US',100,'US','M'),
    (109,2021,'EN','FT','Data Engineer','2250000','INR',30428,'IN',100,'IN','L'),
    (110,2021,'SE','FT','Machine Learning Engineer','80000','EUR',94564,'DE',50,'DE','L'),
    (111,2021,'SE','FT','Director of Data Engineering','82500','GBP',113476,'GB',100,'GB','M'),
    (112,2021,'SE','FT','Lead Data Engineer','75000','GBP',103160,'GB',100,'GB','S'),
    (113,2021,'EN','PT','AI Scientist','12000','USD',12000,'PK',100,'US','M'),
    (114,2021,'MI','FT','Data Engineer','38400','EUR',45391,'NL',100,'NL','L'),
    (115,2021,'EN','FT','Machine Learning Scientist','225000','USD',225000,'US',100,'US','L'),
    (116,2021,'MI','FT','Data Scientist','50000','USD',50000,'NG',100,'NG','L'),
    (117,2021,'MI','FT','Data Science Engineer','34000','EUR',40189,'GR',100,'GR','M'),
    (118,2021,'EN','FT','Data Analyst','90000','USD',90000,'US',100,'US','S'),
    (119,2021,'MI','FT','Data Engineer','200000','USD',200000,'US',100,'US','L'),
    (120,2021,'MI','FT','Big Data Engineer','60000','USD',60000,'ES',50,'RO','M'),
    (121,2021,'SE','FT','Principal Data Engineer','200000','USD',200000,'US',100,'US','M'),
    (122,2021,'EN','FT','Data Analyst','50000','USD',50000,'US',100,'US','M'),
    (123,2021,'EN','FT','Applied Data Scientist','80000','GBP',110037,'GB',0,'GB','L'),
    (124,2021,'EN','PT','Data Analyst','8760','EUR',10354,'ES',50,'ES','M'),
    (125,2021,'MI','FT','Principal Data Scientist','151000','USD',151000,'US',100,'US','L'),
    (126,2021,'SE','FT','Machine Learning Scientist','120000','USD',120000,'US',50,'US','S'),
    (127,2021,'MI','FT','Data Scientist','700000','INR',9466,'IN',0,'IN','S'),
    (128,2021,'EN','FT','Machine Learning Engineer','20000','USD',20000,'IN',100,'IN','S'),
    (129,2021,'SE','FT','Lead Data Scientist','3000000','INR',40570,'IN',50,'IN','L'),
    (130,2021,'EN','FT','Machine Learning Developer','100000','USD',100000,'IQ',50,'IQ','S'),
    (131,2021,'EN','FT','Data Scientist','42000','EUR',49646,'FR',50,'FR','M'),
    (132,2021,'MI','FT','Applied Machine Learning Scientist','38400','USD',38400,'VN',100,'US','M'),
    (133,2021,'SE','FT','Computer Vision Engineer','24000','USD',24000,'BR',100,'BR','M'),
    (134,2021,'EN','FT','Data Scientist','100000','USD',100000,'US',0,'US','S'),
    (135,2021,'MI','FT','Data Analyst','90000','USD',90000,'US',100,'US','M'),
    (136,2021,'MI','FT','ML Engineer','7000000','JPY',63711,'JP',50,'JP','S'),
    (137,2021,'MI','FT','ML Engineer','8500000','JPY',77364,'JP',50,'JP','S'),
    (138,2021,'SE','FT','Principal Data Scientist','220000','USD',220000,'US',0,'US','L'),
    (139,2021,'EN','FT','Data Scientist','80000','USD',80000,'US',100,'US','M'),
    (140,2021,'MI','FT','Data Analyst','135000','USD',135000,'US',100,'US','L'),
    (141,2021,'SE','FT','Data Science Manager','240000','USD',240000,'US',0,'US','L'),
    (142,2021,'SE','FT','Data Engineering Manager','150000','USD',150000,'US',0,'US','L'),
    (143,2021,'MI','FT','Data Scientist','82500','USD',82500,'US',100,'US','S'),
    (144,2021,'MI','FT','Data Engineer','100000','USD',100000,'US',100,'US','L'),
    (145,2021,'SE','FT','Machine Learning Engineer','70000','EUR',82744,'BE',50,'BE','M'),
    (146,2021,'MI','FT','Research Scientist','53000','EUR',62649,'FR',50,'FR','M'),
    (147,2021,'MI','FT','Data Engineer','90000','USD',90000,'US',100,'US','L'),
    (148,2021,'SE','FT','Data Engineering Manager','153000','USD',153000,'US',100,'US','L'),
    (149,2021,'SE','FT','Cloud Data Engineer','160000','USD',160000,'BR',100,'US','S'),
    (150,2021,'SE','FT','Director of Data Science','168000','USD',168000,'JP',0,'JP','S'),
    (151,2021,'MI','FT','Data Scientist','150000','USD',150000,'US',100,'US','M'),
    (152,2021,'MI','FT','Data Scientist','95000','CAD',75774,'CA',100,'CA','L'),
    (153,2021,'EN','FT','Data Scientist','13400','USD',13400,'UA',100,'UA','L'),
    (154,2021,'SE','FT','Data Science Manager','144000','USD',144000,'US',100,'US','L'),
    (155,2021,'SE','FT','Data Science Engineer','159500','CAD',127221,'CA',50,'CA','L'),
    (156,2021,'MI','FT','Data Scientist','160000','SGD',119059,'SG',100,'IL','M'),
    (157,2021,'MI','FT','Applied Machine Learning Scientist','423000','USD',423000,'US',50,'US','L'),
    (158,2021,'SE','FT','Data Analytics Manager','120000','USD',120000,'US',100,'US','M'),
    (159,2021,'EN','FT','Machine Learning Engineer','125000','USD',125000,'US',100,'US','S'),
    (160,2021,'EX','FT','Head of Data','230000','USD',230000,'RU',50,'RU','L'),
    (161,2021,'EX','FT','Head of Data Science','85000','USD',85000,'RU',0,'RU','M'),
    (162,2021,'MI','FT','Data Engineer','24000','EUR',28369,'MT',50,'MT','L'),
    (163,2021,'EN','FT','Data Science Consultant','54000','EUR',63831,'DE',50,'DE','L'),
    (164,2021,'EX','FT','Director of Data Science','110000','EUR',130026,'DE',50,'DE','M'),
    (165,2021,'SE','FT','Data Specialist','165000','USD',165000,'US',100,'US','L'),
    (166,2021,'EN','FT','Data Engineer','80000','USD',80000,'US',100,'US','L'),
    (167,2021,'EX','FT','Director of Data Science','250000','USD',250000,'US',0,'US','L'),
    (168,2021,'EN','FT','BI Data Analyst','55000','USD',55000,'US',50,'US','S'),
    (169,2021,'MI','FT','Data Architect','150000','USD',150000,'US',100,'US','L'),
    (170,2021,'MI','FT','Data Architect','170000','USD',170000,'US',100,'US','L'),
    (171,2021,'MI','FT','Data Engineer','60000','GBP',82528,'GB',100,'GB','L'),
    (172,2021,'EN','FT','Data Analyst','60000','USD',60000,'US',100,'US','S'),
    (173,2021,'SE','FT','Principal Data Scientist','235000','USD',235000,'US',100,'US','L'),
    (174,2021,'SE','FT','Research Scientist','51400','EUR',60757,'PT',50,'PT','L'),
    (175,2021,'SE','FT','Data Engineering Manager','174000','USD',174000,'US',100,'US','L'),
    (176,2021,'MI','FT','Data Scientist','58000','MXN',2859,'MX',0,'MX','S'),
    (177,2021,'MI','FT','Data Scientist','30400000','CLP',40038,'CL',100,'CL','L'),
    (178,2021,'EN','FT','Machine Learning Engineer','81000','USD',81000,'US',50,'US','S'),
    (179,2021,'MI','FT','Data Scientist','420000','INR',5679,'IN',100,'US','S'),
    (180,2021,'MI','FT','Big Data Engineer','1672000','INR',22611,'IN',0,'IN','L'),
    (181,2021,'MI','FT','Data Scientist','76760','EUR',90734,'DE',50,'DE','L'),
    (182,2021,'MI','FT','Data Engineer','22000','EUR',26005,'RO',0,'US','L'),
    (183,2021,'SE','FT','Finance Data Analyst','45000','GBP',61896,'GB',50,'GB','L'),
    (184,2021,'MI','FL','Machine Learning Scientist','12000','USD',12000,'PK',50,'PK','M'),
    (185,2021,'MI','FT','Data Engineer','4000','USD',4000,'IR',100,'IR','M'),
    (186,2021,'SE','FT','Data Analytics Engineer','50000','USD',50000,'VN',100,'GB','M'),
    (187,2021,'EX','FT','Data Science Consultant','59000','EUR',69741,'FR',100,'ES','S'),
    (188,2021,'SE','FT','Data Engineer','65000','EUR',76833,'RO',50,'GB','S'),
    (189,2021,'MI','FT','Machine Learning Engineer','74000','USD',74000,'JP',50,'JP','S'),
    (190,2021,'SE','FT','Data Science Manager','152000','USD',152000,'US',100,'FR','L'),
    (191,2021,'EN','FT','Machine Learning Engineer','21844','USD',21844,'CO',50,'CO','M'),
    (192,2021,'MI','FT','Big Data Engineer','18000','USD',18000,'MD',0,'MD','S'),
    (193,2021,'SE','FT','Data Science Manager','174000','USD',174000,'US',100,'US','L'),
    (194,2021,'SE','FT','Research Scientist','120500','CAD',96113,'CA',50,'CA','L'),
    (195,2021,'MI','FT','Data Scientist','147000','USD',147000,'US',50,'US','L'),
    (196,2021,'EN','FT','BI Data Analyst','9272','USD',9272,'KE',100,'KE','S'),
    (197,2021,'SE','FT','Machine Learning Engineer','1799997','INR',24342,'IN',100,'IN','L'),
    (198,2021,'SE','FT','Data Science Manager','4000000','INR',54094,'IN',50,'US','L'),
    (199,2021,'EN','FT','Data Science Consultant','90000','USD',90000,'US',100,'US','S'),
    (200,2021,'MI','FT','Data Scientist','52000','EUR',61467,'DE',50,'AT','M'),
    (201,2021,'SE','FT','Machine Learning Infrastructure Engineer','195000','USD',195000,'US',100,'US','M'),
    (202,2021,'MI','FT','Data Scientist','32000','EUR',37825,'ES',100,'ES','L'),
    (203,2021,'SE','FT','Research Scientist','50000','USD',50000,'FR',100,'US','S'),
    (204,2021,'MI','FT','Data Scientist','160000','USD',160000,'US',100,'US','L'),
    (205,2021,'MI','FT','Data Scientist','69600','BRL',12901,'BR',0,'BR','S'),
    (206,2021,'SE','FT','Machine Learning Engineer','200000','USD',200000,'US',100,'US','L'),
    (207,2021,'SE','FT','Data Engineer','165000','USD',165000,'US',0,'US','M'),
    (208,2021,'MI','FL','Data Engineer','20000','USD',20000,'IT',0,'US','L'),
    (209,2021,'SE','FT','Data Analytics Manager','120000','USD',120000,'US',0,'US','L'),
    (210,2021,'MI','FT','Machine Learning Engineer','21000','EUR',24823,'SI',50,'SI','L'),
    (211,2021,'MI','FT','Research Scientist','48000','EUR',56738,'FR',50,'FR','S'),
    (212,2021,'MI','FT','Data Engineer','48000','GBP',66022,'HK',50,'GB','S'),
    (213,2021,'EN','FT','Big Data Engineer','435000','INR',5882,'IN',0,'CH','L'),
    (214,2021,'EN','FT','Machine Learning Engineer','21000','EUR',24823,'DE',50,'DE','M'),
    (215,2021,'SE','FT','Principal Data Engineer','185000','USD',185000,'US',100,'US','L'),
    (216,2021,'EN','PT','Computer Vision Engineer','180000','DKK',28609,'DK',50,'DK','S'),
    (217,2021,'MI','FT','Data Scientist','76760','EUR',90734,'DE',50,'DE','L'),
    (218,2021,'MI','FT','Machine Learning Engineer','75000','EUR',88654,'BE',100,'BE','M'),
    (219,2021,'SE','FT','Data Analytics Manager','140000','USD',140000,'US',100,'US','L'),
    (220,2021,'MI','FT','Machine Learning Engineer','180000','PLN',46597,'PL',100,'PL','L'),
    (221,2021,'MI','FT','Data Scientist','85000','GBP',116914,'GB',50,'GB','L'),
    (222,2021,'MI','FT','Data Scientist','2500000','INR',33808,'IN',0,'IN','M'),
    (223,2021,'MI','FT','Data Scientist','40900','GBP',56256,'GB',50,'GB','L'),
    (224,2021,'SE','FT','Machine Learning Scientist','225000','USD',225000,'US',100,'CA','L'),
    (225,2021,'EX','CT','Principal Data Scientist','416000','USD',416000,'US',100,'US','S'),
    (226,2021,'SE','FT','Data Scientist','110000','CAD',87738,'CA',100,'CA','S'),
    (227,2021,'MI','FT','Data Scientist','75000','EUR',88654,'DE',50,'DE','L'),
    (228,2021,'SE','FT','Data Scientist','135000','USD',135000,'US',0,'US','L'),
    (229,2021,'SE','FT','Data Analyst','90000','CAD',71786,'CA',100,'CA','M'),
    (230,2021,'EN','FT','Big Data Engineer','1200000','INR',16228,'IN',100,'IN','L'),
    (231,2021,'SE','FT','ML Engineer','256000','USD',256000,'US',100,'US','S'),
    (232,2021,'SE','FT','Director of Data Engineering','200000','USD',200000,'US',100,'US','L'),
    (233,2021,'SE','FT','Data Analyst','200000','USD',200000,'US',100,'US','L'),
    (234,2021,'MI','FT','Data Architect','180000','USD',180000,'US',100,'US','L'),
    (235,2021,'MI','FT','Head of Data Science','110000','USD',110000,'US',0,'US','S'),
    (236,2021,'MI','FT','Research Scientist','80000','CAD',63810,'CA',100,'CA','M'),
    (237,2021,'MI','FT','Data Scientist','39600','EUR',46809,'ES',100,'ES','M'),
    (238,2021,'EN','FT','Data Scientist','4000','USD',4000,'VN',0,'VN','M'),
    (239,2021,'EN','FT','Data Engineer','1600000','INR',21637,'IN',50,'IN','M'),
    (240,2021,'SE','FT','Data Scientist','130000','CAD',103691,'CA',100,'CA','L'),
    (241,2021,'MI','FT','Data Analyst','80000','USD',80000,'US',100,'US','L'),
    (242,2021,'MI','FT','Data Engineer','110000','USD',110000,'US',100,'US','L'),
    (243,2021,'SE','FT','Data Scientist','165000','USD',165000,'US',100,'US','L'),
    (244,2021,'EN','FT','AI Scientist','1335000','INR',18053,'IN',100,'AS','S'),
    (245,2021,'MI','FT','Data Engineer','52500','GBP',72212,'GB',50,'GB','L'),
    (246,2021,'EN','FT','Data Scientist','31000','EUR',36643,'FR',50,'FR','L'),
    (247,2021,'MI','FT','Data Engineer','108000','TRY',12103,'TR',0,'TR','M'),
    (248,2021,'SE','FT','Data Engineer','70000','GBP',96282,'GB',50,'GB','L'),
    (249,2021,'SE','FT','Principal Data Analyst','170000','USD',170000,'US',100,'US','M'),
    (250,2021,'MI','FT','Data Scientist','115000','USD',115000,'US',50,'US','L'),
    (251,2021,'EN','FT','Data Scientist','90000','USD',90000,'US',100,'US','S'),
    (252,2021,'EX','FT','Principal Data Engineer','600000','USD',600000,'US',100,'US','L'),
    (253,2021,'EN','FT','Data Scientist','2100000','INR',28399,'IN',100,'IN','M'),
    (254,2021,'MI','FT','Data Analyst','93000','USD',93000,'US',100,'US','L'),
    (255,2021,'SE','FT','Big Data Architect','125000','CAD',99703,'CA',50,'CA','M'),
    (256,2021,'MI','FT','Data Engineer','200000','USD',200000,'US',100,'US','L'),
    (257,2021,'SE','FT','Principal Data Scientist','147000','EUR',173762,'DE',100,'DE','M'),
    (258,2021,'SE','FT','Machine Learning Engineer','185000','USD',185000,'US',50,'US','L'),
    (259,2021,'EX','FT','Director of Data Science','120000','EUR',141846,'DE',0,'DE','L'),
    (260,2021,'MI','FT','Data Scientist','130000','USD',130000,'US',50,'US','L'),
    (261,2021,'SE','FT','Data Analyst','54000','EUR',63831,'DE',50,'DE','L'),
    (262,2021,'MI','FT','Data Scientist','1250000','INR',16904,'IN',100,'IN','S'),
    (263,2021,'SE','FT','Machine Learning Engineer','4900000','INR',66265,'IN',0,'IN','L'),
    (264,2021,'MI','FT','Data Scientist','21600','EUR',25532,'RS',100,'DE','S'),
    (265,2021,'SE','FT','Lead Data Engineer','160000','USD',160000,'PR',50,'US','S'),
    (266,2021,'MI','FT','Data Engineer','93150','USD',93150,'US',0,'US','M'),
    (267,2021,'MI','FT','Data Engineer','111775','USD',111775,'US',0,'US','M'),
    (268,2021,'MI','FT','Data Engineer','250000','TRY',28016,'TR',100,'TR','M'),
    (269,2021,'EN','FT','Data Engineer','55000','EUR',65013,'DE',50,'DE','M'),
    (270,2021,'EN','FT','Data Engineer','72500','USD',72500,'US',100,'US','L'),
    (271,2021,'SE','FT','Computer Vision Engineer','102000','BRL',18907,'BR',0,'BR','M'),
    (272,2021,'EN','FT','Data Science Consultant','65000','EUR',76833,'DE',0,'DE','L'),
    (273,2021,'EN','FT','Machine Learning Engineer','85000','USD',85000,'NL',100,'DE','S'),
    (274,2021,'SE','FT','Data Scientist','65720','EUR',77684,'FR',50,'FR','M'),
    (275,2021,'EN','FT','Data Scientist','100000','USD',100000,'US',100,'US','M'),
    (276,2021,'EN','FT','Data Scientist','58000','USD',58000,'US',50,'US','L'),
    (277,2021,'SE','FT','AI Scientist','55000','USD',55000,'ES',100,'ES','L'),
    (278,2021,'SE','FT','Data Scientist','180000','TRY',20171,'TR',50,'TR','L'),
    (279,2021,'EN','FT','Business Data Analyst','50000','EUR',59102,'LU',100,'LU','L'),
    (280,2021,'MI','FT','Data Engineer','112000','USD',112000,'US',100,'US','L'),
    (281,2021,'EN','FT','Research Scientist','100000','USD',100000,'JE',0,'CN','L'),
    (282,2021,'MI','PT','Data Engineer','59000','EUR',69741,'NL',100,'NL','L'),
    (283,2021,'SE','CT','Staff Data Scientist','105000','USD',105000,'US',100,'US','M'),
    (284,2021,'MI','FT','Research Scientist','69999','USD',69999,'CZ',50,'CZ','L'),
    (285,2021,'SE','FT','Data Science Manager','7000000','INR',94665,'IN',50,'IN','L'),
    (286,2021,'SE','FT','Head of Data','87000','EUR',102839,'SI',100,'SI','L'),
    (287,2021,'MI','FT','Data Scientist','109000','USD',109000,'US',50,'US','L'),
    (288,2021,'MI','FT','Machine Learning Engineer','43200','EUR',51064,'IT',50,'IT','L'),
    (289,2022,'SE','FT','Data Engineer','135000','USD',135000,'US',100,'US','M'),
    (290,2022,'SE','FT','Data Analyst','155000','USD',155000,'US',100,'US','M'),
    (291,2022,'SE','FT','Data Analyst','120600','USD',120600,'US',100,'US','M'),
    (292,2022,'MI','FT','Data Scientist','130000','USD',130000,'US',0,'US','M'),
    (293,2022,'MI','FT','Data Scientist','90000','USD',90000,'US',0,'US','M'),
    (294,2022,'MI','FT','Data Engineer','170000','USD',170000,'US',100,'US','M'),
    (295,2022,'MI','FT','Data Engineer','150000','USD',150000,'US',100,'US','M'),
    (296,2022,'SE','FT','Data Analyst','102100','USD',102100,'US',100,'US','M'),
    (297,2022,'SE','FT','Data Analyst','84900','USD',84900,'US',100,'US','M'),
    (298,2022,'SE','FT','Data Scientist','136620','USD',136620,'US',100,'US','M'),
    (299,2022,'SE','FT','Data Scientist','99360','USD',99360,'US',100,'US','M'),
    (300,2022,'SE','FT','Data Scientist','90000','GBP',117789,'GB',0,'GB','M'),
    (301,2022,'SE','FT','Data Scientist','80000','GBP',104702,'GB',0,'GB','M'),
    (302,2022,'SE','FT','Data Scientist','146000','USD',146000,'US',100,'US','M'),
    (303,2022,'SE','FT','Data Scientist','123000','USD',123000,'US',100,'US','M'),
    (304,2022,'EN','FT','Data Engineer','40000','GBP',52351,'GB',100,'GB','M'),
    (305,2022,'SE','FT','Data Analyst','99000','USD',99000,'US',0,'US','M'),
    (306,2022,'SE','FT','Data Analyst','116000','USD',116000,'US',0,'US','M'),
    (307,2022,'MI','FT','Data Analyst','106260','USD',106260,'US',0,'US','M'),
    (308,2022,'MI','FT','Data Analyst','126500','USD',126500,'US',0,'US','M'),
    (309,2022,'EX','FT','Data Engineer','242000','USD',242000,'US',100,'US','M'),
    (310,2022,'EX','FT','Data Engineer','200000','USD',200000,'US',100,'US','M'),
    (311,2022,'MI','FT','Data Scientist','50000','GBP',65438,'GB',0,'GB','M'),
    (312,2022,'MI','FT','Data Scientist','30000','GBP',39263,'GB',0,'GB','M'),
    (313,2022,'MI','FT','Data Engineer','60000','GBP',78526,'GB',0,'GB','M'),
    (314,2022,'MI','FT','Data Engineer','40000','GBP',52351,'GB',0,'GB','M'),
    (315,2022,'SE','FT','Data Scientist','165220','USD',165220,'US',100,'US','M'),
    (316,2022,'EN','FT','Data Engineer','35000','GBP',45807,'GB',100,'GB','M'),
    (317,2022,'SE','FT','Data Scientist','120160','USD',120160,'US',100,'US','M'),
    (318,2022,'SE','FT','Data Analyst','90320','USD',90320,'US',100,'US','M'),
    (319,2022,'SE','FT','Data Engineer','181940','USD',181940,'US',0,'US','M'),
    (320,2022,'SE','FT','Data Engineer','132320','USD',132320,'US',0,'US','M'),
    (321,2022,'SE','FT','Data Engineer','220110','USD',220110,'US',0,'US','M'),
    (322,2022,'SE','FT','Data Engineer','160080','USD',160080,'US',0,'US','M'),
    (323,2022,'SE','FT','Data Scientist','180000','USD',180000,'US',0,'US','L'),
    (324,2022,'SE','FT','Data Scientist','120000','USD',120000,'US',0,'US','L'),
    (325,2022,'SE','FT','Data Analyst','124190','USD',124190,'US',100,'US','M'),
    (326,2022,'EX','FT','Data Analyst','130000','USD',130000,'US',100,'US','M'),
    (327,2022,'EX','FT','Data Analyst','110000','USD',110000,'US',100,'US','M'),
    (328,2022,'SE','FT','Data Analyst','170000','USD',170000,'US',100,'US','M'),
    (329,2022,'MI','FT','Data Analyst','115500','USD',115500,'US',100,'US','M'),
    (330,2022,'SE','FT','Data Analyst','112900','USD',112900,'US',100,'US','M'),
    (331,2022,'SE','FT','Data Analyst','90320','USD',90320,'US',100,'US','M'),
    (332,2022,'SE','FT','Data Analyst','112900','USD',112900,'US',100,'US','M'),
    (333,2022,'SE','FT','Data Analyst','90320','USD',90320,'US',100,'US','M'),
    (334,2022,'SE','FT','Data Engineer','165400','USD',165400,'US',100,'US','M'),
    (335,2022,'SE','FT','Data Engineer','132320','USD',132320,'US',100,'US','M'),
    (336,2022,'MI','FT','Data Analyst','167000','USD',167000,'US',100,'US','M'),
    (337,2022,'SE','FT','Data Engineer','243900','USD',243900,'US',100,'US','M'),
    (338,2022,'SE','FT','Data Analyst','136600','USD',136600,'US',100,'US','M'),
    (339,2022,'SE','FT','Data Analyst','109280','USD',109280,'US',100,'US','M'),
    (340,2022,'SE','FT','Data Engineer','128875','USD',128875,'US',100,'US','M'),
    (341,2022,'SE','FT','Data Engineer','93700','USD',93700,'US',100,'US','M'),
    (342,2022,'EX','FT','Head of Data Science','224000','USD',224000,'US',100,'US','M'),
    (343,2022,'EX','FT','Head of Data Science','167875','USD',167875,'US',100,'US','M'),
    (344,2022,'EX','FT','Analytics Engineer','175000','USD',175000,'US',100,'US','M'),
    (345,2022,'SE','FT','Data Engineer','156600','USD',156600,'US',100,'US','M'),
    (346,2022,'SE','FT','Data Engineer','108800','USD',108800,'US',0,'US','M'),
    (347,2022,'SE','FT','Data Scientist','95550','USD',95550,'US',0,'US','M'),
    (348,2022,'SE','FT','Data Engineer','113000','USD',113000,'US',0,'US','L'),
    (349,2022,'SE','FT','Data Analyst','135000','USD',135000,'US',100,'US','M'),
    (350,2022,'SE','FT','Data Science Manager','161342','USD',161342,'US',100,'US','M'),
    (351,2022,'SE','FT','Data Science Manager','137141','USD',137141,'US',100,'US','M'),
    (352,2022,'SE','FT','Data Scientist','167000','USD',167000,'US',100,'US','M'),
    (353,2022,'SE','FT','Data Scientist','123000','USD',123000,'US',100,'US','M'),
    (354,2022,'SE','FT','Data Engineer','60000','GBP',78526,'GB',0,'GB','M'),
    (355,2022,'SE','FT','Data Engineer','50000','GBP',65438,'GB',0,'GB','M'),
    (356,2022,'SE','FT','Data Scientist','150000','USD',150000,'US',0,'US','M'),
    (357,2022,'SE','FT','Data Scientist','211500','USD',211500,'US',100,'US','M'),
    (358,2022,'SE','FT','Data Architect','192400','USD',192400,'CA',100,'CA','M'),
    (359,2022,'SE','FT','Data Architect','90700','USD',90700,'CA',100,'CA','M'),
    (360,2022,'SE','FT','Data Analyst','130000','USD',130000,'CA',100,'CA','M'),
    (361,2022,'SE','FT','Data Analyst','61300','USD',61300,'CA',100,'CA','M'),
    (362,2022,'SE','FT','Data Analyst','130000','USD',130000,'CA',100,'CA','M'),
    (363,2022,'SE','FT','Data Analyst','61300','USD',61300,'CA',100,'CA','M'),
    (364,2022,'SE','FT','Data Engineer','160000','USD',160000,'US',0,'US','L'),
    (365,2022,'SE','FT','Data Scientist','138600','USD',138600,'US',100,'US','M'),
    (366,2022,'SE','FT','Data Engineer','136000','USD',136000,'US',0,'US','M'),
    (367,2022,'MI','FT','Data Analyst','58000','USD',58000,'US',0,'US','S'),
    (368,2022,'EX','FT','Analytics Engineer','135000','USD',135000,'US',100,'US','M'),
    (369,2022,'SE','FT','Data Scientist','170000','USD',170000,'US',100,'US','M'),
    (370,2022,'SE','FT','Data Scientist','123000','USD',123000,'US',100,'US','M'),
    (371,2022,'SE','FT','Machine Learning Engineer','189650','USD',189650,'US',0,'US','M'),
    (372,2022,'SE','FT','Machine Learning Engineer','164996','USD',164996,'US',0,'US','M'),
    (373,2022,'MI','FT','ETL Developer','50000','EUR',54957,'GR',0,'GR','M'),
    (374,2022,'MI','FT','ETL Developer','50000','EUR',54957,'GR',0,'GR','M'),
    (375,2022,'EX','FT','Lead Data Engineer','150000','CAD',118187,'CA',100,'CA','S'),
    (376,2022,'SE','FT','Data Analyst','132000','USD',132000,'US',0,'US','M'),
    (377,2022,'SE','FT','Data Engineer','165400','USD',165400,'US',100,'US','M'),
    (378,2022,'SE','FT','Data Architect','208775','USD',208775,'US',100,'US','M'),
    (379,2022,'SE','FT','Data Architect','147800','USD',147800,'US',100,'US','M'),
    (380,2022,'SE','FT','Data Engineer','136994','USD',136994,'US',100,'US','M'),
    (381,2022,'SE','FT','Data Engineer','101570','USD',101570,'US',100,'US','M'),
    (382,2022,'SE','FT','Data Analyst','128875','USD',128875,'US',100,'US','M'),
    (383,2022,'SE','FT','Data Analyst','93700','USD',93700,'US',100,'US','M'),
    (384,2022,'EX','FT','Head of Machine Learning','6000000','INR',79039,'IN',50,'IN','L'),
    (385,2022,'SE','FT','Data Engineer','132320','USD',132320,'US',100,'US','M'),
    (386,2022,'EN','FT','Machine Learning Engineer','28500','GBP',37300,'GB',100,'GB','L'),
    (387,2022,'SE','FT','Data Analyst','164000','USD',164000,'US',0,'US','M'),
    (388,2022,'SE','FT','Data Engineer','155000','USD',155000,'US',100,'US','M'),
    (389,2022,'MI','FT','Machine Learning Engineer','95000','GBP',124333,'GB',0,'GB','M'),
    (390,2022,'MI','FT','Machine Learning Engineer','75000','GBP',98158,'GB',0,'GB','M'),
    (391,2022,'MI','FT','AI Scientist','120000','USD',120000,'US',0,'US','M'),
    (392,2022,'SE','FT','Data Analyst','112900','USD',112900,'US',100,'US','M'),
    (393,2022,'SE','FT','Data Analyst','90320','USD',90320,'US',100,'US','M'),
    (394,2022,'SE','FT','Data Analytics Manager','145000','USD',145000,'US',100,'US','M'),
    (395,2022,'SE','FT','Data Analytics Manager','105400','USD',105400,'US',100,'US','M'),
    (396,2022,'MI','FT','Machine Learning Engineer','80000','EUR',87932,'FR',100,'DE','M'),
    (397,2022,'MI','FT','Data Engineer','90000','GBP',117789,'GB',0,'GB','M'),
    (398,2022,'SE','FT','Data Scientist','215300','USD',215300,'US',100,'US','L'),
    (399,2022,'SE','FT','Data Scientist','158200','USD',158200,'US',100,'US','L'),
    (400,2022,'SE','FT','Data Engineer','209100','USD',209100,'US',100,'US','L'),
    (401,2022,'SE','FT','Data Engineer','154600','USD',154600,'US',100,'US','L'),
    (402,2022,'SE','FT','Data Analyst','115934','USD',115934,'US',0,'US','M'),
    (403,2022,'SE','FT','Data Analyst','81666','USD',81666,'US',0,'US','M'),
    (404,2022,'SE','FT','Data Engineer','175000','USD',175000,'US',100,'US','M'),
    (405,2022,'MI','FT','Data Engineer','75000','GBP',98158,'GB',0,'GB','M'),
    (406,2022,'MI','FT','Data Analyst','58000','USD',58000,'US',0,'US','S'),
    (407,2022,'SE','FT','Data Engineer','183600','USD',183600,'US',100,'US','L'),
    (408,2022,'MI','FT','Data Analyst','40000','GBP',52351,'GB',100,'GB','M'),
    (409,2022,'SE','FT','Data Scientist','180000','USD',180000,'US',100,'US','M'),
    (410,2022,'MI','FT','Data Scientist','55000','GBP',71982,'GB',0,'GB','M'),
    (411,2022,'MI','FT','Data Scientist','35000','GBP',45807,'GB',0,'GB','M'),
    (412,2022,'MI','FT','Data Engineer','60000','EUR',65949,'GR',100,'GR','M'),
    (413,2022,'MI','FT','Data Engineer','45000','EUR',49461,'GR',100,'GR','M'),
    (414,2022,'MI','FT','Data Engineer','60000','GBP',78526,'GB',100,'GB','M'),
    (415,2022,'MI','FT','Data Engineer','45000','GBP',58894,'GB',100,'GB','M'),
    (416,2022,'SE','FT','Data Scientist','260000','USD',260000,'US',100,'US','M'),
    (417,2022,'SE','FT','Data Science Engineer','60000','USD',60000,'AR',100,'MX','L'),
    (418,2022,'MI','FT','Data Engineer','63900','USD',63900,'US',0,'US','M'),
    (419,2022,'MI','FT','Machine Learning Scientist','160000','USD',160000,'US',100,'US','L'),
    (420,2022,'MI','FT','Machine Learning Scientist','112300','USD',112300,'US',100,'US','L'),
    (421,2022,'MI','FT','Data Science Manager','241000','USD',241000,'US',100,'US','M'),
    (422,2022,'MI','FT','Data Science Manager','159000','USD',159000,'US',100,'US','M'),
    (423,2022,'SE','FT','Data Scientist','180000','USD',180000,'US',0,'US','M'),
    (424,2022,'SE','FT','Data Scientist','80000','USD',80000,'US',0,'US','M'),
    (425,2022,'MI','FT','Data Engineer','82900','USD',82900,'US',0,'US','M'),
    (426,2022,'SE','FT','Data Engineer','100800','USD',100800,'US',100,'US','L'),
    (427,2022,'MI','FT','Data Engineer','45000','EUR',49461,'ES',100,'ES','M'),
    (428,2022,'SE','FT','Data Scientist','140400','USD',140400,'US',0,'US','L'),
    (429,2022,'MI','FT','Data Analyst','30000','GBP',39263,'GB',100,'GB','M'),
    (430,2022,'MI','FT','Data Analyst','40000','EUR',43966,'ES',100,'ES','M'),
    (431,2022,'MI','FT','Data Analyst','30000','EUR',32974,'ES',100,'ES','M'),
    (432,2022,'MI','FT','Data Engineer','80000','EUR',87932,'ES',100,'ES','M'),
    (433,2022,'MI','FT','Data Engineer','70000','EUR',76940,'ES',100,'ES','M'),
    (434,2022,'MI','FT','Data Engineer','80000','GBP',104702,'GB',100,'GB','M'),
    (435,2022,'MI','FT','Data Engineer','70000','GBP',91614,'GB',100,'GB','M'),
    (436,2022,'MI','FT','Data Engineer','60000','EUR',65949,'ES',100,'ES','M'),
    (437,2022,'MI','FT','Data Engineer','80000','EUR',87932,'GR',100,'GR','M'),
    (438,2022,'SE','FT','Machine Learning Engineer','189650','USD',189650,'US',0,'US','M'),
    (439,2022,'SE','FT','Machine Learning Engineer','164996','USD',164996,'US',0,'US','M'),
    (440,2022,'MI','FT','Data Analyst','40000','EUR',43966,'GR',100,'GR','M'),
    (441,2022,'MI','FT','Data Analyst','30000','EUR',32974,'GR',100,'GR','M'),
    (442,2022,'MI','FT','Data Engineer','75000','GBP',98158,'GB',100,'GB','M'),
    (443,2022,'MI','FT','Data Engineer','60000','GBP',78526,'GB',100,'GB','M'),
    (444,2022,'SE','FT','Data Scientist','215300','USD',215300,'US',0,'US','L'),
    (445,2022,'MI','FT','Data Engineer','70000','EUR',76940,'GR',100,'GR','M'),
    (446,2022,'SE','FT','Data Engineer','209100','USD',209100,'US',100,'US','L'),
    (447,2022,'SE','FT','Data Engineer','154600','USD',154600,'US',100,'US','L'),
    (448,2022,'SE','FT','Data Engineer','180000','USD',180000,'US',100,'US','M'),
    (449,2022,'EN','FT','ML Engineer','20000','EUR',21983,'PT',100,'PT','L'),
    (450,2022,'SE','FT','Data Engineer','80000','USD',80000,'US',100,'US','M'),
    (451,2022,'MI','FT','Machine Learning Developer','100000','CAD',78791,'CA',100,'CA','M'),
    (452,2022,'EX','FT','Director of Data Science','250000','CAD',196979,'CA',50,'CA','L'),
    (453,2022,'MI','FT','Machine Learning Engineer','120000','USD',120000,'US',100,'US','S'),
    (454,2022,'EN','FT','Computer Vision Engineer','125000','USD',125000,'US',0,'US','M'),
    (455,2022,'MI','FT','NLP Engineer','240000','CNY',37236,'US',50,'US','L'),
    (456,2022,'SE','FT','Data Engineer','105000','USD',105000,'US',100,'US','M'),
    (457,2022,'SE','FT','Lead Machine Learning Engineer','80000','EUR',87932,'DE',0,'DE','M'),
    (458,2022,'MI','FT','Business Data Analyst','1400000','INR',18442,'IN',100,'IN','M'),
    (459,2022,'MI','FT','Data Scientist','2400000','INR',31615,'IN',100,'IN','L'),
    (460,2022,'MI','FT','Machine Learning Infrastructure Engineer','53000','EUR',58255,'PT',50,'PT','L'),
    (461,2022,'EN','FT','Financial Data Analyst','100000','USD',100000,'US',50,'US','L'),
    (462,2022,'MI','PT','Data Engineer','50000','EUR',54957,'DE',50,'DE','L'),
    (463,2022,'EN','FT','Data Scientist','1400000','INR',18442,'IN',100,'IN','M'),
    (464,2022,'SE','FT','Principal Data Scientist','148000','EUR',162674,'DE',100,'DE','M'),
    (465,2022,'EN','FT','Data Engineer','120000','USD',120000,'US',100,'US','M'),
    (466,2022,'SE','FT','Research Scientist','144000','USD',144000,'US',50,'US','L'),
    (467,2022,'SE','FT','Data Scientist','104890','USD',104890,'US',100,'US','M'),
    (468,2022,'SE','FT','Data Engineer','100000','USD',100000,'US',100,'US','M'),
    (469,2022,'SE','FT','Data Scientist','140000','USD',140000,'US',100,'US','M'),
    (470,2022,'MI','FT','Data Analyst','135000','USD',135000,'US',100,'US','M'),
    (471,2022,'MI','FT','Data Analyst','50000','USD',50000,'US',100,'US','M'),
    (472,2022,'SE','FT','Data Scientist','220000','USD',220000,'US',100,'US','M'),
    (473,2022,'SE','FT','Data Scientist','140000','USD',140000,'US',100,'US','M'),
    (474,2022,'MI','FT','Data Scientist','140000','GBP',183228,'GB',0,'GB','M'),
    (475,2022,'MI','FT','Data Scientist','70000','GBP',91614,'GB',0,'GB','M'),
    (476,2022,'SE','FT','Data Scientist','185100','USD',185100,'US',100,'US','M'),
    (477,2022,'SE','FT','Machine Learning Engineer','220000','USD',220000,'US',100,'US','M'),
    (478,2022,'MI','FT','Data Scientist','200000','USD',200000,'US',100,'US','M'),
    (479,2022,'MI','FT','Data Scientist','120000','USD',120000,'US',100,'US','M'),
    (480,2022,'SE','FT','Machine Learning Engineer','120000','USD',120000,'AE',100,'AE','S'),
    (481,2022,'SE','FT','Machine Learning Engineer','65000','USD',65000,'AE',100,'AE','S'),
    (482,2022,'EX','FT','Data Engineer','324000','USD',324000,'US',100,'US','M'),
    (483,2022,'EX','FT','Data Engineer','216000','USD',216000,'US',100,'US','M'),
    (484,2022,'SE','FT','Data Engineer','210000','USD',210000,'US',100,'US','M'),
    (485,2022,'SE','FT','Machine Learning Engineer','120000','USD',120000,'US',100,'US','M'),
    (486,2022,'SE','FT','Data Scientist','230000','USD',230000,'US',100,'US','M'),
    (487,2022,'EN','PT','Data Scientist','100000','USD',100000,'DZ',50,'DZ','M'),
    (488,2022,'MI','FL','Data Scientist','100000','USD',100000,'CA',100,'US','M'),
    (489,2022,'EN','CT','Applied Machine Learning Scientist','29000','EUR',31875,'TN',100,'CZ','M'),
    (490,2022,'SE','FT','Head of Data','200000','USD',200000,'MY',100,'US','M'),
    (491,2022,'MI','FT','Principal Data Analyst','75000','USD',75000,'CA',100,'CA','S'),
    (492,2022,'MI','FT','Data Scientist','150000','PLN',35590,'PL',100,'PL','L'),
    (493,2022,'SE','FT','Machine Learning Developer','100000','CAD',78791,'CA',100,'CA','M'),
    (494,2022,'SE','FT','Data Scientist','100000','USD',100000,'BR',100,'US','M'),
    (495,2022,'MI','FT','Machine Learning Scientist','153000','USD',153000,'US',50,'US','M'),
    (496,2022,'EN','FT','Data Engineer','52800','EUR',58035,'PK',100,'DE','M'),
    (497,2022,'SE','FT','Data Scientist','165000','USD',165000,'US',100,'US','M'),
    (498,2022,'SE','FT','Research Scientist','85000','EUR',93427,'FR',50,'FR','L'),
    (499,2022,'EN','FT','Data Scientist','66500','CAD',52396,'CA',100,'CA','L'),
    (500,2022,'SE','FT','Machine Learning Engineer','57000','EUR',62651,'NL',100,'NL','L'),
    (501,2022,'MI','FT','Head of Data','30000','EUR',32974,'EE',100,'EE','S'),
    (502,2022,'EN','FT','Data Scientist','40000','USD',40000,'JP',100,'MY','L'),
    (503,2022,'MI','FT','Machine Learning Engineer','121000','AUD',87425,'AU',100,'AU','L'),
    (504,2022,'SE','FT','Data Engineer','115000','USD',115000,'US',100,'US','M'),
    (505,2022,'EN','FT','Data Scientist','120000','AUD',86703,'AU',50,'AU','M'),
    (506,2022,'MI','FT','Applied Machine Learning Scientist','75000','USD',75000,'BO',100,'US','L'),
    (507,2022,'MI','FT','Research Scientist','59000','EUR',64849,'AT',0,'AT','L'),
    (508,2022,'EN','FT','Research Scientist','120000','USD',120000,'US',100,'US','L'),
    (509,2022,'MI','FT','Applied Data Scientist','157000','USD',157000,'US',100,'US','L'),
    (510,2022,'EN','FT','Computer Vision Software Engineer','150000','USD',150000,'AU',100,'AU','S'),
    (511,2022,'MI','FT','Business Data Analyst','90000','CAD',70912,'CA',50,'CA','L'),
    (512,2022,'EN','FT','Data Engineer','65000','USD',65000,'US',100,'US','S'),
    (513,2022,'SE','FT','Machine Learning Engineer','65000','EUR',71444,'IE',100,'IE','S'),
    (514,2022,'EN','FT','Data Analytics Engineer','20000','USD',20000,'PK',0,'PK','M'),
    (515,2022,'MI','FT','Data Scientist','48000','USD',48000,'RU',100,'US','S'),
    (516,2022,'SE','FT','Data Science Manager','152500','USD',152500,'US',100,'US','M'),
    (517,2022,'MI','FT','Data Engineer','62000','EUR',68147,'FR',100,'FR','M'),
    (518,2022,'MI','FT','Data Scientist','115000','CHF',122346,'CH',0,'CH','L'),
    (519,2022,'SE','FT','Applied Data Scientist','380000','USD',380000,'US',100,'US','L'),
    (520,2022,'MI','FT','Data Scientist','88000','CAD',69336,'CA',100,'CA','M'),
    (521,2022,'EN','FT','Computer Vision Engineer','10000','USD',10000,'PT',100,'LU','M'),
    (522,2022,'MI','FT','Data Analyst','20000','USD',20000,'GR',100,'GR','S'),
    (523,2022,'SE','FT','Data Analytics Lead','405000','USD',405000,'US',100,'US','L'),
    (524,2022,'MI','FT','Data Scientist','135000','USD',135000,'US',100,'US','L'),
    (525,2022,'SE','FT','Applied Data Scientist','177000','USD',177000,'US',100,'US','L'),
    (526,2022,'MI','FT','Data Scientist','78000','USD',78000,'US',100,'US','M'),
    (527,2022,'SE','FT','Data Analyst','135000','USD',135000,'US',100,'US','M'),
    (528,2022,'SE','FT','Data Analyst','100000','USD',100000,'US',100,'US','M'),
    (529,2022,'SE','FT','Data Analyst','90320','USD',90320,'US',100,'US','M'),
    (530,2022,'MI','FT','Data Analyst','85000','USD',85000,'CA',0,'CA','M'),
    (531,2022,'MI','FT','Data Analyst','75000','USD',75000,'CA',0,'CA','M'),
    (532,2022,'SE','FT','Machine Learning Engineer','214000','USD',214000,'US',100,'US','M'),
    (533,2022,'SE','FT','Machine Learning Engineer','192600','USD',192600,'US',100,'US','M'),
    (534,2022,'SE','FT','Data Architect','266400','USD',266400,'US',100,'US','M'),
    (535,2022,'SE','FT','Data Architect','213120','USD',213120,'US',100,'US','M'),
    (536,2022,'SE','FT','Data Analyst','112900','USD',112900,'US',100,'US','M'),
    (537,2022,'SE','FT','Data Engineer','155000','USD',155000,'US',100,'US','M'),
    (538,2022,'MI','FT','Data Scientist','141300','USD',141300,'US',0,'US','M'),
    (539,2022,'MI','FT','Data Scientist','102100','USD',102100,'US',0,'US','M'),
    (540,2022,'SE','FT','Data Analyst','115934','USD',115934,'US',100,'US','M'),
    (541,2022,'SE','FT','Data Analyst','81666','USD',81666,'US',100,'US','M'),
    (542,2022,'MI','FT','Data Engineer','206699','USD',206699,'US',0,'US','M'),
    (543,2022,'MI','FT','Data Engineer','99100','USD',99100,'US',0,'US','M'),
    (544,2022,'SE','FT','Data Engineer','130000','USD',130000,'US',100,'US','M'),
    (545,2022,'SE','FT','Data Engineer','115000','USD',115000,'US',100,'US','M'),
    (546,2022,'SE','FT','Data Engineer','110500','USD',110500,'US',100,'US','M'),
    (547,2022,'SE','FT','Data Engineer','130000','USD',130000,'US',100,'US','M'),
    (548,2022,'SE','FT','Data Analyst','99050','USD',99050,'US',100,'US','M'),
    (549,2022,'SE','FT','Data Engineer','160000','USD',160000,'US',100,'US','M'),
    (550,2022,'SE','FT','Data Scientist','205300','USD',205300,'US',0,'US','L'),
    (551,2022,'SE','FT','Data Scientist','140400','USD',140400,'US',0,'US','L'),
    (552,2022,'SE','FT','Data Scientist','176000','USD',176000,'US',100,'US','M'),
    (553,2022,'SE','FT','Data Scientist','144000','USD',144000,'US',100,'US','M'),
    (554,2022,'SE','FT','Data Engineer','200100','USD',200100,'US',100,'US','M'),
    (555,2022,'SE','FT','Data Engineer','160000','USD',160000,'US',100,'US','M'),
    (556,2022,'SE','FT','Data Engineer','145000','USD',145000,'US',100,'US','M'),
    (557,2022,'SE','FT','Data Engineer','70500','USD',70500,'US',0,'US','M'),
    (558,2022,'SE','FT','Data Scientist','205300','USD',205300,'US',0,'US','M'),
    (559,2022,'SE','FT','Data Scientist','140400','USD',140400,'US',0,'US','M'),
    (560,2022,'SE','FT','Analytics Engineer','205300','USD',205300,'US',0,'US','M'),
    (561,2022,'SE','FT','Analytics Engineer','184700','USD',184700,'US',0,'US','M'),
    (562,2022,'SE','FT','Data Engineer','175100','USD',175100,'US',100,'US','M'),
    (563,2022,'SE','FT','Data Engineer','140250','USD',140250,'US',100,'US','M'),
    (564,2022,'SE','FT','Data Analyst','116150','USD',116150,'US',100,'US','M'),
    (565,2022,'SE','FT','Data Engineer','54000','USD',54000,'US',0,'US','M'),
    (566,2022,'SE','FT','Data Analyst','170000','USD',170000,'US',100,'US','M'),
    (567,2022,'MI','FT','Data Analyst','50000','GBP',65438,'GB',0,'GB','M'),
    (568,2022,'SE','FT','Data Analyst','80000','USD',80000,'US',100,'US','M'),
    (569,2022,'SE','FT','Data Scientist','140000','USD',140000,'US',100,'US','M'),
    (570,2022,'SE','FT','Data Scientist','210000','USD',210000,'US',100,'US','M'),
    (571,2022,'SE','FT','Data Scientist','140000','USD',140000,'US',100,'US','M'),
    (572,2022,'SE','FT','Data Analyst','100000','USD',100000,'US',100,'US','M'),
    (573,2022,'SE','FT','Data Analyst','69000','USD',69000,'US',100,'US','M'),
    (574,2022,'SE','FT','Data Scientist','210000','USD',210000,'US',100,'US','M'),
    (575,2022,'SE','FT','Data Scientist','140000','USD',140000,'US',100,'US','M'),
    (576,2022,'SE','FT','Data Scientist','210000','USD',210000,'US',100,'US','M'),
    (577,2022,'SE','FT','Data Analyst','150075','USD',150075,'US',100,'US','M'),
    (578,2022,'SE','FT','Data Engineer','100000','USD',100000,'US',100,'US','M'),
    (579,2022,'SE','FT','Data Engineer','25000','USD',25000,'US',100,'US','M'),
    (580,2022,'SE','FT','Data Analyst','126500','USD',126500,'US',100,'US','M'),
    (581,2022,'SE','FT','Data Analyst','106260','USD',106260,'US',100,'US','M'),
    (582,2022,'SE','FT','Data Engineer','220110','USD',220110,'US',100,'US','M'),
    (583,2022,'SE','FT','Data Engineer','160080','USD',160080,'US',100,'US','M'),
    (584,2022,'SE','FT','Data Analyst','105000','USD',105000,'US',100,'US','M'),
    (585,2022,'SE','FT','Data Analyst','110925','USD',110925,'US',100,'US','M'),
    (586,2022,'MI','FT','Data Analyst','35000','GBP',45807,'GB',0,'GB','M'),
    (587,2022,'SE','FT','Data Scientist','140000','USD',140000,'US',100,'US','M'),
    (588,2022,'SE','FT','Data Analyst','99000','USD',99000,'US',0,'US','M'),
    (589,2022,'SE','FT','Data Analyst','60000','USD',60000,'US',100,'US','M'),
    (590,2022,'SE','FT','Data Architect','192564','USD',192564,'US',100,'US','M'),
    (591,2022,'SE','FT','Data Architect','144854','USD',144854,'US',100,'US','M'),
    (592,2022,'SE','FT','Data Scientist','230000','USD',230000,'US',100,'US','M'),
    (593,2022,'SE','FT','Data Scientist','150000','USD',150000,'US',100,'US','M'),
    (594,2022,'SE','FT','Data Analytics Manager','150260','USD',150260,'US',100,'US','M'),
    (595,2022,'SE','FT','Data Analytics Manager','109280','USD',109280,'US',100,'US','M'),
    (596,2022,'SE','FT','Data Scientist','210000','USD',210000,'US',100,'US','M'),
    (597,2022,'SE','FT','Data Analyst','170000','USD',170000,'US',100,'US','M'),
    (598,2022,'MI','FT','Data Scientist','160000','USD',160000,'US',100,'US','M'),
    (599,2022,'MI','FT','Data Scientist','130000','USD',130000,'US',100,'US','M'),
    (600,2022,'EN','FT','Data Analyst','67000','USD',67000,'CA',0,'CA','M'),
    (601,2022,'EN','FT','Data Analyst','52000','USD',52000,'CA',0,'CA','M'),
    (602,2022,'SE','FT','Data Engineer','154000','USD',154000,'US',100,'US','M'),
    (603,2022,'SE','FT','Data Engineer','126000','USD',126000,'US',100,'US','M'),
    (604,2022,'SE','FT','Data Analyst','129000','USD',129000,'US',0,'US','M'),
	(605,2022,'SE','FT','Data Analyst','150000','USD',150000,'US',100,'US','M'),
    (606,2022,'MI','FT','AI Scientist','200000','USD',200000,'IN',100,'US','L');
    

-- We can see the whole data by running the below SELECT query.
SELECT 
    *
FROM
    ds_salaries;
    
-- First of all, I will change the column name "id" to "employee_id" as it is more appropriate.
alter table ds_salaries
change column info_id employee_id int;

-- As we have unnecessary values in "job_title" and "salary" columns, therefore we will delete such rows..
DELETE FROM ds_salaries 
WHERE
    job_title IN ('a' , 'b', 'c');

-- Now, our datset if ready for analysis.

-- DISCLAIMER - In the further queries, I am going to use salary_in_usd column for the salary analysis..

-- 1.Which is the highest paying job role in data science in India?
SELECT 
    job_title, SUM(salary_in_usd) AS salary_in_usd
FROM
    ds_salaries
WHERE
    company_location = 'IN'
GROUP BY job_title
ORDER BY salary_in_usd DESC
LIMIT 1; 
    
-- 2. Which country has most employed ML Engineers?
-- For that we have to add new column named company_country which will list all the countries of the respective companies, 
-- we will do that with the help of country code.

-- Adding a new column..
Alter table ds_salaries
add column company_country varchar(40);

-- Inserting values inside the company_country column using update command.
UPDATE ds_salaries 
SET 
    company_country = (CASE
        WHEN company_location = 'IN' THEN 'India'
        WHEN company_location = 'DE' THEN 'Germany'
        WHEN company_location = 'JP' THEN 'Japan'
        WHEN company_location = 'GB' THEN 'United Kingdom'
        WHEN company_location = 'HN' THEN 'Honduras'
        WHEN company_location = 'US' THEN 'USA'
        WHEN company_location = 'NZ' THEN 'New Zealand'
        WHEN company_location = 'FR' THEN 'France'
        WHEN company_location = 'CN' THEN 'China'
        WHEN company_location = 'GR' THEN 'Greece'
        WHEN company_location = 'AE' THEN 'UAE'
        WHEN company_location = 'NL' THEN 'New Zealand'
        WHEN company_location = 'MX' THEN 'Mexico'
        WHEN company_location = 'CA' THEN 'Canada'
        WHEN company_location = 'AT' THEN 'Austria'
        WHEN company_location = 'NG' THEN 'Nigeria'
        WHEN company_location = 'ES' THEN 'Spain'
        WHEN company_location = 'PT' THEN 'Portugal'
        WHEN company_location = 'DK' THEN 'Denmark'
        WHEN company_location = 'IT' THEN 'Italy'
        WHEN company_location = 'HR' THEN 'Croatia'
        WHEN company_location = 'LU' THEN 'Luxemborg'
        WHEN company_location = 'PL' THEN 'Poland'
        WHEN company_location = 'SG' THEN 'Singapore'
        WHEN company_location = 'RO' THEN 'Romania'
        WHEN company_location = 'IQ' THEN 'Iraq'
        WHEN company_location = 'BR' THEN 'Brazil'
        WHEN company_location = 'BE' THEN 'Belgium'
        WHEN company_location = 'UA' THEN 'Ukraine'
        WHEN company_location = 'IL' THEN 'Insrael'
        WHEN company_location = 'RU' THEN 'Russia'
        WHEN company_location = 'MT' THEN 'Malta'
        WHEN company_location = 'CL' THEN 'Chile'
        WHEN company_location = 'PK' THEN 'Pakistan'
        WHEN company_location = 'IR' THEN 'Iran'
        WHEN company_location = 'CO' THEN 'Columbia'
        WHEN company_location = 'MD' THEN 'Moldova'
        WHEN company_location = 'KE' THEN 'Kenya'
        WHEN company_location = 'SI' THEN 'Slovenia'
        WHEN company_location = 'CH' THEN 'Switzerland'
        WHEN company_location = 'VN' THEN 'Vietnam'
        WHEN company_location = 'AS' THEN 'American Samoa'
        WHEN company_location = 'TR' THEN 'Turkey'
        WHEN company_location = 'CZ' THEN 'Czech Republic'
        WHEN company_location = 'DZ' THEN 'Algeria'
        WHEN company_location = 'EE' THEN 'Estonia'
        WHEN company_location = 'MY' THEN 'Malaysia'
        WHEN company_location = 'AU' THEN 'Australia'
        ELSE 'Ireland'
    END);

-- As the values are filled, we are going to check which country has maximum "ML Engineers"..
SELECT 
    company_country, COUNT(job_title) AS ML_engineers
FROM
    ds_salaries
WHERE
    job_title = 'Machine Learning Engineer'
GROUP BY company_country
ORDER BY ML_engineers DESC
LIMIT 1;

-- 3. Display all those employee ids which have maximum salary in all the job titles..
SELECT 
    x.employee_id
FROM
    (SELECT 
        employee_id, job_title, MAX(salary_in_usd)
    FROM
        ds_salaries
    GROUP BY job_title) x;

-- 4. Which country has maximum remote ratio?
SELECT 
    x.company_country
FROM
    (SELECT 
        company_country, COUNT(remote_ratio)
    FROM
        ds_salaries
    WHERE
        remote_ratio = 100
    GROUP BY company_country
    ORDER BY COUNT(remote_ratio) DESC
    LIMIT 1) x;

-- 5. Display the EmployeeIds who has 2nd highest salary as a data analyst in USA.
with cte as
(select *
from ds_salaries
where job_title = 'Data Analyst'
and company_country = 'USA')

select x.employee_id
from
(select cte.*,dense_rank() over(order by salary_in_usd desc) as salary_rank
from cte) as x
where x.salary_rank = 2;

-- 6. Show % wise distribution of all the employees working in US?for eg: 20% data scientists 10%data analysts, etc.
SELECT 
    a.job_title,
    CONCAT(ROUND((COUNT(a.employee_id) / (SELECT 
                            COUNT(employee_id)
                        FROM
                            ds_salaries
                        WHERE
                            company_country = 'USA')) * 100,
                    2),
            '%') AS employee_distribution
FROM
    ds_salaries AS a
        JOIN
    ds_salaries AS b ON a.employee_id = b.employee_id
WHERE
    a.company_country = 'USA'
GROUP BY a.job_title
ORDER BY employee_distribution DESC;

-- 7. Rank all the job roles with respect to their salaries maximum to lowest (don’t skip any ranks). 
select job_title, dense_rank() over(order by sum(salary_in_usd) desc) as salary_wise_rank
from ds_salaries
group by job_title;

-- 8. Add a new column salary_in_india_rupee which will show the respective salaries in Indian Ruppee.
-- ADDING NEW COLUMN
alter table ds_salaries
add column salary_in_india_rupee int;

-- After going through this dataset again, I have realised that there are some null values in salary columns
-- therefore I am gonna delete those rows.
DELETE FROM ds_salaries 
WHERE
    salary_in_usd IS NULL OR salary IS NULL;

-- UPDATING THE VALUES
UPDATE ds_salaries 
SET 
    salary_in_india_rupee = salary_in_usd * 81.72;
    
select * from ds_salaries;

-- 9. What is the average salary of an AI Scientist working in US?
SELECT 
    AVG(salary_in_usd) AS Average_salary_in_usd
FROM
    ds_salaries
WHERE
    job_title = 'AI Scientist'
        AND company_country = 'USA';

-- 10. Show country-wise distriution of Computer Vision Engineer (more than 1) with company size.
SELECT 
    company_size, company_country, COUNT(employee_id) as total_CV_engineers
FROM
    ds_salaries
WHERE
    job_title = 'Computer Vision Engineer'
GROUP BY company_country
HAVING COUNT(employee_id) > 1



