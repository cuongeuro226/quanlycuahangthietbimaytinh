Use master
Go
Drop Database QLBH_CuaHangBanMayTinhVaLinhKien
Go
Create Database QLBH_CuaHangBanMayTinhVaLinhKien
Go
Use QLBH_CuaHangBanMayTinhVaLinhKien
Go

Set DateFormat DMY

CREATE TABLE KHACHHANG
(
	MaKH nvarchar(10) primary key NOT NULL,
	TenKH nvarchar(50) NOT NULL,
	DiaChi nvarchar(50)  NULL,
	SoDT nvarchar(20) NOT NULL,
	CMND nvarchar(20) NOT NULL,
	Email nvarchar(50) NULL,
)

GO

CREATE TABLE NHANVIEN(
	MaNV nvarchar(10) NOT NULL primary key,
	Ten nvarchar(50) NOT NULL,
	Tuoi int NOT NULL,
	CMND nvarchar(12) NOT NULL,
	SDT nvarchar(15) NOT NULL,
	NoiSinh nvarchar(50) NOT NULL,
	NoiTamTru nvarchar(50) NOT NULL,
	TinhTrangHonNhan nvarchar(50) NOT NULL,
	TrinhTrangCongViec nvarchar(50) NOT NULL,
	NgayVaoLam smalldatetime NOT NULL
)

GO

CREATE TABLE LICHSUDANGNHAP
(
	MaLSDN nvarchar(10) NOT NULL primary key,
	MaNV nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	TuNgay smalldatetime NOT NULL,
	ToiNgay smalldatetime NOT NULL
)

GO

CREATE TABLE LICHSULAMVIEC
(
	MaLSCV nvarchar(10) NOT NULL primary key,
	MaNV nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	TuNgay smalldatetime NOT NULL,
	ToiNgay smalldatetime NOT NULL,
	ChucVu nvarchar(50) NOT NULL,
	Luong nvarchar(50) NOT NULL
)

GO

CREATE TABLE TAIKHOAN
(
	MaTK nvarchar(10) primary key NOT NULL,
	MaNV nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	TenDangNhap nvarchar(50) NOT NULL,
	MatKhau nvarchar(50) NOT NULL,
	Email nvarchar(100) NOT NULL
)

GO

CREATE TABLE HOADON
(
	MaHD nvarchar(10) NOT NULL primary key,
	NgayHD smalldatetime NOT NULL,
	MaKH nvarchar(10) foreign key references KHACHHANG(MaKH) NOT NULL,
	MaNV nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	ThueXuat int NOT NULL,
	ThanhTien money NOT NULL,
	TongCong money NOT NULL
)

GO

CREATE TABLE TINHTRANG 
(
	MaTinhTrang nvarchar(10) primary key not null, 
	TenTinhTrang nvarchar(50) not null
)
 
GO

CREATE TABLE NHAPHANPHOI 
(
	MaNhaPhanPhoi nvarchar(10) primary key not null,
	TenNhaPhanPhoi nvarchar(50) not null, 
	DiaChi nvarchar(50) not null, 
	SoDienThoai nvarchar(20) not null, 
	Email nvarchar(50),
	MaSoThue nvarchar(50),
	TrangThai int not null,
	GhiChu nvarchar(100),
	check(TrangThai >= 0 and TrangThai <= 1)
)

GO

CREATE TABLE KHO 
(
	MaKho nvarchar(10) not null, 
	TenKho nvarchar(50) not null,
	TrangThai int not null, 
	GhiChu nvarchar(100), 
	primary key(MaKho),
	check(TrangThai >= 0 and TrangThai <= 1)
)

GO

CREATE TABLE SANPHAM
(
	MaSanPham nvarchar(10) not null, 
	TenSanPham nvarchar(50) not null, 
	XuatXu nvarchar(50) not null, 
	NhaPhanPhoi nvarchar(10) not null,
	NgaySanXuat smalldatetime not null,
	NgayHetHan smalldatetime, 
	DonGiaNhap money not null, 
	DonGiaBan money not null, 
	DonViTinh nvarchar(10) not null, 
	TinhTrang nvarchar(10) not null, 
	Kho nvarchar(10) not null, 
	GhiChu nvarchar(100),
	primary key(MaSanPham),
	foreign key(NhaPhanPhoi) references NhaPhanPhoi(MaNhaPhanPhoi),
	foreign key(TinhTrang) references TinhTrang(MaTinhTrang),
	foreign key(Kho) references Kho(MaKho)
)

GO

CREATE TABLE CHITIETHOADON
(
	MaCTHD nvarchar(10) NOT NULL primary key,
	MaHD nvarchar(10) NOT NULL foreign key references HOADON(MaHD),
	MaSanPham nvarchar(10) foreign key references SANPHAM(MaSanPham) NOT NULL,
	SoLuong int NOT NULL
)

GO  

CREATE TABLE HOADONDOI
(
	MaHDD nvarchar(10) primary key NOT NULL,
	NgayDoi smalldatetime NOT NULL,
	MaKH nvarchar (10) foreign key references KHACHHANG(MaKH) NOT NULL,
	MaNV nvarchar(10) foreign key references NHANVIEN(MaNV) NOT NULL,
	MaHD nvarchar(10) foreign key references HOADON(MaHD) NOT NULL,
	MaSanPham nvarchar(10) foreign key references SANPHAM(MaSanPham) NOT NULL,
	MaSanPhamThayThe nvarchar(10) NULL,
	PhiDoi money NOT NULL,
	PhiHoan money NOT NULL
)

GO

CREATE TABLE HOADONTRA 
(
	MaHDT nvarchar(10) primary key NOT NULL,
	NgayTra smalldatetime NOT NULL,
	MaKH nvarchar(10) foreign key references KHACHHANG(MaKH) NOT NULL,
	MaNV nvarchar(10) foreign key references NHANVIEN(MaNV) NOT NULL,
	MaHD nvarchar(10) foreign key references HOADON(MaHD) NOT NULL,
	MaSanPham nvarchar(10) foreign key references SANPHAM(MaSanPham) NOT NULL,
	PhiHoan money NOT NULL
)

GO

CREATE TABLE PHIEUXUATKHO
(
	MaPhieuXuatKho nvarchar(10) not null,
	NgayLapPhieu smalldatetime not null,	 
	MaNguoiYeuCau nvarchar(10) foreign key references NHANVIEN(MaNV) not null, 
	MaNguoiNhan nvarchar(10) foreign key references NHANVIEN(MaNV) not null, 
	MaNguoiLapPhieu nvarchar(10) foreign key references NHANVIEN(MaNV)  not null, 
	GhiChu nvarchar(100),
	primary key(MaPhieuXuatKho)
	-- MaNguoiYeuCau, MaNguoiNhan, MaNguoiLapPhieu la khoa ngoai
)

GO

CREATE TABLE PHIEUNHAPKHO
(
	MaPhieuNhapKho nvarchar(10) not null, 
	NgayLapPhieu smalldatetime not null, 
	MaNguoiNhan nvarchar(10) foreign key references NHANVIEN(MaNV)  not null, 
	MaNguoiLapHieu nvarchar(10) foreign key references NHANVIEN(MaNV) not null, 
	GhiChu nvarchar(100),
	primary key(MaPhieuNhapKho)
	-- MaNguoiNhan, MaNguoiLapPhieu la khoa ngoai
)

GO

CREATE TABLE PHIEUTRAHANG
(
	MaPhieuTraHang nvarchar(10) not null, 
	NgayLap smalldatetime not null,
	MaNhaPhanPhoi nvarchar(10) foreign key references NHAPHANPHOI(MaNhaPhanPhoi)  not null, 
	MaNguoiLapPhieu nvarchar(10) foreign key references NHANVIEN(MaNV)  not null,
	primary key(MaPhieuTraHang)
	-- MaNhaPhanPhoi, MaNguoiLaPhieu la khoa ngoai
)

GO

CREATE TABLE CHITIETPHIEUXUATKHO
(
	MaChiTietPhieuXuatKho nvarchar(10) not null, 
	MaPhieuXuatKho nvarchar(10) not null, 
	MaSanPham nvarchar(10) not null,
	SoLuong int not null, 
	GhiChu nvarchar(100),
	primary key(MaChiTietPhieuXuatKho),
	foreign key(MaPhieuXuatKho) references PHIEUXUATKHO(MaPhieuXuatKho),
	foreign key(MaSanPham) references SANPHAM(MaSanPham),
	check(SoLuong > 0)

)

GO

CREATE TABLE ChiTietPhieuTraHang
(
	MaChiTietPhieuTraHang nvarchar(10) not null, 
	MaPhieuTraHang nvarchar(10) not null,
	MaSanPham nvarchar(10) not null, 
	SoLuong int not null, 
	GhiChu nvarchar(100),
	primary key(MaChiTietPhieuTraHang),
	foreign key(MaPhieuTraHang) references PHIEUTRAHANG(MaPhieuTraHang),
	foreign key(MaSanPham) references SANPHAM(MaSanPham),
	check(SoLuong > 0)
)

GO 

CREATE TABLE CHITIETPHIEUNHAPKHO
(
	MaChiTietPhieuNhapKho nvarchar(10) not null, 
	MaPhieuNhapKho nvarchar(10) not null, 
	MaSanPham nvarchar(10) not null, 
	SoLuong int not null, 
	GhiChu nvarchar(100),
	primary key(MaChiTietPhieuNhapKho),
	check(SoLuong > 0),
	foreign key(MaPhieuNhapKho) references PHIEUNHAPKHO(MaPhieuNhapKho),
	foreign key(MaSanPham) references SANPHAM(MaSanPham)
)

GO

CREATE TABLE PHIEUTIEPNHANBAOHANH
(
	MaPTNBH nvarchar(10) NOT NULL primary key,
	MaNV nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	NgayLap datetime NOT NULL
)

GO

CREATE TABLE CHITIETPHIEUTIEPNHANBAOHANH
(
	MaCTPTNBH nvarchar(10) NOT NULL primary key,
	MaHoaDon nvarchar(10) NOT NULL foreign key references HOADON(MaHD),
	MoTaLoi nvarchar(100) NOT NULL,
	SoLuong int NOT NULL,
	MaPTNBH nvarchar(10) NOT NULL foreign key references PHIEUTIEPNHANBAOHANH(MaPTNBH)
)

GO

CREATE TABLE PHIEUTRAHANGBAOHANH
(
	MaPTHBH nvarchar(10) NOT NULL primary key,
	TenNhanVien nvarchar(50) NOT NULL,
	NgayLapPhieu smalldatetime NOT NULL,
	TongCong money NOT NULL
)

GO
 
CREATE TABLE CHITIETPHIEUTRAHANGBAOHANH
(
	MaCTPTHBH nvarchar(10) NOT NULL primary key,
	MaPTHBH nvarchar(10) NOT NULL foreign key references PHIEUTRAHANGBAOHANH(MaPTHBH),
	MaPTNBH nvarchar(10) NOT NULL foreign key references PHIEUTIEPNHANBAOHANH(MaPTNBH),
	DonGia money NOT NULL,
	ThanhTien money NOT NULL
)

GO

CREATE TABLE PHIEUXUATLINHKIENBAOHANH
(
	MaPXLKBH nvarchar(10) NOT NULL primary key,
	MaNVKT nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	MaNVKho nvarchar(10) NOT NULL foreign key references NHANVIEN(MaNV),
	NgayLap smalldatetime NOT NULL
)

GO

CREATE TABLE CHITIETPHIEUXUATLINHKIENBAOHANH
(
	MaCTPXLK nvarchar(10) NOT NULL primary key,
	MaPXLKBH nvarchar(10) NOT NULL foreign key references PHIEUXUATLINHKIENBAOHANH(MaPXLKBH),
	MaPTNBH nvarchar(10) NOT NULL foreign key references PHIEUTIEPNHANBAOHANH(MaPTNBH),
	DonGia money NOT NULL
)
