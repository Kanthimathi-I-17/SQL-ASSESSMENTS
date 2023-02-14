create database PQDetails
use PQDetails

create table personal_details(
	employee_number int primary key,
    employee_name char(50),
    employee_dept char(50),
    employee_desgination char(50),
    employee_DOJ date,
    employee_salary double
);

create table qualification_details(
	employee_number int,
	qualification_code int primary key,
    degree char,
    university char,
    year_of_completion date,
    constraint fk_employee_number foreign key(employee_number) references personal_details(employee_number)
);