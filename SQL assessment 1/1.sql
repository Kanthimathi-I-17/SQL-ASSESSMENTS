use db1

create TABLE InVoiceTable(
	Invoice_No INT primary key,
	Invoice_Date DATE,
    Item_Code INT,
    Item_Name VARCHAR(50),
    Quantity INT check(Quantity>0),
    Price DOUBLE default '0',
    Customer_Name VARCHAR(50) unique,
    Customer_Address VARCHAR(100),
    State_Name VARCHAR(40),
    City_Name VARCHAR(30),
);

create table Item_Details(
	Item_Code int primary key,
    Item_Name varchar(50) unique,
    Price double,
    foreign key (Item_Name) reference InVoiceTable(Item_Name)
);

create table Employee(
	Ename varchar(50),
    JoinDate date not null
);