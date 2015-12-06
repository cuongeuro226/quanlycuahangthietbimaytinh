USE [master]
GO
/****** Object:  Database [QLBH_CuaHangBanMayTinh-LinhKien]    Script Date: 12/6/2015 9:03:09 AM ******/
CREATE DATABASE [QLBH_CuaHangBanMayTinh-LinhKien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBH_CuaHangBanMayTinh-LinhKien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBH_CuaHangBanMayTinh-LinhKien.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLBH_CuaHangBanMayTinh-LinhKien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\QLBH_CuaHangBanMayTinh-LinhKien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH_CuaHangBanMayTinh-LinhKien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBH_CuaHangBanMayTinh-LinhKien', N'ON'
GO
USE [QLBH_CuaHangBanMayTinh-LinhKien]
GO
/****** Object:  Table [dbo].[CHITIET]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET](
	[MaChiTiet] [nvarchar](10) NULL,
	[MaPhieu] [nvarchar](10) NULL,
	[MaHangHoa] [nvarchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_CHITIET] PRIMARY KEY CLUSTERED 
(
	[GhiChu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaHD] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[SL] [int] NOT NULL,
 CONSTRAINT [PK_CHI_TIET_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUTIEPNHANBAOHANH]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUTIEPNHANBAOHANH](
	[MaCTPTNBH] [nvarchar](10) NOT NULL,
	[MaHoaDon] [nvarchar](10) NOT NULL,
	[MoTaLoi] [nvarchar](100) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaPTNBH] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_CHITIETPHIEUTIEPNHANBAOHANH] PRIMARY KEY CLUSTERED 
(
	[MaCTPTNBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUTRAHANGBAOHANH]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUTRAHANGBAOHANH](
	[MaCTPTHBH] [nvarchar](10) NOT NULL,
	[MaPTHBH] [nvarchar](10) NOT NULL,
	[MaPTNBH] [nvarchar](10) NOT NULL,
	[DonGia] [numeric](18, 0) NOT NULL,
	[ThanhTien] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_CHITIETPHIEUTRAHANGBAOHANH] PRIMARY KEY CLUSTERED 
(
	[MaCTPTHBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETPHIEUXUATLINHKIENBAOHANH]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETPHIEUXUATLINHKIENBAOHANH](
	[MaCTPXLK] [nvarchar](10) NOT NULL,
	[MaPXLKBH] [nvarchar](10) NOT NULL,
	[MaPTNBH] [nvarchar](10) NOT NULL,
	[DonGia] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_CHITIETPHIEUXUATLINHKIENBAOHANH] PRIMARY KEY CLUSTERED 
(
	[MaCTPXLK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUCNANG]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUCNANG](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenCN1] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CHUCNANG] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [nvarchar](10) NOT NULL,
	[NgayHD] [smalldatetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[ThueSuat] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
	[TongCong] [money] NOT NULL,
 CONSTRAINT [PK_HOA_DON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONDOI]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONDOI](
	[MaPD] [nvarchar](10) NOT NULL,
	[NgayDoi] [smalldatetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaHD] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[MaSPThayThe] [nvarchar](10) NOT NULL,
	[PhiDoi] [money] NOT NULL,
	[PhiHoan] [money] NOT NULL,
 CONSTRAINT [PK_HOA_DON_DOI] PRIMARY KEY CLUSTERED 
(
	[MaPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADONTRA]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONTRA](
	[MaPT] [nvarchar](10) NOT NULL,
	[NgayTra] [smalldatetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[MaHD] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[PhiHoan] [money] NOT NULL,
 CONSTRAINT [PK_HOA_DON_TRA] PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHO]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[MaKho] [nvarchar](10) NOT NULL,
	[TenKho] [nvarchar](50) NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_KHO] PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LICHSUDANGNHAP]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHSUDANGNHAP](
	[MaLSDN] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[TuNgay] [smalldatetime] NOT NULL,
	[ToiNgay] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_LICHSUDANGNHAP] PRIMARY KEY CLUSTERED 
(
	[MaLSDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LICHSULAMVIEC]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LICHSULAMVIEC](
	[MaLSCV] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[TuNgay] [smalldatetime] NOT NULL,
	[ToiNgay] [smalldatetime] NOT NULL,
	[ChucVu] [nvarchar](50) NOT NULL,
	[Luong] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LICHSULAMVIEC] PRIMARY KEY CLUSTERED 
(
	[MaLSCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](10) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Tuoi] [int] NOT NULL,
	[CMND] [nvarchar](12) NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[NoiSinh] [nvarchar](50) NOT NULL,
	[NoiTamTru] [nvarchar](50) NOT NULL,
	[TinhTrangHonNhan] [nvarchar](50) NOT NULL,
	[TrinhTrangCongViec] [nvarchar](50) NOT NULL,
	[NgayVaoLam] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHAPHANPHOI]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAPHANPHOI](
	[MaNhaPhanPhoi] [nvarchar](10) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[SoDienThoai] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MaSoThue] [nvarchar](20) NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_NHAPHANPHOI] PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUKIEMKE]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUKIEMKE](
	[MaPhieuKiemKe] [nvarchar](10) NOT NULL,
	[NgayKiemKe] [smalldatetime] NULL,
	[TenKho] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_PHIEUKIEMKE] PRIMARY KEY CLUSTERED 
(
	[MaPhieuKiemKe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAPKHO]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAPKHO](
	[MaPhieuNhapKho] [nvarchar](10) NOT NULL,
	[NgayLapPhieu] [smalldatetime] NOT NULL,
	[MaNguoiNhan] [nvarchar](10) NOT NULL,
	[TenNguoiNhan] [nvarchar](50) NOT NULL,
	[MaNguoiLapPhieu] [nvarchar](10) NOT NULL,
	[TenNguoiLapPhieu] [nvarchar](50) NOT NULL,
	[ChiTiet] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PHIEUNHAPKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhapKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTIEPNHANBAOHANH]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTIEPNHANBAOHANH](
	[MaPTNBH] [nvarchar](10) NOT NULL,
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
 CONSTRAINT [PK_PHIEUTIEPNHANBAOHANH] PRIMARY KEY CLUSTERED 
(
	[MaPTNBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTRAHANG]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTRAHANG](
	[MaPhieuTraHang] [nvarchar](10) NOT NULL,
	[MaNhaPhanPhoi] [nvarchar](10) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](50) NOT NULL,
	[NgayLap] [smalldatetime] NOT NULL,
	[TenNguoiLapPhieu] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUTRAHANG] PRIMARY KEY CLUSTERED 
(
	[MaPhieuTraHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUTRAHANGBAOHANH]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUTRAHANGBAOHANH](
	[MaPTHBH] [nvarchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[NgayLapPhieu] [smalldatetime] NOT NULL,
	[TongCong] [money] NOT NULL,
 CONSTRAINT [PK_PHIEUTRAHANGBAOHANH] PRIMARY KEY CLUSTERED 
(
	[MaPTHBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUXUATKHO]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUATKHO](
	[MaPhieuXuatKho] [nvarchar](10) NOT NULL,
	[MaNguoiYeuCau] [nvarchar](10) NOT NULL,
	[TenNguoiYeuCau] [nvarchar](50) NOT NULL,
	[NgayLap] [smalldatetime] NOT NULL,
	[MaNguoiNhan] [nvarchar](10) NOT NULL,
	[TenNguoiNhan] [nvarchar](50) NOT NULL,
	[MaNguoiLapPhieu] [nvarchar](10) NOT NULL,
	[TenNguoiLapPhieu] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_PHIEUXUATKHO] PRIMARY KEY CLUSTERED 
(
	[MaPhieuXuatKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUXUATLINHKIENBAOHANH]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUATLINHKIENBAOHANH](
	[MaPXLKBH] [nvarchar](10) NOT NULL,
	[MaNVKT] [nvarchar](10) NOT NULL,
	[MaNVKho] [nvarchar](10) NOT NULL,
	[NgayLap] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_PHIEUXUATLINHKIENBAOHANH] PRIMARY KEY CLUSTERED 
(
	[MaPXLKBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[XuatXu] [nvarchar](100) NOT NULL,
	[NhaPhanPhoi] [nvarchar](100) NOT NULL,
	[NgaySanXuat] [smalldatetime] NOT NULL,
	[NgayHetHan] [smalldatetime] NOT NULL,
	[DonGiaNhap] [numeric](18, 0) NOT NULL,
	[DonGiaBan] [numeric](18, 0) NOT NULL,
	[DonViTinh] [nvarchar](10) NOT NULL,
	[TinhTrang] [nvarchar](100) NOT NULL,
	[Kho] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINHTRANG]    Script Date: 12/6/2015 9:03:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTRANG](
	[MaTinhTrang] [nvarchar](10) NOT NULL,
	[TenTinhTrang] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_TINHTRANG] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [QLBH_CuaHangBanMayTinh-LinhKien] SET  READ_WRITE 
GO
