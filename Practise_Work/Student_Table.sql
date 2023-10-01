
--------------PRACTISING CREATE,INSERT,SELECT,DROP-----------------
-----CREATE TABLE CUSTOMER, INSERT FEW ROWS IN IT THAN DROP IT-----

------------- CREATE -----------
CREATE TABLE Employee (
	Cust_Id int PRIMARY KEY,
	Cust_name varchar(50) NOT NULL,
	Cust_Age int NOT NULL,
	Cust_City char(50),
	Salary numeric
	);

----------- INSERT -------------
INSERT INTO Employee 
	(Cust_Id,Cust_name,Cust_Age,Cust_City,Salary)
	VALUES
	(1,'Anuj',25,'Indore',75000),
	(10,'Suman',27,'Khandwa',75000);

SELECT * FROM Employee;


------------ DROP , TRUNCATE -------------

DROP TABLE Employee;

TRUNCATE TABLE Employee;


--------PRACTISING CREATE TABLE, INSERT , UPDATE , WHERE, FROM, OR, AND, BETWEEN,= ,<=, >=, DELETE--------- 

---------- CREATE ---------

CREATE TABLE Customer (
	Cust_Id int PRIMARY KEY,
	Cust_name varchar(50) NOT NULL,
	Cust_Age int NOT NULL,
	Cust_City char(50),
	Salary numeric
	);


----------- INSERT ----------

INSERT INTO Customer
	(Cust_Id,Cust_name,Cust_Age,Cust_City,Salary)
	VALUES 
	(71,'Rudra',27,'Indore',85000),
	(59,'Mona',35,'Indore',150000),
	(21,'Mona',35,'Indore',150000),
	(72,'Romil',64,'khandwa',76000);

INSERT INTO Customer
	(Cust_Id,Cust_name,Cust_Age,Cust_City)
	VALUES 
	(99,'Mona',35,'Indore');

INSERT INTO Customer
	(Cust_Id,Cust_name,Cust_Age,Salary)
	VALUES 
	(89,'Rishi',51,70000),
	(53,'Ram',24,38000),
	(87,'lakshman',25,89000);

INSERT INTO Customer 
	(Cust_Id,Cust_name,Cust_Age,Cust_City,Salary)
	VALUES
	(1,'Anuj',25,'Indore',75000),
	(10,'Suman',27,'Khandwa',75000),
	(27,'Krutikesh',28,'Bangaluru',100000),
	(3,'Mohan',24,'Indore',70000),
	(49,'Pooja',21,'Khandwa',100000),
	(11,'DFC',21,'Khandwa',100000),
	(13,'GYFYVY',21,'FYFCYCVYV',100000),
	(52,'Priyal',20,'Ratlam',80000),
	(61,'Sneha',19,'Raw',60000),
	(17,'Nandini',19,'Khandwa',82000),
	(8,'Kushal',19,'Indore',82000);

INSERT INTO Customer 
	(Cust_Id,Cust_name,Cust_Age,Cust_City,Salary)
	VALUES
	(32,'Shurti',25,'Ratlam',75000),
	(20,'Rohit',35,'Rau',75000),
	(22,'Ronit',28,'Bangaluru',95000),
	(31,'Sujal',24,'Rau',70000),
	(14,'Sudipta',21,'Khandwa',100000),
	(33,'Prachi',24,'Indore',70000),
	(40,'kirti',21,'Omkareshwar',83000);

INSERT INTO Customer
	(Cust_Id,Cust_name,Cust_Age,Cust_City,Salary)
	VALUES 
	(83, 'Niraj', 45, 'Banaras', 98000),
	(74, 'Niraj', 45, 'Banaras', 98000),
	(64, 'Niraj', 45, 'Banaras', 98000);


-------------- SELECT -------------
SELECT * FROM Customer;

SELECT Cust_Id, Cust_name, Salary FROM Customer;


------------- UPDATE ---------------- 

UPDATE Customer
SET Cust_name='Vinod', Cust_Age=32, Salary= 73000
WHERE Cust_Id=11;

UPDATE Customer
SET Address = 'Anand Nagar'
WHERE Cust_Id = 17;

UPDATE Customer
SET Cust_name='Karan', Cust_Age=20
WHERE Cust_Id=8;


UPDATE Customer
SET Cust_City='Ratlam', Cust_Age=27
WHERE Cust_Id= 10;
	
SELECT Cust_Id,Cust_name,Salary FROM Customer;


----------------------- WHERE ----------------------------
--------- (=, >, <, =>, =<, BETWEEN, LIKE, IN) -----------

SELECT Cust_Id,Cust_name,Salary FROM Customer
WHERE Salary=100000;

SELECT Cust_Id,Cust_name,Salary FROM Customer
WHERE Salary<=80000;

SELECT Cust_Id,Cust_name,Salary FROM Customer
WHERE Salary>=80000;

SELECT Cust_Id,Cust_name,Salary,Cust_City FROM Customer
WHERE Cust_City='indore';

SELECT * FROM Customer
WHERE Cust_name LIKE '%o%';

SELECT * FROM Customer
WHERE Cust_name LIKE 'p%';

SELECT * FROM Customer
WHERE Cust_name LIKE '%a';

SELECT Cust_Id, Cust_name, Salary FROM Customer
WHERE Cust_City LIKE 'Khandwa';

SELECT * FROM Customer
WHERE Cust_City IN ('Indore', 'Khandwa');

SELECT * FROM Customer
WHERE Cust_name IN ('Mona');


------------- OR, AND, NOT, BETWEEN-------------

SELECT * FROM Customer
WHERE Cust_City = 'Indore' 
OR Salary = 100000;

SELECT * FROM Customer
WHERE Cust_City='Indore' 
OR Cust_City = 'Raw'
OR Salary = 100000 
OR Salary = 80000 ;

SELECT * FROM Customer
WHERE Cust_City = 'Khandwa' 
AND Salary <= 100000;

SELECT * FROM Customer
WHERE Cust_City = 'Khandwa' 
AND Cust_name LIKE '%A%' 
AND Cust_name LIKE '%O%';


SELECT * FROM Customer
WHERE (Cust_City = 'Khandwa' OR Cust_City = 'Indore')
AND Cust_name LIKE '%A%' 
AND Cust_name LIKE '%O%';

SELECT * FROM Customer
WHERE Cust_City = 'Khandwa' 
AND (Cust_name LIKE '%A%' OR Cust_name LIKE '%O%');

SELECT * FROM Customer
WHERE NOT Cust_City = 'Khandwa';

SELECT * FROM Customer
WHERE NOT Salary > 75000 ;

SELECT * FROM Customer
WHERE NOT Salary < 100000 ;

SELECT Cust_City FROM Customer
WHERE Cust_City NOT LIKE 'i%' ;

SELECT * FROM Customer
WHERE Cust_City NOT IN ('Indore', 'Khandwa');

SELECT * FROM Customer
WHERE Salary NOT BETWEEN 70000 AND 90000;

SELECT * FROM Customer
WHERE Salary BETWEEN 70000 AND 90000;

SELECT * FROM Customer
WHERE Cust_City = 'indore' 
AND Salary BETWEEN 70000 AND 90000;

SELECT * FROM Customer
WHERE Cust_City = 'indore' 
OR Salary BETWEEN 90000 AND 100000;


------------ DELETE -------------

DELETE FROM Customer
WHERE Cust_name = 'Karan';

DELETE FROM Customer
WHERE Cust_Id = 13;


---------- ORDER BY ----------

SELECT * FROM Customer
ORDER BY Cust_name ;

SELECT * FROM Customer
ORDER BY Cust_name, Cust_Id ASC;

SELECT * FROM Customer
ORDER BY Cust_name DESC;


------------- IS NULL / NOT NULL ---------------

SELECT * FROM Customer
WHERE Salary IS NULL;

SELECT * FROM Customer
WHERE Address IS NOT NULL;



-------------- ALTER -------------

ALTER TABLE Customer
Add Address char(50);

ALTER TABLE Customer
ALTER COLUMN Address
varchar(50);

ALTER TABLE Customer
DROP COLUMN Address ;


------------ SELECT DISTINCT ----------------
----------------- COUNT ---------------------

SELECT DISTINCT Cust_City 
FROM Customer;

SELECT DISTINCT Salary 
FROM Customer;

SELECT COUNT(*) AS Total_Count

SELECT COUNT(Cust_Id) AS Count_Mona
FROM Customer
WHERE Cust_name = 'Mona';

SELECT COUNT(DISTINCT Cust_City) AS [No of City]
FROM Customer;

SELECT COUNT(DISTINCT Cust_Id) AS Total_Values
FROM Customer;


-----------TOP-----------

SELECT TOP 3 * FROM Customer;

SELECT TOP 5 * FROM Customer
WHERE Salary > 80000;

SELECT TOP 6 * FROM Customer
WHERE Cust_City = 'Indore';

SELECT TOP 50 PERCENT * FROM Customer;

SELECT TOP 20 PERCENT * FROM Customer;


-------------- MIN/MAX -----------

SELECT MIN(Salary)
FROM Customer;

SELECT MAX(Salary)
FROM Customer;

SELECT MIN(Salary) AS Minimum_Salary
FROM Customer
WHERE Cust_City = 'Indore' AND Cust_Age > 25;

SELECT * FROM Customer
WHERE Cust_City = 'Indore' AND Cust_Age > 25;

