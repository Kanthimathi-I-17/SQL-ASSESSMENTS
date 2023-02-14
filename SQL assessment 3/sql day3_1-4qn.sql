create database assessment3;
use assessment3;

create table employee(
	emp_id int primary key,
    emp_name varchar(60) not null,
    job_name varchar(60),
    emp_salary double
);
drop table employee;
insert into employee values(101,'Harry','Sales Manager',25000);
insert into employee values(102,'Zyan','Marketing Manager',10000);
insert into employee values(103,'Lucifer','Producation Manager',50000);
insert into employee values(104,'Kanthi','Clerk',25000);
insert into employee values(105,'Mathi','Assistant Manager',26000);
insert into employee values(106,'Damon','Developer',21000);
insert into employee values(107,'Aster','Analyst',29000);
insert into employee values(108,'Drew','Designer',90000);
insert into employee values(109,'Amelia','Developing Manager',10000);
insert into employee values(110,'Aven','Assistant Manager',20000);

select * from employee;

select emp_id 'Employee ID',emp_name 'Employee Name', job_name 'Job' from employee where not job_name ='Assistant Manager';

select * from employee where emp_name like '_a%';

create table Manager(
	manager_code int primary key,
    manager_type varchar(60),
    manager_salary double
);

drop table manager;

insert into Manager values(7711,'Sales Manager',25000);
insert into Manager values(7722,'Marketing Manager',10000);
insert into Manager values(7733,'Producation Manager',50000);
insert into Manager values(7744,'Assistant Manager',26000);
insert into Manager values(7755,'Sales Manager',25000);
insert into Manager values(7766,'Developing Manager',10000);
select * from Manager;
select * from Manager where manager_salary between 20000 and 30000;

select * from Manager where manager_code=7711 or manager_code=7722 or manager_code=7733;


create table product(
	product_id int primary key,
    product_name char(60),
    department_id int
);
drop table product;

insert into product values(301,'Ice Cold Milk',201);
insert into product values(302,'Chocolate Milk',202);
insert into product values(303,'Creamy Milk',203);
insert into product values(304,'Cool Milk',201);
insert into product values(305,'Powder Milk',201);
insert into product values(306,'Organic Milk',205);
insert into product values(307,'Milk',201);
insert into product values(308,'Cheese',206);
insert into product values(309,'Butter',204);
insert into product values(310,'Ghee',203);

select * from product;

select product_name 'Product Name' from product where product_name like '%milk';

create table unit_details(
	unit_id int primary key,
    unit_name varchar(50),
    piece_weight double,
    total_pieces int,
    unit_weight double
);
drop table unit_details;
insert into unit_details values(501,'Caramel Chocolate',500.0,20,500.0);
insert into unit_details values(502,'Caramel Milkshake',200.0,26,500.0);
insert into unit_details values(503,'Cake',500.0,50,600.0);
insert into unit_details values(504,'Chocolate',500.0,20,500.0);
insert into unit_details values(505,'Caramel Chocolate',500.0,70,500.0);
insert into unit_details values(506,'Caramel Chocolate',500.0,220,700.0);

select * from unit_details where total_pieces>20 and unit_weight>0;
select * from unit_details where unit_name like 'ca%';

