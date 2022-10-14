drop database if exists student_management;
create database student_management;
use student_management;
-- tạo bảng teacher
create table teacher(
id int primary key ,
`name` varchar(50),
age int);