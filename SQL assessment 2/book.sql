create database book;
use book

create table books(
	book_id int primary key,
    book_author char(50),
    book_title char(50),
    book_price double,
    available char(3),
    publiser_id int,
    member_id int,
    constraint fk_publiser_id foreign key(publiser_id) references publisher(publiser_id),
    constraint fk_member_id foreign key(member_id) references member(member_id)
);

create table publisher(
	publiser_id int primary key,
    publisher_name char(50),
    address varchar(50)
);

create table member(
	member_id int primary key,
    member_name char(50),
    address varchar(50),
    member_type varchar(50),
    member_join_date date
);

create table brrowDetails(
	member_id int,
    due_date date,
    return_date date,
    issue char(50),
    constraint fk_member_id1 foreign key(member_id) references member(member_id)
);

drop table publisher;

select *from brrowDetails