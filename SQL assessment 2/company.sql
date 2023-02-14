create database company;
show databases;
use company;

create table customer(
	customer_id int primary key,
    cutomer_name char(50),
    customer_email varchar(50),
    project_order_id int,
    paid_id int,
    constraint fk_project_order_id1 foreign key(project_order_id) references project(project_order_id),
    constraint fk_paid_id foreign key (paid_id) references company(paid_id)
);

create table project(
	project_order_id int primary key,
    project_name char(50),
    project_type char(50)
);

create table company(
	paid_id int primary key,
    company_name char(50),
    company_location varchar(50),
    emp_id int,
    constraint fk_emp_id foreign key(emp_id) references developer(emp_id)
);

create table developer(
	emp_id int primary key,
    emp_name char(50),
    tech char(50),
    rate int,
    project_order_id int,
    constraint fk_project_order_id foreign key(project_order_id) references project(project_order_id)
);