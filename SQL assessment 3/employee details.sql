create database assessment3emp
use assessment3emp;

create table employee_details(
	eno int primary key,
    enmae char(50) not null,
    dept char(50),
    designation char(50),
    manager_code int,
    salary int,
    join_date date,
    bonus char(5),
    emp_type varchar(50)
);
drop table employee_details;
insert into employee_details values (01,'Harry',10,'developing manager',7766,200000,'2019-09-12','yes','RP');
insert into employee_details values (02,'Zyan',10,'developer',7766,200000,'2019-09-12','yes','RP');
insert into employee_details values (03,'Louis',10,'developer',7766,200000,'2019-09-30','no','RP');
insert into employee_details values (04,'Damon',20,'Sales manager',7755,500000,'2016-09-12','yes','RP');
insert into employee_details values (045,'Stefan',20,'Sales leader',7755,10000,'2018-09-12','no','contract');
insert into employee_details values (049,'Elena',20,'Sales person',7755,10000,'2018-10-12','no','regular');
insert into employee_details values (059,'Amelia',30,'Marketing manager',7722,20000,'2016-10-12','yes','regular');
insert into employee_details values (060,'Aven',30,'Marketing leader',7722,20000,'2016-11-12','yes','contract');
insert into employee_details values (061,'Aster',30,'Marketing member',7722,10000,'2016-11-12','no','contract');
insert into employee_details values (062,'Aster',30,'Clerk',null,50000,'2016-01-01','no','regular');
insert into employee_details values (064,'Katherine',40,'Assistant Manager',7744,60000,'2016-05-24','yes','rp');
insert into employee_details values (065,'Taylor',50,'Team Leader',7788,10000,'2016-05-24','yes','contract');
insert into employee_details values (069,'Selena',null,'Project Leader',null,10000,'2016-05-24','yes','contract');


select * from employee_details;
select count(eno) from employee_details;
select * from employee_details where dept=10;

select * from employee_details where dept=20 and emp_type='regular';

select * from employee_details where manager_code=7722;

select enmae 'Employee Name', designation 'Job' from employee_details where enmae not like '%y';

select * from employee_details where designation like '%leader';

select * from employee_details where designation like '%manager%'and dept<>10;

select * from employee_details where dept is null;

select * from employee_details where emp_type='regular';

select * from employee_details where dept<>40;

select *from employee_details where bonus='no';

select * from employee_details where manager_code is null;

select * from employee_details where designation='Team Leader' and salary=10000 and emp_type='contract';