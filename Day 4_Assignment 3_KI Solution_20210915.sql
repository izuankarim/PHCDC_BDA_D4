use PHCDC

--D4P1: Write a SQL query to create a Suppliers table with the following fields.
--Note: Supplier_id should automatically generate (eg: 100,101,102,103…)
/*Table Name: Suppliers
Column Name	Data Types
Supplier_id	Int 
Supplier_name	Varchar(50)
Supplier_city	Varchar(50)
Supplier_Postcode	int
Supplier_Country	Varchar(50)
Supplier_Phno	Int
Supplier_email	Varchar(20)*/

create table Suppliers (supplier_id int identity (100,1) primary key, supplier_name varchar(50), supplier_city varchar(50), 
supplier_postcode int, supplier_country varchar(50), supplier_phno int, supplier_email varchar(20))

--D4P2: Write a SQL query to insert any 10 Suppliers records. 

insert Suppliers (supplier_name, supplier_city, supplier_postcode, supplier_country, supplier_phno, supplier_email)
values ('ABC Sdn Bhd', 'KL', '53300', 'MY', '012345678', 'abc@abcmail.com'), 
('DEF Sdn Bhd', 'PJ', '53400', 'IN', '012312678', 'def@defmail.com'),
('GHI Sdn Bhd', 'KB', '99000', 'MY', '014445678', 'ghi@ghimail.com'),
('JKL Sdn Bhd', 'KK', '78000', 'SG', '012345678', 'jkl@jklmail.com'),
('MNO Sdn Bhd', 'KT', '65000', 'PH', '0163345678', 'mno@mnomail.com'),
('PQR Sdn Bhd', 'JB', '45000', 'SG', '012345678', 'por@pormail.com'),
('STU Sdn Bhd', 'AS', '23000', 'AU', '018745678', 'stu@stumail.com'),
('VWX Sdn Bhd', 'N9', '70000', 'IN', '012345678', 'vwx@vwxmail.com'),
('YZ Sdn Bhd', 'PD', '71000', 'MY', '014545678', 'yz@yzmail.com'),
('AWS Sdn Bhd', 'JB', '88000', 'MY', '012345678', 'aws@awsmail.com')

--D4P3: Write a SQL query to display all Suppliers records.
select* from Suppliers

--D4P4: Write a SQL query to display supplier’s records, Countries from the Malaysia, India and Singapore.
select* from Suppliers where (supplier_country = 'MY') or (supplier_country = 'IN') or (supplier_country = 'SG')

--D4P5: Write a SQL query to find number of suppliers in the respected countries and display country names also.
select supplier_country, COUNT(*) from Suppliers group by supplier_country

--D4P6: Write a SQL query to display only Malaysian supplier’s records.
select* from Suppliers where (supplier_country = 'MY')

--D4P7: Write a SQL query to display the supplier_id, supplier_name and supplier_email who’s from India.
select supplier_id, supplier_name, supplier_email from Suppliers where (supplier_country = 'IN')

--D4P8: Write a SQL query to display number of suppliers in each country, sorted high to low.
select supplier_country, COUNT(*) from Suppliers group by supplier_country order by COUNT(*) desc 

--D4P9: Write a SQL query to display number of suppliers in each country, sorted low to high 
--(Only include countries with more than 2 suppliers)
select supplier_country, COUNT(*) from Suppliers group by supplier_country having COUNT(*)>2 order by COUNT(*) asc

--D4P10: Write a SQL query to display unique country for the suppliers.
select distinct supplier_country from Suppliers 
