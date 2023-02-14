create database assessment4;
use assessment4;

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

drop table pms_manufacturing;

select * from pms_manufacturing;
select * from pms_manufacturing where product_expiry_date>='2012-12-15';

-- 2 Write a Query to display the validity period of products along with their Product ID

select manufacture_id,datediff(product_expiry_date,product_manufacture_date) 'validity period' from pms_manufacturing; 


-- 3
create table PMS_EMPLOYEE_DETAILS(
	EMPLOYEE_ID int,
	EMPLOYEE_NAME char(50),
	JOB char(50),
	MANAGER_ID int,
	SALARY double,
	COMMISSION int,
	DEPARTMENT_ID int
);
insert into PMS_EMPLOYEE_DETAILS values(9001,'Ram','Developing Manager',301,20000,300,801);
insert into PMS_EMPLOYEE_DETAILS values(9002,'Raj','Assistant Manager',302,10000,100,802);
insert into PMS_EMPLOYEE_DETAILS values(9003,'Raja','Associate Manager',304,50000,900,800);

select * from PMS_EMPLOYEE_DETAILS;

-- 3 Add 7.5% of salary as a performance bonus for each employee and display the net yearly salary of each employee. 
-- (Do not update the database.). 
-- Display EMPLOYEE_ID, EMPLOYEE_NAME, JOB, and YEARLY_SALARY. YEARLY_SALARY as an alias for the expression used in select query.

select EMPLOYEE_ID, EMPLOYEE_NAME, JOB, salary+salary*0.075 'YEARLY_SALARY' from PMS_EMPLOYEE_DETAILS;
-- 4;
create table lms_books_details(
	book_code int,
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
insert into lms_books_details values(102,'Alchemist','Novel','Paulo Coelho','ABC publication','2009-09-09',4,300,8,'2009-10-09',902,'Book Stop');
insert into lms_books_details values(103,'3 mistakes of my life','Novel','Chetan Bhagat','ABC publication','2009-09-09',4,300,8,'2009-10-09',903,'ABC Store');
insert into lms_books_details values(105,'3 mistakes of my life','Novel','Chetan Bhagat','ABC publication','2009-09-09',6,600,8,'2009-10-09',904,'ABC Store');
insert into lms_books_details values(106,'Veronika Decides to Die','Novel','Paulo Coelho','Prentice Hall','1999-09-09',6,600,8,'1999-10-09',904,'ABC Store');

drop table lms_books_details;
select * from lms_books_details;

-- 4
select book_code,book_title,author from lms_books_details where author like 'P%';

-- 5
select book_title,author,publication from lms_books_details where price>500 and supplier_name = 'ABC Store';

-- 6;
select * from lms_books_details order by price;

-- 7 not finised camel case for suppliername
select upper(book_title),category,supplier_name from lms_books_details;

-- 10;
select * from lms_books_details where publication = 'Prentice Hall' and year(publish_date)=1999;

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

select *from lms_members;
-- 8 Write a query to display the member id, member name, 
-- date of registration, and expiry date of the 
-- members whose membership expiry date is before APR 2013

select * from lms_members where date_expire <'2013-04-01';

-- 9
Create table LMS_SUPPLIERS_DETAILS(
	SUPPLIER_ID Varchar(3),
	SUPPLIER_NAME Varchar(30) NOT NULL,
	ADDRESS	Varchar(50),
	CONTACT bigint,
	EMAIL Varchar(15)
);
drop table LMS_SUPPLIERS_DETAILS;

Insert into  LMS_SUPPLIERS_DETAILS Values ('S01','SINGAPORE SHOPPEE', 'CHENNAI', 9894123555,'sing@gmail.com');
Insert into  LMS_SUPPLIERS_DETAILS Values ('S02','JK Stores', 'MUMBAI', 9940123450 ,'jks@yahoo.com');
Insert into  LMS_SUPPLIERS_DETAILS Values ('S03','ROSE BOOK STORE', 'TRIVANDRUM', 9444411222,'rose@gmail.com');
Insert into  LMS_SUPPLIERS_DETAILS Values ('S04','KAVARI STORE', 'DELHI', 8630001452,'kavi@redif.com');
Insert into  LMS_SUPPLIERS_DETAILS Values ('S05','EINSTEN BOOK GALLARY', 'US', null,'eingal@aol.com');
Insert into  LMS_SUPPLIERS_DETAILS Values ('S06','AKBAR STORE', null,null ,'akbakst@aol.com');
Insert into  LMS_SUPPLIERS_DETAILS Values ('S07','KM STORE', null,9876543210 ,'kanthi@aol.com');

select * from LMS_SUPPLIERS_DETAILS;
-- 9 Write a query to display the supplier id, supplier name, and contact details.
-- Contact details can be either phone number or email or address with the alias name “CONTACTDETAILS”. Hint: Use Coalesce function

select SUPPLIER_ID,SUPPLIER_NAME,coalesce(ADDRESS,CONTACT,EMAIL) as CONTACTDETAILS from LMS_SUPPLIERS_DETAILS