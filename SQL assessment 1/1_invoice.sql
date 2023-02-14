use db1;

create TABLE InVoiceTable1(
	Invoice_No INT primary key,
	Invoice_Date DATE,
    Item_Code INT,
    Item_Name VARCHAR(50),
    Quantity INT check(Quantity>0),
    Price DOUBLE default '0',
    Customer_Name VARCHAR(50) unique,
    Customer_Address VARCHAR(100),
    State_Name VARCHAR(40),
    City_Name VARCHAR(30)
);

alter table InVoiceTable1 add constraint fk_ItemCode foreign key(Item_Code) references ItemDetails_Table1(Item_Code)

create table ItemDetails_Table1(
	Item_Code int primary key,
    Item_Name varchar(50) unique,
    Price double
);

insert into ItemDetails_Table1 values (01,'Lap',10000);

create table EmployeeTable1(
	Ename varchar(50),
    JoinDate date not null
);

insert into InVoiceTable1 values(201,'2022-09-13',01,'Lap',1,20000,'Harry','ABC','TN','India');
insert into EmployeeTable1 values ('kanthi',null);
insert into EmployeeTable1 values ('kanthi','2022-09-13');


drop table InVoiceTable1
drop table ItemDetails_Table1

select * from InVoiceTable1
select * from ItemDetails_Table1