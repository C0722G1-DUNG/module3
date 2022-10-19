use casestude;
-- 6.	Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu của tất cả các loại dịch vụ 
-- chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich
FROM
    loai_dich_vu ldv
        JOIN
    dich_vu dv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
  --       JOIN
--     hop_dong h ON h.ma_dich_vu = dv.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (SELECT 
            dv.ma_dich_vu
        FROM
            hop_dong hd
                JOIN
            dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
        WHERE
            hd.ngay_lam_hop_dong BETWEEN '2021-01-01' AND '2021-03-31')
GROUP BY dv.ma_dich_vu
;
-- 7.	Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu 
-- của tất cả các loại dịch vụ đã từng được khách hàng đặt phòng  
select  dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich
    from loai_dich_vu ldv
    JOIN
    dich_vu dv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
    WHERE
    dv.ma_dich_vu not IN (SELECT 
            dv.ma_dich_vu
        FROM
            hop_dong hd
                JOIN
            dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
            where year(ngay_lam_hop_dong) = '2021' )
            GROUP BY dv.ma_dich_vu
;
-- 8.	Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
--  Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên
-- c1
select ho_va_ten from khach_hang 
union
select ho_va_ten from khach_hang;
-- c2 
select distinct ho_va_ten from khach_hang;
-- c3
select ho_va_ten from khach_hang kh
group by kh.ho_va_ten;
-- 9.	Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng 
-- thực hiện đặt phòng. 
 select month(h.ngay_lam_hop_dong) as thang , count(h.ma_khach_hang) as so_luong
 from hop_dong h
 join dich_vu dv on dv.ma_dich_vu = h.ma_dich_vu
 where year(h.ngay_lam_hop_dong) = '2021'
 group by  month(h.ngay_lam_hop_dong)
 order by   month(h.ngay_lam_hop_dong) ;
 -- 10.	Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
 --  Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem). 
 select hdct.ma_hop_dong , hd.ngay_lam_hop_dong, hd.ngay_ket_thuc , hd.tien_dat_coc , sum(ifnull(hdct.so_luong,0)) as sldv
 from hop_dong hd
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 group by hd.ma_hop_dong;