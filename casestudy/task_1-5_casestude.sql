-- 2.	Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu 
-- là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự 
use casestude;
select * from nhan_vien 
where ho_va_ten like 'h%' or ho_va_ten like 't%' or ho_va_ten like 'k%' and ho_va_ten <15;
-- 3.	Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * from khach_hang
where ((year(curdate())-year(ngay_sinh)>=18) and (year(curdate())-year(ngay_sinh)<=50)) and (dia_chi like '% Đà Nẵng'  or dia_chi like '% Quảng Trị' );
-- 4.	Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần.
--  Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select h.ma_khach_hang ,lk.ten_loai_khach, count(h.ma_khach_hang) as total
 from hop_dong h
  join khach_hang kh on kh.ma_khach_hang=h.ma_khach_hang
 join loai_khach lk on lk.ma_loai_khach=kh.ma_loai_khach
 where lk.ten_loai_khach = 'Diamond'
group by h.ma_khach_hang
order by h.ma_khach_hang;
-- 5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, 
-- tong_tien (Với tổng tiền được tính theo công thức như sau: 
-- Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select  h.ma_khach_hang,
 kh.ho_va_ten,
lk.ten_loai_khach,
 h.ma_hop_dong ,
 ldv.ten_loai_dich,
 h.ngay_lam_hop_dong,
 h.ngay_ket_thuc , 
 ifnull(d.chi_phi_thue,0)+sum(ifnull(hdct.so_luong,0)*ifnull(dvdk.gia,0)) as tong_tien
from khach_hang kh
left join loai_khach lk on lk.ma_loai_khach=kh.ma_loai_khach
left join hop_dong h on kh.ma_khach_hang=h.ma_khach_hang
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = h.ma_hop_dong
 left join dich_vu d on d.ma_dich_vu = h.ma_dich_vu
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
left join loai_dich_vu ldv on ldv.ma_loai_dich_vu = d.ma_loai_dich_vu
 group by h.ma_khach_hang, kh.ma_khach_hang
 order by kh.ma_khach_hang;