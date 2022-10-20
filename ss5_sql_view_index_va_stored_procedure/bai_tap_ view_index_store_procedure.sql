drop database if exists demo;
create database demo;
use demo;
create table Products (
id 	int not null primary key ,
productCode int ,
productName varchar(45),
productPrice double ,
productAmount int ,
productDescription varchar(45),
productStatus varchar(45)
);
insert into Products value
	(1,'r','rượu',1000,10,'aaaaaaa','còn hàng'),
	(2,'b','bánh',2000,20,'bbbbb','còn hàng'),
	(3,'n','nước suối',10000,10,'hhhh','còn hàng'),
	(4,'c','coca',9999,33,'ggg','còn hàng'),
	(5,'k','kẹo',5555,44,'zzzzz','hết hàng'),
	(6,'s','sting',1111,11,'aaaaiiiiiaaa','còn hàng');
    -- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
    create unique index ui_products on Products(productCode);
    create index i_Composite on Products(productName,productPrice);
    explain select * from products where product_code='r';
explain select * from products where product_name like 'b%' and product_price>1000;

create view v_product as select 
product_code,
product_name,
product_price,
product_status
from products;
select * from v_product;
drop view v_product;

-- Tạo store procedure lấy tất cả 
-- thông tin của tất cả các sản phẩm trong bảng product
delimiter //
create procedure sp_get_all_product()
begin
select * from products;
end //
delimiter ;
call sp_get_all_product();

-- Tạo store procedure thêm một sản phẩm mới
delimiter //
create procedure sp_add_product(
in p_id int ,
in p_code varchar(45),
in p_name varchar(45),
in p_price double,
in p_amount int,
in p_description varchar(500),
in p_status varchar(45))
begin
insert into products value(p_id,p_code,p_name,p_price,p_amount,p_description,p_status);
end //
delimiter ;
call sp_add_product(7,'tiii','trứng',6000,15,'ttttt','còn hàng');

-- Tạo store procedure sửa thông tin sản phẩm theo id
delimiter //
create procedure sp_edit_product(in p_name varchar(45),in p_id int)
begin
update products 
set product_name=p_name
where id=p_id;
end //
delimiter ;

call sp_edit_product('sữa',11);

-- Tạo store procedure xoá sản phẩm theo id
delimiter //
create procedure sp_delete_product(in p_id int)
begin
delete from products
where id=p_id;
end //
delimiter ;
call sp_delete_product(10);
