create database ordertable

use ordertable

create table order1(
	order_id int primary key auto_increment,
    product_name char not null,
    order_description varchar(50),
    order_date date default (current_date),
    quantity int check (quantity>0)
);

desc order1