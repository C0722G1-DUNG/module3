use casestude;
-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021
SET SQL_SAFE_UPDATES = 0;
DELETE FROM nhan_vien 
WHERE
    nhan_vien.ma_nhan_vien NOT IN (SELECT 
        hd.ma_nhan_vien
    FROM
		hop_dong hd
     where  hd.ngay_lam_hop_dong between '2019-01-01' and '2021-12-31') ;  
       
SET SQL_SAFE_UPDATES = 1;

select * from nhan_vien;
-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
select kh.ma_khach_hang , kh.ho_va_ten , lkh.ma_loai_khach, sum((dvdk.gia*hdct.so_luong)+dv.chi_phi_thue), lkh.ten_loai_khach
from khach_hang kh
join loai_khach lkh on lkh.ma_loai_khach = kh.ma_loai_khach
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu 
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where year(hd.ngay_lam_hop_dong)=2021 and lkh.ten_loai_khach = 'Platinium'
group by hd.ma_khach_hang
having sum((dvdk.gia*hdct.so_luong)+dv.chi_phi_thue) > 1000000
;
--- Task 18 ---
--- Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng). ---
DELETE FROM hop_dong , hop_dong_chi_tiet USING hop_dong
        JOIN
    hop_dong_chi_tiet 
WHERE
    YEAR(hop_dong.ngay_lam_hop_dong) < 2021
    AND hop_dong.ma_hop_dong = hop_dong_chi_tiet.ma_hop_dong;
--- CÓ THỂ CHÈN CASADE VÀO KHOÁ PHỤ THÌ DELETE BÌNH THƯỜNG MÀ KHÔNG CẦN LÀM NHƯ TRÊN ---

--- Task 19 ---
---	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi ---
SET SQL_SAFE_UPDATES = 0;
UPDATE dich_vu_di_kem dvdk 
SET 
    gia = gia * 2
WHERE
    dvdk.ma_dich_vu_di_kem = (SELECT 
            a.mdvdk
        FROM
            (SELECT 
                hdct.ma_dich_vu_di_kem mdvdk , SUM(hdct.so_luong) tsl
            FROM
                hop_dong hd
            JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
            WHERE
                YEAR(hd.ngay_lam_hop_dong) = 2020
            GROUP BY ma_dich_vu_di_kem) a WHERE a.tsl >10);
SET SQL_SAFE_UPDATES = 1;

--- Task 20 --- 
--- Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi ---
SELECT nv.ma_nhan_vien id,nv.ho_ten,nv.email,nv.so_dien_thoai,nv.ngay_sinh,nv.dia_chi FROM nhan_vien nv
UNION
SELECT kh.ma_khach_hang,kh.ho_ten,kh.email,kh.so_dien_thoai,kh.ngay_sinh,kh.dia_chi FROM khach_hang kh;