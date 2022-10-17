drop database if exists building_sale;
create database building_sale ;
use building_sale;
create table customer(
cID int auto_increment primary key ,
cName varchar(45),
cAge date
);
create table oder(
oId int auto_increment primary key,
cId int,
oDate date,
oTotalPrice int,
foreign key(cId)references customer(cId)
);
create table product(
pId int auto_increment primary key,
pName varchar(45),
pPrice int
);
create table orderdetail(
oId int,
pId int,
primary key(oId,pId),
odQTY int,
foreign key(pId) references product(pId),
foreign key(oId) references oder(oId)
);