
Use PHCDC

--To create the user table
Create Table User_Tbl (uid INT, uname Varchar(50) , upwd Varchar(30) ,
    city Varchar(30), state Varchar(30) , country Varchar(40), uphone INT )

--To insert the user table records
Insert User_Tbl Values (101, 'David', 'David123', 'Johor', 'JB','Malaysia',012345678)
Insert User_Tbl Values (102, 'Hana' , 'Hana123', 'Kuala Lumpur', 'KL' , 'Malaysia' ,012345678)
Select* From User_Tbl
Insert User_Tbl Values (103, 'Marie', 'Marie123', 'Johor', 'JB','Malaysia',012345678), 
(104, 'Anthony', 'Anthony123', 'Perak', 'Ipoh','Malaysia',012345678),
(105, 'Paary' , 'Paary123', 'Cheras', 'Selangor', 'Malaysia', 025252525)

-- Display All Records from User Table
Select * From User_Tbl

-- 3 WAYS OF COMMAND Select specific USER that is from JB
Select * From User_Tbl Where state = 'JB'
Select * From User_Tbl Where state Like 'JB'
Select * From User_Tbl Where state IN ('JB')

--Display the userid and username which the phone number is 012345678
-- 3 Ways using different query
Select uid, uname From User_Tbl Where uphone = 012345678
Select uid, uname From User_Tbl Where uphone Like 012345678
Select uid, uname From User_Tbl Where uphone IN (012345678)

-- All record will be removed but table still available in database
Delete User_Tbl

-- Table is removed from the database, so there is no record at all (Database will be drop)
Drop Table User_Tbl

Create database Farah 
Use Farah
Create Table User_Table (uid INT)
--To permanently remove the table 
Drop Table User_Table
-- To permanently remove Farah database have to use other database such as PHCDC
Use PHCDC
Drop database Farah

--SQL aliases are often used to give the column more readable name
--alias column ( give temporary name)
Select uid as userid From User_Tbl
Select uname as username From User_Tbl

--alias table temporary name will be given to the table
Select * From User_Tbl as UserTable

--Group by class
--List grouping ppl by state
Select state, COUNT (uid) from User_Tbl Group By state
Select* From User_Tbl
--To display the state in descending order ( Using the Group By Class )
Select COUNT (uid), country from User_Tbl Group By country Order By COUNT (uid) DESC
Select COUNT (uid), state from User_Tbl Group By state Order By COUNT (uid) DESC
-- To display lowest user id in the JB state
Select min(uid) from User_Tbl Where state IN ('JB') Group By state 
--To display the minimum user id in the table
Select min(uid) from User_Tbl 
-- To give the column name
Select max(uid) "largest user id" from User_Tbl Where state IN ('JB') Group By state 

Select Count (*) From User_Tbl Where city = 'Johor' Group by city
-- Group by city ( Count )
Select city, Count (*) From User_Tbl Group by city 
-- Display group by in descending order
Select city, Count (*) From User_Tbl Group by city Order by city Desc
-- Display list of city ( group by ) in ascending order
Select city, Count (*) From User_Tbl Group by city Order by city Asc

Create Table Order_Tbl ( customerid INT, orderid INT, orderdate DATE, itemname VARCHAR(20), itemprice INT)
Select * From Order_Tbl
Alter Table Order_Tbl add customername VARCHAR(50)
Insert Order_Tbl Values ( 101,001, '9-9-2021', 'nasi goreng', 10 , 'Ms Radha')
Insert Order_Tbl Values ( 102, 002, '9-9-2021', 'Sirloin Steak', 20 , 'Farah')
Insert Order_Tbl Values ( 103, 003, '9-9-2021', 'Lobster', 10, 'Eugene')
Insert Order_Tbl Values ( 104, 004, '9-9-2021', 'Lobster' , 10, 'Kam')
-- Want to display the min price food item
Select min(itemprice) From Order_Tbl
-- Display max price of the item
Select max(itemprice) From Order_Tbl

-- Display total price for today sale
Select sum(price) From Order_Tbl
--Display the name of the customer who order lobster
Select customername from Order_Tbl Where itemname ='Lobster'


