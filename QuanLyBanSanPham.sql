USE [master]
GO
/****** Object:  Database [QuanLyBanSanPham]    Script Date: 12/11/2020 7:58:13 PM ******/
CREATE DATABASE [QuanLyBanSanPham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanSanPham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyBanSanPham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanSanPham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QuanLyBanSanPham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QuanLyBanSanPham] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanSanPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanSanPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyBanSanPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanSanPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanSanPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanSanPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanSanPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyBanSanPham] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanSanPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanSanPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanSanPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanSanPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanSanPham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanSanPham] SET QUERY_STORE = OFF
GO
USE [QuanLyBanSanPham]
GO
/****** Object:  Table [dbo].[ChiTietHD3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD3](
	[MaHoaDon] [nchar](15) NOT NULL,
	[MaSanPham] [nchar](15) NOT NULL,
	[SoLuongBan] [int] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN3](
	[SoPhieuNhap] [nchar](15) NOT NULL,
	[MaSanPham] [nchar](15) NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietPN3] PRIMARY KEY CLUSTERED 
(
	[SoPhieuNhap] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon3](
	[MaHoaDon] [nchar](15) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNhanVien] [nchar](15) NOT NULL,
	[MaKhachHang] [nchar](15) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang3](
	[MaKhachHang] [nchar](15) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[NgaySinhKhachHang] [date] NULL,
	[GioiTinhKhachHang] [bit] NULL,
	[SCMTNDKhachHang] [int] NULL,
	[DiaChiKhachHang] [nvarchar](50) NULL,
	[SDTKhachHang] [nchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP3](
	[MaLoaiSanPham] [nchar](15) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap3](
	[MaNhaCungCap] [nchar](15) NOT NULL,
	[TenNhaCungCap] [nvarchar](50) NULL,
	[DiaChiNhaCungCap] [nvarchar](50) NULL,
	[SDTNhaCungCap] [nchar](10) NULL,
	[Email] [nchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien3](
	[MaNhanVien] [nchar](15) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[NgaySinhNhanVien] [date] NULL,
	[GioiTinhNhanVien] [bit] NULL,
	[SCMNTNDNhanVien] [int] NULL,
	[DiaChiNhanVien] [nvarchar](50) NULL,
	[SDTNhanVien] [nchar](10) NULL,
	[MaTrinhDo] [nchar](15) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap3](
	[SoPhieuNhap] [nchar](15) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNhanVien] [nchar](15) NOT NULL,
	[MaNhaCungCap] [nchar](15) NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[SoPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham3](
	[MaSanPham] [nchar](15) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[HangSanXuat] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[ThongSo] [nvarchar](50) NULL,
	[TinhNang] [nvarchar](50) NULL,
	[DonGiaBan] [money] NULL,
	[DonGiaMua] [money] NULL,
	[SoLuongCo] [int] NULL,
	[MaLoaiSanPham] [nchar](15) NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan3](
	[ID] [nvarchar](20) NOT NULL,
	[PassWord] [nvarchar](20) NOT NULL,
	[chucvu] [nvarchar](30) NOT NULL,
	[MaNhanVien] [nchar](15) NOT NULL,
 CONSTRAINT [PK_TaiKhoan3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrinhDo3]    Script Date: 12/11/2020 7:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrinhDo3](
	[MaTrinhDo] [nchar](15) NOT NULL,
	[TenTrinhDo] [nvarchar](50) NULL,
 CONSTRAINT [PK_TrinhDo] PRIMARY KEY CLUSTERED 
(
	[MaTrinhDo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietHD3] ([MaHoaDon], [MaSanPham], [SoLuongBan]) VALUES (N'HD000          ', N'MSP001         ', 6)
INSERT [dbo].[ChiTietHD3] ([MaHoaDon], [MaSanPham], [SoLuongBan]) VALUES (N'HD000          ', N'MSP002         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN000         ', N'MSP001         ', 22)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN000         ', N'MSP002         ', 11)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN001         ', N'MSP001         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN0010        ', N'MSP002         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN0011        ', N'MSP002         ', 1)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN0012        ', N'MSP002         ', 1)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN0013        ', N'MSP002         ', 10)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN002         ', N'MSP002         ', 14)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN003         ', N'MSP001         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN003         ', N'MSP002         ', 15)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN004         ', N'MSP001         ', 10)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN004         ', N'MSP002         ', 10)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN005         ', N'MSP002         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN006         ', N'MSP002         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN007         ', N'MSP001         ', 6)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN007         ', N'MSP002         ', 12)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN008         ', N'MSP002         ', 16)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN009         ', N'MSP001         ', 2)
INSERT [dbo].[ChiTietPN3] ([SoPhieuNhap], [MaSanPham], [SoLuongNhap]) VALUES (N'SPN009         ', N'MSP002         ', 1)
INSERT [dbo].[HoaDon3] ([MaHoaDon], [NgayLap], [MaNhanVien], [MaKhachHang]) VALUES (N'HD000          ', CAST(N'2020-06-20' AS Date), N'NV002          ', N'KH001          ')
INSERT [dbo].[KhachHang3] ([MaKhachHang], [TenKhachHang], [NgaySinhKhachHang], [GioiTinhKhachHang], [SCMTNDKhachHang], [DiaChiKhachHang], [SDTKhachHang]) VALUES (N'KH000          ', N'Nguyễn Minh Tâm', CAST(N'1999-02-25' AS Date), 1, 56356, N'Bắc Ninh', N'0344253445')
INSERT [dbo].[KhachHang3] ([MaKhachHang], [TenKhachHang], [NgaySinhKhachHang], [GioiTinhKhachHang], [SCMTNDKhachHang], [DiaChiKhachHang], [SDTKhachHang]) VALUES (N'KH001          ', N'Hà Thị Đào', CAST(N'1999-09-29' AS Date), 0, 547456, N'Cà Mau', N'0345234456')
INSERT [dbo].[KhachHang3] ([MaKhachHang], [TenKhachHang], [NgaySinhKhachHang], [GioiTinhKhachHang], [SCMTNDKhachHang], [DiaChiKhachHang], [SDTKhachHang]) VALUES (N'KH002          ', N'Nguyễn Thị D', CAST(N'2000-02-15' AS Date), 0, 43665, N'Phú Yên', N'0124546534')
INSERT [dbo].[KhachHang3] ([MaKhachHang], [TenKhachHang], [NgaySinhKhachHang], [GioiTinhKhachHang], [SCMTNDKhachHang], [DiaChiKhachHang], [SDTKhachHang]) VALUES (N'KH003          ', N'Nam Văn Sếu', CAST(N'2001-12-27' AS Date), 1, 864543, N'Văn Định', N'0234544543')
INSERT [dbo].[LoaiSP3] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'ML001          ', N'LSP1')
INSERT [dbo].[LoaiSP3] ([MaLoaiSanPham], [TenLoaiSanPham]) VALUES (N'ML002          ', N'LSP2')
INSERT [dbo].[NhaCungCap3] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SDTNhaCungCap], [Email]) VALUES (N'NCC000         ', N'C', N'Yên Bái', N'354525453 ', N'abcde123@gmail.com                                ')
INSERT [dbo].[NhaCungCap3] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SDTNhaCungCap], [Email]) VALUES (N'NCC001         ', N'A', N'Tây Tựu', N'0124354685', N'A123@gmail.com                                    ')
INSERT [dbo].[NhaCungCap3] ([MaNhaCungCap], [TenNhaCungCap], [DiaChiNhaCungCap], [SDTNhaCungCap], [Email]) VALUES (N'NCC002         ', N'B', N'Hiệp Hòa', N'0135464735', N'B123@gmail.com                                    ')
INSERT [dbo].[NhanVien3] ([MaNhanVien], [TenNhanVien], [NgaySinhNhanVien], [GioiTinhNhanVien], [SCMNTNDNhanVien], [DiaChiNhanVien], [SDTNhanVien], [MaTrinhDo]) VALUES (N'NV001          ', N'Trịnh Thiên An', CAST(N'2000-06-14' AS Date), 0, 43654, N'Tiên Du', N'0354536463', N'TD001          ')
INSERT [dbo].[NhanVien3] ([MaNhanVien], [TenNhanVien], [NgaySinhNhanVien], [GioiTinhNhanVien], [SCMNTNDNhanVien], [DiaChiNhanVien], [SDTNhanVien], [MaTrinhDo]) VALUES (N'NV002          ', N'Nam Văn Sếu', CAST(N'1999-06-23' AS Date), 1, 76545, N'Nam Định', N'0346537574', N'TD002          ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN000         ', CAST(N'2020-06-18' AS Date), N'NV001          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN001         ', CAST(N'2020-05-03' AS Date), N'NV001          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN0010        ', CAST(N'2020-06-21' AS Date), N'NV002          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN0011        ', CAST(N'2020-06-21' AS Date), N'NV002          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN0012        ', CAST(N'2020-06-21' AS Date), N'NV002          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN0013        ', CAST(N'2020-12-02' AS Date), N'NV001          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN002         ', CAST(N'2020-07-30' AS Date), N'NV002          ', N'NCC002         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN003         ', CAST(N'2020-06-18' AS Date), N'NV002          ', N'NCC002         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN004         ', CAST(N'2020-06-18' AS Date), N'NV002          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN005         ', CAST(N'2020-06-20' AS Date), N'NV002          ', N'NCC002         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN006         ', CAST(N'2020-06-20' AS Date), N'NV002          ', N'NCC002         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN007         ', CAST(N'2020-06-20' AS Date), N'NV002          ', N'NCC002         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN008         ', CAST(N'2020-06-20' AS Date), N'NV002          ', N'NCC001         ')
INSERT [dbo].[PhieuNhap3] ([SoPhieuNhap], [NgayNhap], [MaNhanVien], [MaNhaCungCap]) VALUES (N'SPN009         ', CAST(N'2020-06-20' AS Date), N'NV001          ', N'NCC000         ')
INSERT [dbo].[SanPham3] ([MaSanPham], [TenSanPham], [HangSanXuat], [HinhAnh], [ThongSo], [TinhNang], [DonGiaBan], [DonGiaMua], [SoLuongCo], [MaLoaiSanPham]) VALUES (N'MSP001         ', N'SP1', N'Hãng 1', N'aaaaaaa', N'TS1', N'TN1', 1000.0000, 800.0000, 96, N'ML001          ')
INSERT [dbo].[SanPham3] ([MaSanPham], [TenSanPham], [HangSanXuat], [HinhAnh], [ThongSo], [TinhNang], [DonGiaBan], [DonGiaMua], [SoLuongCo], [MaLoaiSanPham]) VALUES (N'MSP002         ', N'SP2', N'Hãng 2', N'bbbbbb', N'TS2', N'TN2', 1500.0000, 1000.0000, 148, N'ML002          ')
INSERT [dbo].[TaiKhoan3] ([ID], [PassWord], [chucvu], [MaNhanVien]) VALUES (N'1', N'1', N'admin', N'NV001          ')
INSERT [dbo].[TaiKhoan3] ([ID], [PassWord], [chucvu], [MaNhanVien]) VALUES (N'B', N'B', N'Nhân viên', N'NV002          ')
INSERT [dbo].[TaiKhoan3] ([ID], [PassWord], [chucvu], [MaNhanVien]) VALUES (N'C', N'C', N'Nhân viên', N'NV001          ')
INSERT [dbo].[TrinhDo3] ([MaTrinhDo], [TenTrinhDo]) VALUES (N'TD001          ', N'TD1')
INSERT [dbo].[TrinhDo3] ([MaTrinhDo], [TenTrinhDo]) VALUES (N'TD002          ', N'TD2')
ALTER TABLE [dbo].[ChiTietHD3]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD3_HoaDon3] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon3] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHD3] CHECK CONSTRAINT [FK_ChiTietHD3_HoaDon3]
GO
ALTER TABLE [dbo].[ChiTietHD3]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD3_SanPham3] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham3] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietHD3] CHECK CONSTRAINT [FK_ChiTietHD3_SanPham3]
GO
ALTER TABLE [dbo].[ChiTietPN3]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPN3_PhieuNhap3] FOREIGN KEY([SoPhieuNhap])
REFERENCES [dbo].[PhieuNhap3] ([SoPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPN3] CHECK CONSTRAINT [FK_ChiTietPN3_PhieuNhap3]
GO
ALTER TABLE [dbo].[ChiTietPN3]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPN3_SanPham3] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham3] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietPN3] CHECK CONSTRAINT [FK_ChiTietPN3_SanPham3]
GO
ALTER TABLE [dbo].[HoaDon3]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang3] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon3] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon3]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien3] ([MaNhanVien])
GO
ALTER TABLE [dbo].[HoaDon3] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien3]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TrinhDo] FOREIGN KEY([MaTrinhDo])
REFERENCES [dbo].[TrinhDo3] ([MaTrinhDo])
GO
ALTER TABLE [dbo].[NhanVien3] CHECK CONSTRAINT [FK_NhanVien_TrinhDo]
GO
ALTER TABLE [dbo].[PhieuNhap3]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNhaCungCap])
REFERENCES [dbo].[NhaCungCap3] ([MaNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap3] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap3]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien3] ([MaNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap3] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham3]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSP3] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham3] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[TaiKhoan3]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan3_NhanVien3] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien3] ([MaNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan3] CHECK CONSTRAINT [FK_TaiKhoan3_NhanVien3]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoNgay]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[BaoCaoNgay](@NgayBan nvarchar(20))
as
begin
select SanPham3.MaSanPham, SanPham3.TenSanPham, SanPham3.ThongSo as DonViTinh, sum(ChiTietHD3.SoLuongBan) as SoLuong, SanPham3.DonGiaBan, sum(ChiTietHD3.SoLuongBan)*SanPham3.DonGiaBan as ThanhTien
from SanPham3 inner join ChiTietHD3 on SanPham3.MaSanPham = ChiTietHD3.MaSanPham  inner join HoaDon3 on ChiTietHD3.MaHoaDon = HoaDon3.MaHoaDon where HoaDon3.NgayLap = @NgayBan
group by SanPham3.MaSanPham, SanPham3.TenSanPham, SanPham3.ThongSo, SanPham3.DonGiaBan
end

GO
/****** Object:  StoredProcedure [dbo].[proc_ChiTietPN]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_ChiTietPN] (@sopn nchar(15))
as
begin
	select ChiTietPN3.MaSanPham, SanPham3.TenSanPham,SanPham3.HangSanXuat,ChiTietPN3.SoLuongNhap,SanPham3.DonGiaMua,(ChiTietPN3.SoLuongNhap*SanPham3.DonGiaMua) as 'ThanhTien' 
	From SanPham3 inner join ChiTietPN3 on SanPham3.MaSanPham = ChiTietPN3.MaSanPham
	where ChiTietPN3.SoPhieuNhap = @sopn
	
end
GO
/****** Object:  StoredProcedure [dbo].[proc_NhaCungCap]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_NhaCungCap] @sopn nchar(15)
as
begin
	Select NhaCungCap3.MaNhaCungCap,NhaCungCap3.TenNhaCungCap,NhaCungCap3.DiaChiNhaCungCap,NhaCungCap3.Email,NhaCungCap3.SDTNhaCungCap
	from NhaCungCap3 inner join PhieuNhap3 on NhaCungCap3.MaNhaCungCap = PhieuNhap3.MaNhaCungCap
	where PhieuNhap3.SoPhieuNhap = @sopn
end
GO
/****** Object:  StoredProcedure [dbo].[proc_NhanVien]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_NhanVien] @sopn nchar(15)
as
begin
	Select NhanVien3.TenNhanVien
	from NhanVien3 inner join PhieuNhap3 on NhanVien3.MaNhanVien = PhieuNhap3.MaNhanVien
	where PhieuNhap3.SoPhieuNhap = @sopn
end
GO
/****** Object:  StoredProcedure [dbo].[proc_PhieuNhap]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[proc_PhieuNhap] (@sopn nchar(15))
as
begin
	select SoPhieuNhap,NgayNhap
	From PhieuNhap3
	where PhieuNhap3.SoPhieuNhap = @sopn
	
end
GO
/****** Object:  StoredProcedure [dbo].[proc_SanPham]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_SanPham]
as
begin
	Select TenSanPham From SanPham3
end
GO
/****** Object:  StoredProcedure [dbo].[ThongTinKhachHang]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongTinKhachHang] (@mahoadon nchar(15))
as
select MaHoaDon, NgayLap, HoaDon3.MaNhanVien, HoaDon3.MaKhachHang , KhachHang3.TenKhachHang ,NhanVien3.TenNhanVien ,SCMTNDKhachHang,SDTKhachHang,DiaChiKhachHang
from HoaDon3 Inner join KhachHang3
on HoaDon3.MaKhachHang=KhachHang3.MaKhachHang Inner join NhanVien3 
on HoaDon3.MaNhanVien =NhanVien3.MaNhanVien
where MaHoaDon=@mahoadon
GO
/****** Object:  StoredProcedure [dbo].[ThongTinSanPhamHoaDon]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongTinSanPhamHoaDon] (@mahoadon nchar(15))
as select  SanPham3.MaSanPham , TenSanPham,HangSanXuat,ChiTietHD3.SoLuongBan, DonGiaBan ,  SoLuongBan * DonGiaBan as ThanhTien 
FROM SanPham3  INNER JOIN ChiTietHD3 ON SanPham3.MaSanPham = ChiTietHD3.MaSanPham  
where (MaHoaDon=@mahoadon)
GO
/****** Object:  StoredProcedure [dbo].[tonkho]    Script Date: 12/11/2020 7:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[tonkho]
 as
 select MaSanPham,TenSanPham,SoLuongCo as'Con Lai',ThongSo as'DonViTinh',TinhNang as'GhiChu' from SanPham3
 order by MaSanPham ASC
GO
USE [master]
GO
ALTER DATABASE [QuanLyBanSanPham] SET  READ_WRITE 
GO
