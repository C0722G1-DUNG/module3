use casestude;
insert into vi_tri(ma_vi_tri,ten_vitri)
value(1,'quản lý'),
	 (2,'nhân viên');
insert into trinh_do(ma_trinh_do,ten_trinh_do)
value(1,'Trung cấp'),
     (2,'Cao đẳng'),
     (3,'Đại học'),
     (4,'Sau đại học');
insert into bo_phan(ma_bo_phan,ten_bo_phan)
value(1,'Sale-Marketing'),
     (2,'Hành chính'),
     (3,'Phục vụ'),
     (4,'Quản lý');
insert into nhan_vien(ma_nhan_vien,ho_ten,ngay_sinh,so_cmnd,luong,so_dien_thoai,email,dia_chi,ma_vi_tri,ma_trinh_do,ma_bo_phan)
values(1,'Nguyễn Văn An','1970-11-07','456231786',1000000,'0901234121','annguyen@gmail.com','295 Nguyễn Tât Thành,Đà Nẵng',1,3,1);
