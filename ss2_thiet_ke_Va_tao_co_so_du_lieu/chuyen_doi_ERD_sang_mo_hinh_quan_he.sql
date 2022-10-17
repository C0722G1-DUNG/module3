drop database if exists convertErd;
create database convertErd;
use convertErd;
create table phieuxuat(
soPx int auto_increment primary key,
NgayXuat date
);

create table vattu(
MAVattu int auto_increment primary key ,
tenVattu varchar(45)
);
create table chi_tiet_phieu_xuat(
soPXuat int,
MAVattuXuat int,
DGXuat int,
SLXuat int,
primary key(soPXuat,MAVattuXuat),
foreign key(soPXuat) references phieuxuat(soPx),
foreign key(MAVattuXuat) references vattu(MAVattu)
);

create table phieu_nhap(
soPn int auto_increment primary key ,
ngayNhap date
);
create table chi_tiet_phieu_nhap(
soPNhap int,
MAVattuNhap int,
DGNhap int,
SLNhap int,
primary key(soPNhap,MAVattuNhap),
foreign key(soPNhap) references phieu_nhap(soPn),
foreign key(MAVattuNhap) references vattu(MAVattu)
);
create table NhaCC(
MaNCC int auto_increment primary key,
TenNCC varchar(45),
DiaChi int,
idSdt int
);
create table donDh (
soDH int auto_increment primary key,
NgayDH date,
idNhaCungCap int,
foreign key(idNhaCungCap) references NhaCC(MaNCC)
);
create table chi_tiet_don_dat_hang(
MaVatTuCT int,
soHDCT int,
primary key(MaVatTuCT,soHDCT),
foreign key(MaVatTuCT) references vattu(MAVattu),
foreign key(soHDCT) references donDh(soDH)
);

create table sdt (
id int primary key,
sdt int,
in_sdt int,
foreign key(in_sdt) references NhaCC(MaNCC)
);