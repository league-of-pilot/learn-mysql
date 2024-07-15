-- sql ko phân biệt chữ hoa chữ thường
CREATE DATABASE test_ig;

-- db phải tồn tại mới xoá được
drop database test_ig;

drop database if exists instagram;

create database instagram;

use instagram;

-- ========================
-- B4, B5
-- https://www.w3schools.com/sql/sql_datatypes.asp
create table
    users (
        id int,
        first_name varchar(255),
        last_name varchar(255),
        age int,
        birthday date
    );

-- Dấu , báo hiệu câu lệnh còn tiếp, `;` mới end
alter table users modify column first_name varchar(100) not null,
modify column last_name varchar(100);

alter table users
add column email varchar(255);

-- ========================
-- B6
-- auto increment chỉ dùng cho primary key
alter table users modify column id int primary key auto_increment;

-- ========================
-- B7
alter table users modify column age int not null,
add column user_type varchar(255) default 'client';

-- ========================
-- Drop table
-- drop table if exists users;
insert into
    users (id, first_name, last_name, age, birthday)
values
    (1, 'John', 'Doe', 25, '1995-01-01'),
    (2, 'Jane', 'Doe', 24, '1996-01-01');