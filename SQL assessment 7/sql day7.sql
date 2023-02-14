use db1;

create table orders(
	Order_No varchar(10)primary key,
	Purchase_Amt double,
	Order_Date date,
	Customer_Id varchar(10),
	Salesman_Id varchar(10),
    
    foreign key(Customer_Id) references Customers(Customer_Id),
    foreign key(Salesman_Id) references Salesman(Salesman_Id)    
);

insert into orders values('OR-7723',1000.90,'2022-09-08','CU-6701','SM-901');
insert into orders values('OR-7724',1500.90,'2022-09-09','CU-6702','SM-902');
insert into orders values('OR-7725',400.90,'2022-09-10','CU-6703','SM-903');
insert into orders values('OR-7726',100.90,'2022-09-11','CU-6704','SM-904');
insert into orders values('OR-7727',1000.90,'2022-09-12','CU-6705','SM-905');

drop table orders;

create table Customers(
	Customer_Id varchar(10) primary key,
	Customer_Name varchar(50) not null,
	City varchar(50),
	Grade varchar(10),
	Salesman_Id varchar(10),
    
	foreign key(Salesman_Id) references Salesman(Salesman_Id)    
);

insert into Customers values('CU-6701','Henna','Kovai','Premium','SM-901');
insert into Customers values('CU-6702','Jeni','Tirunelveli','Regular','SM-902');
insert into Customers values('CU-6703','Jenna','Theni','Regular','SM-903');
insert into Customers values('CU-6704','Helana','Chennai','Premium','SM-904');
insert into Customers values('CU-6705','Prema','Madurai','Premium','SM-905');
insert into Customers values('CU-6707','Geetha','Bangalore','Premium','SM-905');
insert into Customers values('CU-6708','Suma','Pune','Premium','SM-905');
insert into Customers values('CU-6709','Latha','Delhi','Premium','SM-906');

select*from Customers;

drop table Customers;

create table Salesman(
	Salesman_Id varchar(10) primary key,
	Salesman_Name char(50) not null,
	City char(50),
	Commission double
);

insert into Salesman values('SM-901','Rohit','Kovai',0.12);
insert into Salesman values('SM-902','Ragul','Tirunelveli',0.10);
insert into Salesman values('SM-903','Shyravan','Theni',0.14);
insert into Salesman values('SM-904','John','Chennai',0.15);
insert into Salesman values('SM-905','Bina','Madurai',0.15);
insert into Salesman values('SM-906','Hema','Velore',0.15);


drop table Salesman;
-- 1. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city. 
select	Order_No,
		Purchase_Amt,
        Customer_Name,
        City
	from
		orders o
	join
		Customers c
	on
		(o.Customer_Id=c.Customer_Id)		
	where
		Purchase_Amt between 500 and 2000
;
        select * from orders;
                select * from Customers;

-- 2.From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
select	O.Order_No,
		O.Purchase_Amt,
        O.Order_Date,
        
        C.Customer_Name,
        C.Grade,
        
        S.Salesman_Name,
        S.Commission
        
	from
		orders O
	join
		Customers C
	on
		(O.Customer_Id=C.Customer_Id)
        join
			Salesman S
		on
			(C.Salesman_Id=S.Salesman_Id)
;
-- 3. From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live 
-- and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.
select	C.Customer_Name,
		C.City "Customer's City",
        
        S.Salesman_Name,
        S.City "Salesman's City",
        S.Commission
        
	from 
		Customers C
	join
		Salesman S
	on
		(C.Salesman_Id=S.Salesman_Id)
	where
		S.Commission>0.12 
	and
		C.City!=S.City
;
-- not finished
-- 4.Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers 
-- and vice versa for that salesperson who belongs to that city.
SELECT * 
FROM Salesman S
CROSS JOIN Customer C
on
		(C.Salesman_Id=S.Salesman_Id)
WHERE S.City!=C.City;

-- 5 employee table
create table employees_details(
	employee_id varchar(20) primary key,
	first_name char(50),
	last_name char(50),
	email varchar(50),
	phone_no bigint,
	hire_date date,
	job_id varchar(20),
	salary double,
	commission double,
	manager_id varchar(20),
	department_id varchar(20)
);

select*from employees_details;

insert into employees_details values('EM-100','Elena','Gilbert','elenagilbert@gmail.com',9876543210,'2019-01-01','AC_ACCOUNT',54000.0,0.12,'EM-101','DP-901');
insert into employees_details values('EM-101','Jeremy','Gilbert','jeremy@gmail.com',6789054321,'2019-01-01','AC_MGR',40000.0,0.12,null,'DP-902');
insert into employees_details values('EM-102','Jenna','Sommers','jennaS@gmail.com',6543217890,'2019-01-01','AD_ASST',55000.0,0.11,'EM-104','DP-903');
insert into employees_details values('EM-103','Damon','Salvatore','damon@gmail.com',8912843560,'2019-01-01','AD_PRES',30000.0,0.2,'EM-104','DP-904');
insert into employees_details values('EM-104','Stefan','Salvatore','stefan@gmail.com',9911224433,'2019-01-01','AD_VP',90000.0,0.22,null,'DP-905');
insert into employees_details values('EM-105','Caroline','Forbes','forbesC@gmail.com',8976543210,'2019-01-01','FI_ACCOUNT',80000.0,0.15,null,'DP-906');
insert into employees_details values('EM-106','Bonnie','Bennet','bennet@gmail.com',9012873456,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-107','Matt','Donovan','donovan@gmail.com',9012467321,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-108','Alaric','Saltzman','alaric@gmail.com',9012489123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-109','VP','Prasath','vp@gmail.com',8712304567,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-120','EJ','James','ej@gmail.com',9016789123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-121','AJ','Kumar','aj@gmail.com',9018909123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-122','John','Chanchal','john@gmail.com',9018908123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-123','Bing','Tucker','Tucker@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-124','Johana','Tucker','johana@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-125','Hena','Shechal','Shechal@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');
insert into employees_details values('EM-126','Hemma','Sheechal','Shechal@gmail.com',9015909123,'2019-01-01','FI_ACCOUNT',80000.0,0.16,'EM-105','DP-907');

create table jobs(
	job_id varchar(20) primary key,
    job_name char(50),
    salary double
);

insert into jobs values('AC_ACCOUNT','Public Accountant',54000.0);
insert into jobs values('AC_MGR','Accounting Manager',40000.0);
insert into jobs values('AD_ASST','Administration Assistant',55000.0);
insert into jobs values('AD_PRES','President',300000);
insert into jobs values('AD_VP','Administration Vice President',90000);
insert into jobs values('FI_ACCOUNT','Accountant',80000);


-- 5.Write a query to get the job_id and related employee's id.
-- Partial output of the query :
select job_id 'Job ID',group_concat(' ',employee_id) 'All Employee IDs' from employees_details group by job_id;

-- 6.Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 0;
update employees_details set phone_no=replace(phone_no,'124','999') where phone_no like '%124%';
SET SQL_SAFE_UPDATES = 1;

-- 7.Write a query to get the details of the employees where the length of the first name greater than or equal to 8. 
select * from employees_details where length(first_name)>=8;
-- 8.Write a query to find all employees where first names are in upper case
select * from employees_details where first_name= binary upper(first_name);

-- 9.Write a query to extract the last 4 character of phone numbers.
select right(phone_no,4) 'Last 4 number in phone number' from employees_details;

-- 10. Write a query to display the first word from those job titles which contains more than one words.
select job_name,SUBSTR(job_name,1, INSTR(job_name, ' ')-1)from jobs;

-- 11.Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position.
select (first_name),length(first_name),last_name from employees_details where instr(last_name,'c')>2;

-- 12. Write a query that displays the first name and the length of the first name for all employees whose 
-- name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names. 
select first_name, length(first_name) 'Length of the first name' from employees_details where first_name like 'A%' or first_name like 'J%' or first_name like 'M%' order by first_name