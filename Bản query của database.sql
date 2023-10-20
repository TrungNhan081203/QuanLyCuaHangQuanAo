CREATE DATABASE QuanLyCuaHangQuanAo1
USE QuanLyCuaHangQuanAo1


Create Table Khach(
	MaKhach nvarchar(10) Not Null,
	TenKhach nvarchar(50) Not Null,
	DiaChi nvarchar(50) Not Null,
	DienThoai nvarchar(15) Not Null
)
GO

Create Table Hang(
	MaHang nvarchar(50) Not Null,
	TenHang nvarchar(50) Not Null,
	SoLuong float Not Null,
	DonGiaNhap float Not Null,
	DonGiaBan float Not Null,
)
GO

Create Table NhanVien(
	MaNhanVien nvarchar(10) Not Null,
	TenNhanVien nvarchar(50) Not Null,
	GioiTinh nvarchar(10) Not Null,
	DiaChi nvarchar(50) Not Null,
	Dienthoai nvarchar(15) Not Null,
	NgaySinh datetime Not Null,
)
GO

Create Table HoaDonBan(
	MaHDBan nvarchar(30) Not Null,
	MaNhanVien nvarchar(10) Not Null,
	NgayBan datetime Not Null,
	MaKhach nvarchar(10) Not Null,
	TongTien int Not Null,
)
GO

Create Table ChiTietHDBan(
	MaHDBan nvarchar(30) Not Null,
	MaHang nvarchar(50) Not Null,
	SoLuong float Not Null,
	DonGia float Not Null,
	GiamGia float Not Null,
	Thanhtien int Not Null,
)
GO

--T?O KH�A CH�NH
ALTER TABLE Khach ADD CONSTRAINT PK_Khach PRIMARY KEY(MaKhach)
ALTER TABLE Hang ADD CONSTRAINT PK_Hang PRIMARY KEY(MaHang)
ALTER TABLE NhanVien ADD CONSTRAINT PK_NhanVien PRIMARY KEY(MaNhanVien)
ALTER TABLE HoaDonBan ADD CONSTRAINT PK_HoaDonBan PRIMARY KEY(MaHDBan)
ALTER TABLE ChiTietHDBan ADD CONSTRAINT PK_ChiTietHDBan PRIMARY KEY(MaHDBan,MaHang)

--T?O KH�A NGO?I
ALTER TABLE HoaDonBan ADD CONSTRAINT FK_HoaDonBan_Khach FOREIGN KEY(MaKhach) REFERENCES Khach(MaKhach)
ALTER TABLE HoaDonBan ADD CONSTRAINT FK_HoaDonBan_NhanVien FOREIGN KEY(MaNhanVien) REFERENCES NhanVien(MaNhanVien)
ALTER TABLE ChiTietHDBan ADD CONSTRAINT FK_ChiTietHDBan_HoaDonBan FOREIGN KEY(MaHDBan) REFERENCES HoaDonBan(MaHDBan)
ALTER TABLE ChiTietHDBan ADD CONSTRAINT FK_ChiTietHDBan_Hang FOREIGN KEY(MaHang) REFERENCES Hang(MaHang)