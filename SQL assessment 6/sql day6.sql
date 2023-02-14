use db1;

create table PMS_DEPARTMENT_DETAILS(
	dept_id varchar(10) primary key,
    dept_name char(50),
    dept_location char(50),
    dept_extension char(50)
);

insert into PMS_DEPARTMENT_DETAILS values('D100','Ghee Section','Chennai','');
insert into PMS_DEPARTMENT_DETAILS values('D101','Processing Section','Bangalore','');
insert into PMS_DEPARTMENT_DETAILS values('D102','Paying Section','Hydrabad','');
insert into PMS_DEPARTMENT_DETAILS values('D103','Storage Section','Delhi','');
insert into PMS_DEPARTMENT_DETAILS values('D104','New Arrival Section','Pune','');
insert into PMS_DEPARTMENT_DETAILS values('D105','Resale Section','Kolkata','');
insert into PMS_DEPARTMENT_DETAILS values('D106','Newly Joined Section','Kolkata','');
insert into PMS_DEPARTMENT_DETAILS values('D107','Repair Section','Kolkata','');


select * from PMS_DEPARTMENT_DETAILS;

drop table PMS_DEPARTMENT_DETAILS;

create table PMS_EMPLOYEE_DETAILS(
	emp_id varchar(10) primary key,
    emp_name char(50),
    job char(50),
    manager_id varchar(50),
    salary double,
    commission double,
    dept_id varchar(10),
    foreign key(dept_Id) references PMS_DEPARTMENT_DETAILS(dept_id),
    foreign key(manager_id) references PMS_MANAGER_DETAILS(manager_id)
);

insert into PMS_EMPLOYEE_DETAILS values('M7800','Mr.Kumar','Head Manager',null,90000,30000,'D100');
insert into PMS_EMPLOYEE_DETAILS values('M7801','Ms.Jaya','General Manager',null,80000,25000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('M7802','Mrs.Shakthi','Assisstant Manager',null,50000,3000,'D100');
insert into PMS_EMPLOYEE_DETAILS values('M7803','Mr.Nandha','Assisstant Manager',null,50000,3000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('M7804','Mr.Shayam','Assisstant Manager',null,50000,3000,'D102');
insert into PMS_EMPLOYEE_DETAILS values('M7805','Mr.Vinoth','Assisstant Manager',null,50000,3000,'D103');
insert into PMS_EMPLOYEE_DETAILS values('M7806','Mr.Vivek','Assisstant Manager',null,50000,3000,'D104');
insert into PMS_EMPLOYEE_DETAILS values('M7807','Ms.Jothi','Assisstant Manager',null,50000,3000,'D105');

insert into PMS_EMPLOYEE_DETAILS values('D5001','Ms.Jenna','Developer','M7802',30890,1000,'D100');
insert into PMS_EMPLOYEE_DETAILS values('D6001','Ms.Jenifer','Developer','M7803',30890,1000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('D7001','Ms.Sano','Developer','M7804',30890,1000,'D102');
insert into PMS_EMPLOYEE_DETAILS values('D8001','Ms.Raji','Developer','M7805',30890,1000,'D103');
insert into PMS_EMPLOYEE_DETAILS values('D9001','Mr.David','Developer','M7806',30890,1000,'D104');
insert into PMS_EMPLOYEE_DETAILS values('D1001','Mr.Ram','Developer','M7807',30890,1000,'D105');

insert into PMS_EMPLOYEE_DETAILS values('E1000','Ms.Anu','Engineer','M7807',40890,1000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('E1001','Ms.Hema','Engineer','M7807',40890,1000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('E1002','Mr.Amuthan','Engineer','M7807',40890,1000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('E1003','Mr.Amith','Engineer','M7807',40890,1000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('E1004','Mr.Tharun','Engineer','M7807',40890,1000,'D101');
insert into PMS_EMPLOYEE_DETAILS values('E1005','Mr.Jack','Engineer','M7807',40890,1000,'D101');


select*from PMS_EMPLOYEE_DETAILS;

-- drop table PMS_EMPLOYEE_DETAILS;

CREATE TABLE PMS_MANAGER_DETAILS(
	manager_id varchar(10) PRIMARY KEY,
    manager_name VARCHAR(50),
	job VARCHAR(30),
    boss_code varchar(10),
    salary double,
	commission double,
    dept_id varchar(10),
	foreign key(dept_Id) references PMS_DEPARTMENT_DETAILS(dept_id)
);

insert into PMS_MANAGER_DETAILS values('M7800','Mr.Kumar','Head Manager','B900',90000,30000,'D100');
insert into PMS_MANAGER_DETAILS values('M7801','Ms.Jaya','General Manager','B900',80000,25000,'D101');
insert into PMS_MANAGER_DETAILS values('M7802','Mrs.Shakthi','Assisstant Manager','M7800',50000,3000,'D100');
insert into PMS_MANAGER_DETAILS values('M7803','Mr.Nandha','Assisstant Manager','M7801',50000,3000,'D101');
insert into PMS_MANAGER_DETAILS values('M7804','Mr.Shayam','Assisstant Manager','M7801',50000,3000,'D102');
insert into PMS_MANAGER_DETAILS values('M7805','Mr.Vinoth','Assisstant Manager','M7801',50000,3000,'D103');
insert into PMS_MANAGER_DETAILS values('M7806','Mr.Vivek','Assisstant Manager','M7801',50000,3000,'D104');
insert into PMS_MANAGER_DETAILS values('M7807','Ms.Jothi','Assisstant Manager','M7801',50000,3000,'D105');
insert into PMS_MANAGER_DETAILS values('M7808','Ms.Jayenthi','Associate Manager','B900',100000,3000,'D105');

-- drop table PMS_MANAGER_DETAILS;
select * from PMS_MANAGER_DETAILS;

create table PMS_PRODUCT(
	product_id varchar(10) primary key,
    product_name char(50),
    dept_id varchar(10),
    foreign key(dept_Id) references PMS_DEPARTMENT_DETAILS(dept_id)
);

insert into PMS_PRODUCT values('P4500','Butter','D100');
insert into PMS_PRODUCT values('P4501','Milk','D100');
insert into PMS_PRODUCT values('P4502','Cheese','D100');
insert into PMS_PRODUCT values('P4503','Processd Milk','D100');
insert into PMS_PRODUCT values('P4504','Milk Shake','D100');
insert into PMS_PRODUCT values('P4505','Cookies','D100');
insert into PMS_PRODUCT values('P4506','Soy Milk','D100');
insert into PMS_PRODUCT values('P4507','Oat Milk','D100');
insert into PMS_PRODUCT values('P4508','Dairy Milk','D100');



insert into PMS_PRODUCT values('P5500','Processing machines Products','D101');
insert into PMS_PRODUCT values('P6500','Scanner','D102');
insert into PMS_PRODUCT values('P7500','Fridge','D103');
insert into PMS_PRODUCT values('P8500','Bar code scanner','D104');
insert into PMS_PRODUCT values('P9500','QR code scanner','D105');


select * from PMS_PRODUCT;

drop table PMS_PRODUCT;

create table PMS_MANUFACTURING(
	manufacture_id varchar(10) primary key,
    product_id varchar(10),
    unit_id varchar(10),
    quantity int,
    availability char(10),
    product_manufacture_date date,
    product_expiry_date date,
    foreign key(product_id) references PMS_PRODUCT(product_id),
	foreign key(unit_id) references PMS_UNIT_DETAILS(unit_id)
);

insert into PMS_MANUFACTURING values('MF2130','P4501','UI10',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2131','P4500','UI09',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2132','P4502','UI11',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2133','P4503','UI12',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2134','P4504','UI13',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2135','P4505','UI14',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2136','P5500','UI15',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2137','P6500','UI16',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2138','P7500','UI17',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2139','P8500','UI18',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2140','P9500','UI19',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2141','P4500','UI20',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2142','P4506','UI22',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2143','P4507','UI23',10,'Yes','2019-09-08','2020-09-08');
insert into PMS_MANUFACTURING values('MF2144','P4508','UI24',10,'Yes','2019-09-08','2020-09-08');

select * from PMS_MANUFACTURING;
drop table PMS_MANUFACTURING;
truncate table PMS_MANUFACTURING;

create table PMS_UNIT_DETAILS(
	unit_id varchar(10) primary key,
    unit_name char(50),
    piece_weight double,
    total_pieces int,
    unit_weight double
);

insert into PMS_UNIT_DETAILS values('UI09','Carton',25,10,5);
insert into PMS_UNIT_DETAILS values('UI10','Packet',25,10,15);
insert into PMS_UNIT_DETAILS values('UI11','Pack',25,10,16);
insert into PMS_UNIT_DETAILS values('UI12','Tin',25,10,50);
insert into PMS_UNIT_DETAILS values('UI13','Bottle',25,10,25);
insert into PMS_UNIT_DETAILS values('UI15','Box',25,10,10);
insert into PMS_UNIT_DETAILS values('UI16','Box',25,10,1);
insert into PMS_UNIT_DETAILS values('UI17','Box',25,10,18);
insert into PMS_UNIT_DETAILS values('UI18','Box',25,10,30);
insert into PMS_UNIT_DETAILS values('UI19','Box',25,10,35);
insert into PMS_UNIT_DETAILS values('UI20','Box',25,10,45);
insert into PMS_UNIT_DETAILS values('UI21','Box',25,10,55);
insert into PMS_UNIT_DETAILS values('UI22','Box',25,10,54);
insert into PMS_UNIT_DETAILS values('UI23','Box',25,10,52);
insert into PMS_UNIT_DETAILS values('UI24','Box',25,10,60);

select * from PMS_UNIT_DETAILS;
truncate table PMS_UNIT_DETAILS;

create table PMS_PRODUCT_UNIT(
	product_id varchar(10),
    unit_id varchar(10),
	foreign key(product_id) references PMS_PRODUCT(product_id),
	foreign key(unit_id) references PMS_UNIT_DETAILS(unit_id)
);



insert into PMS_PRODUCT_UNIT values('P4501','UI10');
insert into PMS_PRODUCT_UNIT values('P4500','UI09');
insert into PMS_PRODUCT_UNIT values('P4502','UI11');
insert into PMS_PRODUCT_UNIT values('P4503','UI12');
insert into PMS_PRODUCT_UNIT values('P4504','UI13');
insert into PMS_PRODUCT_UNIT values('P4505','UI14');
insert into PMS_PRODUCT_UNIT values('P5500','UI15');
insert into PMS_PRODUCT_UNIT values('P6500','UI16');
insert into PMS_PRODUCT_UNIT values('P7500','UI17');
insert into PMS_PRODUCT_UNIT values('P8500','UI18');
insert into PMS_PRODUCT_UNIT values('P9500','UI19');
insert into PMS_PRODUCT_UNIT values('P9500','UI19');
insert into PMS_PRODUCT_UNIT values('P4506','UI22');
insert into PMS_PRODUCT_UNIT values('P4507','UI23');
insert into PMS_PRODUCT_UNIT values('P4508','UI24');

select * from PMS_PRODUCT_UNIT;

truncate table PMS_PRODUCT_UNIT;

drop table PMS_PRODUCT_UNIT;
drop table PMS_UNIT_DETAILS;


-- Problem # 1: List the departments which doesn’t have any employees. Display DEPARTMENT_ID, DEPARTMENT_NAME
select dept_id 'Department Code/ID',dept_name 'Department Name' from PMS_DEPARTMENT_DETAILS where dept_id not in (select dept_id from PMS_EMPLOYEE_DETAILS group by dept_id);


-- Problem # 2: Write a query to display the Department_Name, Department_Location whose number of employees are more than or equal to 5
select dept_name 'Department Name',dept_location 'Department Location' from PMS_DEPARTMENT_DETAILS where dept_id in (select dept_id from PMS_EMPLOYEE_DETAILS group by dept_id having(count(emp_id)>=5));


-- Problem # 3: List the Employees and their respective Managers. Display Employee_ID, Employee_Name, Job, and Manager_Name.
select E.emp_id 'Employee ID', E.emp_name 'Employee Name', M.manager_id 'Manager ID',M.manager_name 'Manager Name' from PMS_EMPLOYEE_DETAILS E join PMS_MANAGER_DETAILS M on(E.manager_id=M.manager_id);

-- Problem # 4: Find the 2nd Highest Salary Earner of all the Managers. 
-- Display Employee_ID, Employee_Name, Job, Salary, Commission, Department_ID and Sort by salary in descending order

select Max(salary) from PMS_MANAGER_DETAILS;
select * from PMS_MANAGER_DETAILS where salary=(select Max(salary) from PMS_MANAGER_DETAILS);
select *,max(salary) from PMS_MANAGER_DETAILS where salary <(select Max(salary) from PMS_MANAGER_DETAILS);


-- Problem # 5: Display the Manufactured products details that are belong to ‘GHEE SECTION’. 
-- Display MANUFACTURE_ID, PRODUCT_NAME,UNIT_ID,QUANTITY,PRODUCT_MANUFACTURE_DATE,and PRODUCT_EXPIRY_DATE.
-- Hint: PMS_MANUFACTURING TABLE ALIAS AS M, PMS_PRODUCT TABLE ALIAS AS P

select MF.manufacture_id,PR.product_name,MF.unit_id,MF.quantity,MF.product_manufacture_date,MF.product_expiry_date from PMS_MANUFACTURING MF join PMS_PRODUCT PR on(MF.product_id=PR.product_id) where PR.dept_id='D100';

-- Problem # 6: Find the total quantity manufactured with respect to each product and display the product id, product name and Quantity for each product.
select 	MF.product_id 'Product ID',
		PR.product_name 'Product Name',
        sum(MF.quantity) 'Total Quantity'
	from PMS_MANUFACTURING MF join PMS_PRODUCT PR on(MF.product_id=PR.product_id) group by MF.product_id;

-- not finised
-- Problem # 7: Display the PRODUCT_ID, PRODUCT_NAME, and DEPARTMENT_ID which is manufactured maximum with respect to sum of quantity
select 	PR.product_id,
		PR.product_name,
        PR.dept_id,
        sum(MF.quantity) 'Total Quantity'
	from PMS_MANUFACTURING MF join PMS_PRODUCT PR on(MF.product_id=PR.product_id) group by MF.product_id order by sum(MF.quantity) desc limit 1;

-- Problem # 9: Display the Product details that are ends with MILK. Display PRODUCT_ID, PRODUCT_NAME, UNIT_ID, and UNIT_WEIGHT.
-- Hint: PMS_PRODUCT Table Alias as P, PMS_PRODUCT_UNIT Table Alias as U, PMS_UNIT_DETAILS Table Alias as D
select product_id,product_name from PMS_PRODUCT where product_name like'%milk';
select PR.product_id,PR.product_name,PU.unit_id from PMS_PRODUCT PR join PMS_PRODUCT_UNIT PU on(PR.product_id=PU.product_id) where PR.product_name like'%milk';

select	PR.product_id,
		PR.product_name,
        PU.unit_id,
        U.unit_weight 
	from
		PMS_PRODUCT PR 
	join
		PMS_PRODUCT_UNIT PU
        on
			(PR.product_id=PU.product_id)
            join
				PMS_UNIT_DETAILS U
			on 
				(PU.unit_id=U.unit_id)
	 where PR.product_name like'%milk'
;

-- Problem # 10: Display the Product Name’s along with their possible packing details in the order of Weight. 
-- Display PRODUCT_NAME, UNIT_NAME, TOTAL_PIECES, and UNIT_WEIGHT.
-- Hint: PMS_PRODUCT Table Alias as P, PMS_PRODUCT_UNIT Table Alias as U, PMS_UNIT_DETAILS Table Alias as D
select	PR.product_name 'Product Name',
		U.unit_name 'Unit Name',
        U.total_pieces 'Total Pieces',
        U.unit_weight 'Unit Weight'
	from
		PMS_PRODUCT PR
	join
		PMS_PRODUCT_UNIT PU
	on
		(PR.product_id=PU.product_id)
        join
			PMS_UNIT_DETAILS U
		on
			(PU.unit_id=U.unit_id)
	order by U.unit_weight 
;

-- Problem # 11 Write a Query to display the Employee name , department name , job, Manager name, No of products in the department
-- Hint : PMS_DEPARTMENT_DETAILS, PMS_EMPLOYEE_DETAILS, PMS_PRODUCT
select	PR.dept_id,
		DD.dept_name,
		count(PR.dept_id)'No.of products' 
	from PMS_PRODUCT PR
	join
		 PMS_DEPARTMENT_DETAILS DD
	on 
		 (PR.dept_id=DD.dept_id)
    group by 
		 PR.dept_id
;

select	E.emp_name,
		D.dept_name,
        E.job,
        M.manager_name
	from
		PMS_EMPLOYEE_DETAILS E
	join
		PMS_DEPARTMENT_DETAILS D
        on
			(E.dept_id=D.dept_id)
            join
				PMS_MANAGER_DETAILS M
			on
				(D.dept_id=M.dept_id)
;

-- book

create table lms_books_detail(
	book_code varchar(10) primary key,
    book_title char(50),
    category char(50),
    author char(50),
    publication char(50),
    publish_date date,
    book_edition varchar(50),
    price double,
    rack_number varchar(50),
    date_arrival date,
    supplier_id varchar(50),
    foreign key(supplier_id) references lms_suppliers_detail(supplier_id)
);

insert into lms_books_detail values('B101','Atomic Habits','Lifestyle','James Clear','ABC publication','2009-09-09','Edition-1',300.09,'Rack-8','2009-10-09','SU-901');
insert into lms_books_detail values('B102','Dulpicity','Fiction','Julez','Wattpad','2019-01-12','Edition-2',564.09,'Rack-3','2019-02-01','SU-902');
insert into lms_books_detail values('B103','Journey to the Center of the Earth','Novel','Jules Verne ','Dream publication','2015-05-23','Edition-7',600.09,'Rack-2','2015-06-10','SU-903');
insert into lms_books_detail values('B104','My Life in Dream','Journal','Caroline S Forbes','Wonder Book publication','2013-12-19','Edition-9',930.09,'Rack-9','2013-12-30','SU-904');
insert into lms_books_detail values('B105','Computer Basic 101','Computer','Herther J Matthew','New Series publication','2010-11-30','Edition-6',370.09,'Rack-7','2010-12-13','SU-905');
insert into lms_books_detail values('B106','Java Basic 101','Computer','Bennet James','Prentice Hall','2010-11-30','Edition-5',470.09,'Rack-7','2010-12-13','SU-905');
insert into lms_books_detail values('B107','Data Structure in Java','Java','Amelia Jecobson','Prentice Hall','2010-01-30','Edition-5',770.09,'Rack-7','2010-05-13','SU-906');
insert into lms_books_detail values('B108','Java Basic 101','Java','Peter Hanning','Prentice Hall','2010-02-28','Edition-5',570.09,'Rack-7','2010-05-13','SU-906');

create table lms_suppliers_detail(
	supplier_id varchar(50) primary key,
    supplier_name varchar(50) not null,
    address varchar(50),
    phone_no bigint,
	email varchar(50)
);

insert into lms_suppliers_detail values('SU-901','Mr.Kumar','Delhi',9876543210,'kumar@gmail.com');
insert into lms_suppliers_detail values('SU-902','Mrs.Nandhini','Tirunelveli',9876533210,'nans@gmail.com');
insert into lms_suppliers_detail values('SU-903','Ms.Jennifer','Pune',9872243210,'jeni@gmail.com');
insert into lms_suppliers_detail values('SU-904','Mr.Jay','Mumbai',8976543210,'jay@gmail.com');
insert into lms_suppliers_detail values('SU-905','Mr.John','Chennai',9889543210,'john@gmail.com');
insert into lms_suppliers_detail values('SU-906','JK stores','Chennai',9856543210,'jkstores@gmail.com');

create table lms_member_detail(
	member_id varchar(10) primary key,
    member_name char(50),
    city char(50),
    date_register date,
    date_expire date,
    membership_status varchar(50)
);

insert into lms_member_detail values('M5001','Ms.Katherine','NYC','2019-01-01','2025-12-31','Permanent');
insert into lms_member_detail values('M5002','Mr.Damon','Los Angeles','2018-01-01','2022-12-31','Temporary');
insert into lms_member_detail values('M5003','Ms.Bonnie','Los Vegas','2020-01-01','2028-12-31','Temporary');
insert into lms_member_detail values('M5004','Ms.Aven','Seattle','2010-01-01','2020-12-31','Temporary');
insert into lms_member_detail values('M5005','Ms.Dakota','San Francisco','2017-01-01','2025-12-31','Permanent');
insert into lms_member_detail values('M5006','Ms.Geetha','San Francisco','2017-01-01','2025-12-31','Permanent');
insert into lms_member_detail values('M5007','Mr.Naveen','Chennai','2017-01-01','2025-12-31','Temporary');
insert into lms_member_detail values('M5008','Mr.Suresh','Delhi','2017-01-01','2025-12-31','Temporary');

select * from lms_member_detail;

Create table lms_fine_detail(
	fine_range varchar(10) primary key,
	fine_amount double
);

insert into lms_fine_detail values('R1',50);
insert into lms_fine_detail values('R2',100);
insert into lms_fine_detail values('R3',150);
insert into lms_fine_detail values('R4',200);
insert into lms_fine_detail values('R5',250);


create table lms_book_issue(
	book_issue_no varchar(10) primary key,
    member_id varchar(10),
    book_code varchar(10),
    date_issue date,
    date_return date,
    date_returned date null,
    fine_range varchar(10),
    foreign key(member_id) references lms_member_detail(member_id),
    foreign key(book_code) references lms_books_detail(book_code),
    foreign key(fine_range) references lms_fine_detail(fine_range)
);
insert into lms_book_issue values('BI-101','M5001','B101','2019-02-19','2019-04-19','2019-05-19','R2');
insert into lms_book_issue values('BI-102','M5002','B102','2018-02-19','2018-04-19','2018-05-19','R2');
insert into lms_book_issue values('BI-103','M5003','B103','2020-02-19','2019-04-19','2020-05-19','R2');
insert into lms_book_issue values('BI-104','M5004','B104','2011-02-19','2019-04-19','2020-05-19','R2');
insert into lms_book_issue values('BI-105','M5005','B105','2017-02-19','2019-04-19','2020-05-19','R2');
insert into lms_book_issue values('BI-106','M5006','B104','2017-02-19','2017-02-20','2020-05-19','R1');
insert into lms_book_issue values('BI-107','M5007','B105','2012-04-01','2012-03-01','2020-03-04','R1');
insert into lms_book_issue values('BI-108','M5008','B103','2012-04-01','2012-03-20','2020-03-24','R1');
insert into lms_book_issue values('BI-109','M5008','B107','2012-04-01','2012-03-20','2020-03-24','R1');
insert into lms_book_issue values('BI-110','M5008','B108','2012-04-01','2012-03-20','2020-03-24','R1');

select * from lms_book_issue;
drop table lms_book_issue;

-- Problem # 8: Write a query to display the member id, member name and number of remaining books he/she can take with “REMAININGBOOKS” as alias name.
-- Hint: Assuming a member can take maximum 3 books. For example, Ramesh has already taken 2 books; he can take only one book now. 
-- Hence display the remaining books as 1 in below format.
-- MEMBER_ID MEMBER_NAME REMAININGBOOKS
-- LM001 RAMESH 1
-- LM002 MOHAN 3

select m.MEMBER_ID,MEMBER_NAME,T.cb as REMAINING_BOOKS from lms_member_detail m inner join (select a.member_id,COUNT(i.MEMBER_ID) as cb from lms_member_detail a left outer join lms_book_issue i on a.MEMBER_ID= i.MEMBER_ID group by a.MEMBER_ID)T on T.MEMBER_ID=m.MEMBER_ID ;

-- Problem # 12: Write a query to display book issue number, member name, date of registration, date of expiry, book title, category author, 
-- price, date of issue, date of return, actual returned date, issue status, fine amount.

Select BOOK_ISSUE_NO,MEMBER_NAME,DATE_REGISTER,DATE_EXPIRE,BOOK_TITLE,CATEGORY, PRICE, DATE_ISSUE,DATE_RETURN,DATE_RETURNED,(select FINE_AMOUNT from lms_fine_detail f where i.FINE_RANGE= f.FINE_RANGE)as FINE_AMOUNT from lms_book_issue i,lms_member_detail m,lms_books_detail b where i.MEMBER_ID=m.MEMBER_ID and b.BOOK_CODE=i.BOOK_CODE;




-- sql day 9
-- Problem # 1:
-- Write a query to display the book_code, book_title, supplier_name, publish_date, email
create view book_supplier_details
	as
		select	B.book_code "Book Code",
				B.book_title "Book Title",
				B.publish_date "Book Publish date",
				S.supplier_name "Book supplier's Name",
				S.email "Book supplier's Email"
		from
			lms_books_detail B
		join
			lms_suppliers_detail S
		on
			(B.supplier_id=S.supplier_id)
;

select * from book_supplier_details;

-- Problem # 2:
-- Write a query to display the member_details who have not returned the book for more than 5 days
create view member_not_return_book_5day
	as
    select M.* 
    from
		lms_member_detail M
	join
		lms_book_issue BI
	on
		(M.member_id=BI.member_id)
	where
		datediff(BI.date_returned,BI.date_return)>5
;

select * from member_not_return_book_5day;

-- Problem # 3:
-- Write a query to display the books that got issued from the supplier JK stores
select	B.book_code,
		B.book_title
	from
		lms_books_detail B
	join
		lms_suppliers_detail S
	on
		(B.supplier_id=S.supplier_id)
        join
			lms_book_issue BI
		on
			(B.book_code=BI.book_code)
	where
		S.supplier_name='JK stores'
;
-- Problem #4:
-- Write a query to display the member details who have taken JAVA book.
select	M.*,B.book_title
	from 
		lms_member_detail M
	join
		lms_book_issue BI
	on
		(M.member_id=BI.member_id)
        join
			lms_books_detail B
		on
			(BI.book_code=B.book_code)
	where
		B.category='Java'
;
-- Problem #5:
-- Write a query to display the book details which has date of arrival in May month
select * from lms_books_detail where month(date_arrival)='05';

-- Problem # 6:
-- Write a query to display the book information published by "Prentice Hall” with the alias name “NO_OF_BOOKS”.
select * from lms_books_detail where publication="Prentice Hall";

-- Problem # 7:
-- Write a query to display the book code, book title of the books which are issued on the date "1st April 2012".
select	B.book_code,
		B.book_title
	from 
		lms_books_detail B
	join
		lms_book_issue BI
	on
		(B.book_code=BI.book_code)
	where 
		BI.date_issue='2012-04-01'
;

-- Problem # 8:
-- Write a query to display the member id, member name, date of registration, membership status of the members who 
-- registered before "March 2012" and membership status is "Temporary"
Select member_id,member_name,date_register,membership_status from lms_member_detail where date_register<'2012-03-01';

-- Problem #9:
-- Write a query to display the member id, member name who’s City is CHENNAI or DELHI. Hint: Display the member name in title case with alias name "Name".
select member_id,member_name 'Name' from lms_member_detail where city = "Chennai" or city = "Delhi";


-- Problem #10:
-- Write a query to concatenate book title, author and display in the following format.: Book_Title_is_written_by_Author
-- Example: Let Us C_is_written_by_Yashavant Kanetkar. Hint: display unique books. Use “BOOK_WRITTEN_BY” as alias name.
select concat(book_title,' is written by ',author) 'BOOK_WRITTEN_BY' from lms_books_detail;