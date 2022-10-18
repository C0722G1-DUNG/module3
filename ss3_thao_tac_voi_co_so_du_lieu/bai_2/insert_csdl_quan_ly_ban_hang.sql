use building_sale;
insert into customer values(1,'minh quan',10),
						(2,'ngoc oanh',20),
						(3,'hong ha',50);
insert into oder values(1,1,'2006-03-21',null),
                       (2,2,'2006-03-23',null),
                       (3,1,'2006-03-16',null);

insert into product values(1,'may giat',3),
                          (2,'tu lanh',5),
                          (3,'dieu hoa',7),
                          (4,'quat',1),
                          (5,'bep dien',2);
insert into orderdetail values(1,1,3),
                               (1,3,7),
                               (1,4,2),
                               (2,1,1),
                               (3,1,8),
                               (2,5,4),
                               (2,3,3);
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o.oId,o.oDate,o.oTotalPrice
from oder o ;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c.cName, p.pName
from customer c
join oder o on o.cIdcustomer = c.cID  
join orderdetail od on od.oId = o.oId
join product p on p.pId =  od.pId;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.cName , p.pName
from customer c
left join oder o on o.cIdcustomer = c.cID  
left join orderdetail od on od.oId = o.oId
left join product p on p.pId =  od.pId 
where o.cIdcustomer is null;
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select o.oId, o.oDate , sum(od.odQTY*p.pPrice) as oTotalPrice
from oder o
left join orderdetail od on od.oId = o.oId
left join product p on p.pId =  od.pId
group by o.oId;
