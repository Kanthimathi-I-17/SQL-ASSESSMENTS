create database assessment5;
use assessment5;

-- 1
create table pms_manufacturing(
	manufacture_id int,
    product_id int,
    unit_id int,
    quantity int,
    availability char(5),
    product_manufacture_date date,
	product_expiry_date date
);

insert into pms_manufacturing values (101,201,301,50,'yes','2019-09-08','2019-11-08');
insert into pms_manufacturing values (102,202,302,100,'No','2019-09-08','2019-08-08');
insert into pms_manufacturing values (103,203,303,150,'No','2012-07-08','2012-08-31');
insert into pms_manufacturing values (104,204,304,10,'Yes','2012-05-08','2012-07-01');

select * from pms_manufacturing;

-- Problem # 1:
-- Write a query to display the product details which will get expire on or before 31st Aug 2012
select * from pms_manufacturing where product_expiry_date <='2012-08-31';

-- Problem # 2:
-- Write a query to display the maximum quantity based on product id;

select product_id, max(quantity) 'Max quantity'from pms_manufacturing group by quantity;

-- Problem # 3:
-- Write a query to display the no of days the product will be available in use
select manufacture_id,datediff(product_expiry_date,product_manufacture_date) 'validity period' from pms_manufacturing; 

-- 4:
create table lms_books_details(
	book_code int primary key,
    book_title char(50),
    category char(50),
    author char(50),
    publication char(50),
    publish_date date,
    book_edition int,
    price double,
    rack_number int,
    date_arrival date,
    supplier_id int,
    supplier_name char(50)
);

insert into lms_books_details values(101,'Atomic Habits','Lifestyle','James Clear','ABC publication','2009-09-09',4,300,8,'2009-10-09',901,'Book Store');
insert into lms_books_details values(102,'Alchemist','Novel','Paulo Coelho','JKL publication','2009-09-09',4,100,3,'2009-10-09',902,'Book Stop');
insert into lms_books_details values(103,'3 mistakes of my life','Novel','Chetan Bhagat','York publication','2009-09-09',4,700,5,'2009-10-09',903,'ABC Store');
insert into lms_books_details values(104,'3 mistakes of my life','Novel','Chetan Bhagat Jr','New publication','2009-09-09',4,866,5,'2009-10-09',923,'Crazy book Store');
insert into lms_books_details values(105,'3 mistakes of my life','Novel','Chetan Bhagat','Dream publication','2009-09-09',6,900,13,'2009-10-09',904,'Store Tell');
insert into lms_books_details values(106,'Veronika Decides to Die','Novel','Paulo Coelho','Heavenly publication','1999-09-09',6,1000,32,'1999-10-09',905,'About Book');
insert into lms_books_details values(107,'Duplicity','Fiction','Julez','Prentice Hall','1999-09-09',6,8900,12,'1999-10-09',906,'A to Z Store');
insert into lms_books_details values(108,'Perpective','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,1500,23,'1999-10-09',903,'ABC Store');
insert into lms_books_details values(109,'Aerial','Fiction','Birdie','Brits publication','1999-09-09',6,1600,2,'1999-10-09',907,'Fantasy book Store');
insert into lms_books_details values(110,'Unforgettable','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,3000,4,'1999-10-09',908,'Book corner Store');
insert into lms_books_details values(111,'Spotlight','Fiction','Tay','Divine Publication','1999-09-09',6,1000,9,'1999-10-09',903,'ABC Store');
insert into lms_books_details values(112,'Stall','Fiction','Jane Doe','Prentice Hall','1999-09-09',6,950,6,'1999-10-09',903,'ABC Store');
insert into lms_books_details values(113,'C','Programming','Ashok N. Kamthane ','Prentice Hall','1999-09-09',6,850,6,'1999-10-09',911,'A supplier');
insert into lms_books_details values(114,'C','Programming',' Ravichandran','Prentice Hall','1999-09-09',6,550,6,'1999-10-09',916,'C supplier');
insert into lms_books_details values(115,'Java','Programming',' Charlie Hunt, ‎Binu John','Prentice Hall','1999-09-09',6,899,7,'1999-10-09',912,'MK supplier');
insert into lms_books_details values(116,'Java','Programming',' Joshua Bloch ','Prentice Hall','1999-09-09',6,799,7,'1999-10-09',919,'JK supplier');

select * from lms_books_details;
drop table lms_books_details;
-- Problem #4 
-- Write a query to list the category and number of books in each category with alias name ‘NO_OF_BOOKS’ and sort by category in ascending order
select category,count(category) 'NO_OF_BOOKS' from lms_books_details group by category order by count(category) asc;

-- Problem # 6:
-- Write a query to list the category and number of books in each category with alias name ‘NO_OF_BOOKS’ 
-- in which the ‘NO_OF_BOOKS’ are more than 5
select category,count(category) 'NO_OF_BOOKS' from lms_books_details group by category having(count(category)>5);

-- Problem # 7:
-- Write a query to display the book details which costs higher based on author and supplier name 
select book_title 'Book Name', author,supplier_name,max(price) from lms_books_details group by book_title;
-- select book_title 'Book Name', author,supplier_name,max(price) from lms_books_details group by book_title,author,supplier_name;
-- 8
create table lms_members(
	member_id int,
    member_name char(50),
    city char(50),
    date_register date,
    date_expire date,
    membership_status varchar(50)
);

insert into lms_members values(801,'Shakthi','Chennai','2011-09-08','2012-09-09','Permanent');
insert into lms_members values(802,'Mathi','Tirunelveli','2011-09-08','2012-05-11','Permanent');
insert into lms_members values(803,'Jaanu','Kovai','2011-09-08','2013-05-11','Permanent');
insert into lms_members values(804,'Sree','Kovilpatti','2011-09-08','2014-05-11','Permanent');
insert into lms_members values(805,'Sai','Madurai','2011-09-08','2014-05-11','Temporary');
insert into lms_members values(806,'Swetha','Ambai','2011-09-08','2014-05-11','Temporary');
insert into lms_members values(807,'Roshini','Thuthukudi','2011-09-08','2014-05-11','Temporary');
insert into lms_members values(808,'Sivani','Vellur','2011-09-08','2014-05-11','Temporary');

select *from lms_members;

-- Problem #8
-- Write a query to display the data on ascending order based on a city whose membership status is Temporary
select * from lms_members where membership_status = 'Temporary' order by city;

-- Problem #9
--  Write a query to display manufacture_id, product_id, unit_id in the sequence using rank functions --> pms_manufacturing table
select manufacture_id, product_id, unit_id from pms_manufacturing;
select * from pms_manufacturing;
select manufacture_id, product_id, unit_id, rank() over (partition by manufacture_id, product_id, unit_id )'Rank' from pms_manufacturing;
-- 10
-- Sales(SalesID, SalesRegion, SalesPerson, SalesAmount)
create table Sales(
	SalesID varchar(5) primary key, 
	SalesRegion char(50), 
	SalesPerson char(50), 
	SalesAmount double
);

drop table Sales;

insert into Sales values('S5601','Chennai','Raj',30000);
insert into Sales values('S5602','Madurai','Shakthi',20000);
insert into Sales values('S5603','Kovai','Kumar',10000);
insert into Sales values('S5604','Tirunelveli','Sree',50000);
insert into Sales values('S5605','Thuthukudi','Sharvan',40000);
insert into Sales values('S5606','Theni','Ram',60000);

select * from Sales;

-- Problem #10
-- Write a query to display the sales region which has affected the maximum sales total sales from the table Sales
select SalesRegion 'Maximum sales in the region' from Sales where SalesAmount=( select max(SalesAmount) from Sales) ;


-- 11
-- Employee(Eno, Ename, Department, Salary)
create table Employee(
	Eno varchar(5) primary key, 
    Ename char (50), 
    Department char(50), 
    Salary double
);

drop table Employee;

insert into Employee values('E1001','Damon','Sales',20000);
insert into Employee values('E1002','Stefan','Marketing',20000);
insert into Employee values('E1003','John','Sales',20000);
insert into Employee values('E1004','Devon','Development',20000);
insert into Employee values('E1005','Lucifer','HR',20000);
insert into Employee values('E1006','Jenifer','R & D',20000);
insert into Employee values('E1007','Selena','Sales',20000);
insert into Employee values('E1008','Taylor','Sales',20000);
insert into Employee values('E1009','Ariana','Sales',20000);
insert into Employee values('E1010','Harry','Sales',20000);
insert into Employee values('E1011','Harry','Wales',20000);

delete from Employee where  Eno='E1011';
select * from Employee;

-- Problem #11
-- Write a query to display information about the department that has the maximum number of employees from the table
--
-- as
select Department,count(Department) 'No_of_employees'from Employee  group by Department order by No_of_employees desc limit 1;
-- select Department,max(No_of_employees) from cnt_emp c inner join Employee e;


-- 12
-- Employee Account(Accountno,Accounttype,Accountopendate)
create table Employee_Account(
	Account_no varchar(16) primary key,
	Account_type varchar(50),
	Account_open_date date
);
insert into Employee_Account values('AC12345678900','Fixed account','2013-09-09');
insert into Employee_Account values('AB12345678900','Temporary account','2013-09-09');
insert into Employee_Account values('AD12345678900','Saving account','2013-09-09');
insert into Employee_Account values('AE12345678900','Saving account','2013-09-09');
insert into Employee_Account values('AS12345678900','Saving account','2013-09-09');
insert into Employee_Account values('AG12345678900','Temporary account','2013-09-09');
insert into Employee_Account values('AF12345678900','Saving account','2013-09-09');
insert into Employee_Account values('AX12345678900','Saving account','2013-09-09');
insert into Employee_Account values('AL12345678900','Temporary account','2013-09-09');
insert into Employee_Account values('AZ12345678900','Temporary account','2013-09-09');
insert into Employee_Account values('AKK12345678900','Saving account','2013-09-09');

select * from Employee_Account;

-- Problem #12
-- Query to retrieve information about the type of account that has the maximum number of customers 
select Account_type,count(Account_type) 'No. of cust' from Employee_Account group by Account_type;

-- 13
-- Product(Productid, Productname, cost Price, Selling Price)
create table Product(
	Product_id varchar(5) primary key, 
    Product_name varchar(50), 
    cost_price double,
    Selling_Price double
);

insert into Product values('P5000','Chocolate',100,150);
insert into Product values('P5001','Biscuit',100,50);
insert into Product values('P5002','Milk',90,80);
insert into Product values('P5003','Cookie',100,80);
insert into Product values('P5004','Butter',40,50);
insert into Product values('P5005','Cheese',30,60);

select * from Product;

-- Problem #13
-- Display information about the product which has the maximum profit margin
select *,max(Selling_Price-cost_price)'Max profit margin' from Product having(max(Selling_Price-cost_price));