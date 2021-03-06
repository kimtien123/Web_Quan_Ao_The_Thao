USE [master]
GO
/****** Object:  Database [WebQuanAoOnline]    Script Date: 6/15/2021 12:59:19 PM ******/
CREATE DATABASE [WebQuanAoOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebQuanAoOnline', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\WebQuanAoOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebQuanAoOnline_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\WebQuanAoOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebQuanAoOnline] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebQuanAoOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebQuanAoOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebQuanAoOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebQuanAoOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebQuanAoOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebQuanAoOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebQuanAoOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebQuanAoOnline] SET  MULTI_USER 
GO
ALTER DATABASE [WebQuanAoOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebQuanAoOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebQuanAoOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebQuanAoOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebQuanAoOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebQuanAoOnline] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebQuanAoOnline] SET QUERY_STORE = OFF
GO
USE [WebQuanAoOnline]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[MaChatLieu] [varchar](10) NOT NULL,
	[TenChatLieu] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDatHang]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDatHang](
	[ID] [varchar](10) NOT NULL,
	[MaSanPham] [varchar](10) NULL,
	[SoHoaDon] [varchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
	[ThanhTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatHang]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatHang](
	[SoHoaDon] [varchar](10) NOT NULL,
	[UserId] [int] NULL,
	[MaKhachHang] [varchar](10) NULL,
	[DiaChiKhachHang] [nvarchar](100) NULL,
	[NgayDatHang] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTuong]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTuong](
	[MaDoiTuong] [varchar](10) NOT NULL,
	[TenDoiTuong] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[IDfeedback] [varchar](10) NOT NULL,
	[Mail] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[IDfeedback] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [varchar](10) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[DiaChiKhachHang] [nvarchar](100) NULL,
	[DienThoaiKhach] [varchar](20) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NOT NULL,
	[Email] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KichCo]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KichCo](
	[MaKichCo] [varchar](10) NOT NULL,
	[TenKichCo] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [varchar](10) NOT NULL,
	[TenNhanVien] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NULL,
	[DienThoai] [varchar](20) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ID_Role] [int] NULL,
	[Password] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [varchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](100) NOT NULL,
	[DiaChiNhaSanXuat] [nvarchar](100) NULL,
	[DienThoaiNhaSanXuat] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_Role] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [varchar](10) NOT NULL,
	[TenSanPham] [nvarchar](50) NOT NULL,
	[MaDoiTuong] [varchar](10) NULL,
	[MaTheLoai] [varchar](10) NULL,
	[MaKichCo] [varchar](10) NULL,
	[MaChatLieu] [varchar](10) NULL,
	[MaNhaSanXuat] [varchar](10) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[SoLuongBan] [int] NULL,
	[DonGia] [float] NULL,
	[MoTa] [ntext] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[HinhMinhHoa] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [varchar](10) NOT NULL,
	[TenTheLoai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[ID_TT] [varchar](10) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [date] NULL,
	[Image] [nvarchar](250) NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ID_TT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 6/15/2021 12:59:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[PassWord] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
	[Allowed] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'01', N'Lụa')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL02', N'Nhung')
INSERT [dbo].[ChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CT03', N'Thun')
GO
INSERT [dbo].[ChiTietDatHang] ([ID], [MaSanPham], [SoHoaDon], [SoLuong], [DonGia], [ThanhTien]) VALUES (N'01', N'02', N'8', 2, 2000000, 4000000)
GO
INSERT [dbo].[DatHang] ([SoHoaDon], [UserId], [MaKhachHang], [DiaChiKhachHang], [NgayDatHang]) VALUES (N'8', NULL, N'9', N'15 Hãi thượng Lãng Ong, Quận 5', CAST(N'2021-05-28T00:00:00' AS SmallDateTime))
GO
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'02', N'Bé gái')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'04', N'Bé gái (5-8 tuoi)')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'01', N'Bé trai')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'03', N'Bé trai (5-8 tuoi)')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'05', N'đàn ông')
INSERT [dbo].[DoiTuong] ([MaDoiTuong], [TenDoiTuong]) VALUES (N'06', N'Phụ Nữ')
GO
INSERT [dbo].[Feedback] ([IDfeedback], [Mail], [Name], [Description]) VALUES (N'LJaKTaeFIP', N'huynhthikimtien123@gmail.com', N'Huỳnh Thị Kim Tiền', N'Đồ đẹp lắm shop')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChiKhachHang], [DienThoaiKhach], [NgaySinh], [GioiTinh], [Email]) VALUES (N'05', N'Uyên', N'15 Hãi thượng Lãng Ong, Quận 5', N'0916939253', CAST(N'2005-02-03T00:00:00' AS SmallDateTime), 1, N'Uyen@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChiKhachHang], [DienThoaiKhach], [NgaySinh], [GioiTinh], [Email]) VALUES (N'9', N'MyTien', N'23 Nguyễn Văn Cừ, Quận 5', N'09568392', CAST(N'2005-02-03T00:00:00' AS SmallDateTime), 1, N'mytien123@gmail.com')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [DiaChiKhachHang], [DienThoaiKhach], [NgaySinh], [GioiTinh], [Email]) VALUES (N'qq73g46vyy', N'Thành', N'quan 9', N'0916939253', CAST(N'2002-02-03T00:00:00' AS SmallDateTime), 0, N'Thanh@gmail.com')
GO
INSERT [dbo].[KichCo] ([MaKichCo], [TenKichCo]) VALUES (N'03', N'L')
INSERT [dbo].[KichCo] ([MaKichCo], [TenKichCo]) VALUES (N'02', N'M')
INSERT [dbo].[KichCo] ([MaKichCo], [TenKichCo]) VALUES (N'01', N'S')
GO
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DienThoai], [DiaChi], [ID_Role], [Password]) VALUES (N'1', N'KT', 1, CAST(N'2005-02-02T00:00:00' AS SmallDateTime), N'09125833', N'23 trần bưởi', 1, N'123456')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DienThoai], [DiaChi], [ID_Role], [Password]) VALUES (N'2', N'Uyen', 1, CAST(N'2000-12-06T00:00:00' AS SmallDateTime), N'09268356', N'145 Nguyễn Thị Minh Khai', 2, N'123456')
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [NgaySinh], [DienThoai], [DiaChi], [ID_Role], [Password]) VALUES (N'3', N'Thanh', 0, CAST(N'2005-02-03T00:00:00' AS SmallDateTime), N'09886386', N'135 Hãi Thượng Lãng Ông, Quận 5', 1, N'123456')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [DiaChiNhaSanXuat], [DienThoaiNhaSanXuat]) VALUES (N'01', N'CTY may mặc Q1', N'Nguyễn Thị Min Khai', N'54154523')
GO
INSERT [dbo].[Role] ([ID_Role], [RoleName]) VALUES (1, N'Quản lý')
INSERT [dbo].[Role] ([ID_Role], [RoleName]) VALUES (2, N'Nhân viên')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDoiTuong], [MaTheLoai], [MaKichCo], [MaChatLieu], [MaNhaSanXuat], [DonViTinh], [SoLuong], [SoLuongBan], [DonGia], [MoTa], [NgayCapNhat], [HinhMinhHoa]) VALUES (N'02', N'Đồ bộ', N'02', N'01', N'01', N'01', N'01', N'VND', 20, 10, 2000000, N'HOP CHUYÊN CUNG CẤP HƠN 600 MẪU MÃ VÁY ĐẦM, QUẦN ÁO CHO BÉ GÁI ✨✨ BÍ QUYẾT CHỌN QUẦN ÁO CHO CON KHÔNG BỊ RỘNG/CHẬT - Đo các vòng ngực, bụng, mông của bé Hoặc - Lấy trang phục của con vẫn thường mặc. Đo các vòng ngực, bụng, mông, dài áo/quần/váy.  Dựa vào số đo này, tham khảo các thông số Shop cung cấp để lựa size cho phù hợp✨✨THAM KHẢO BẢNG SIZE Size 110, khuyến nghị cho 3-4 tuổi, chiều cao 100CM, cân nặng 18kg Size 120 khuyến nghị 5-6 tuổi, cao 110CM, nặng 23kg ± Size 130 khuyến nghị 7-8 tuổi, cao 120CM, nặng 28kg ± Size 140, khuyến nghị 9-10 tuổi, cao 130CM, nặng 33kg ± Size 150, được khuyến nghị là 11-12 tuổi, cao 140CM, nặng 38kg ± Size 160, độ tuổi khuyến nghị 12-13 tuổi, cao 150CM, cân nặng 43kg ±', NULL, N'/Content/images/Screenshot (1).png')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDoiTuong], [MaTheLoai], [MaKichCo], [MaChatLieu], [MaNhaSanXuat], [DonViTinh], [SoLuong], [SoLuongBan], [DonGia], [MoTa], [NgayCapNhat], [HinhMinhHoa]) VALUES (N'03', N'Set Quần Áo Thời ', N'04', N'01', N'01', N'01', N'01', N'VND', 15, 10, 135000, N'HOP CHUYÊN CUNG CẤP HƠN 600 MẪU MÃ VÁY ĐẦM, QUẦN ÁO CHO BÉ GÁI ✨✨ BÍ QUYẾT CHỌN QUẦN ÁO CHO CON KHÔNG BỊ RỘNG/CHẬT - Đo các vòng ngực, bụng, mông của bé Hoặc - Lấy trang phục của con vẫn thường mặc. Đo các vòng ngực, bụng, mông, dài áo/quần/váy.  Dựa vào số đo này, tham khảo các thông số Shop cung cấp để lựa size cho phù hợp✨✨THAM KHẢO BẢNG SIZE Size 110, khuyến nghị cho 3-4 tuổi, chiều cao 100CM, cân nặng 18kg Size 120 khuyến nghị 5-6 tuổi, cao 110CM, nặng 23kg ± Size 130 khuyến nghị 7-8 tuổi, cao 120CM, nặng 28kg ± Size 140, khuyến nghị 9-10 tuổi, cao 130CM, nặng 33kg ± Size 150, được khuyến nghị là 11-12 tuổi, cao 140CM, nặng 38kg ± Size 160, độ tuổi khuyến nghị 12-13 tuổi, cao 150CM, cân nặng 43kg ±', NULL, N'/Content/images/MSP003.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDoiTuong], [MaTheLoai], [MaKichCo], [MaChatLieu], [MaNhaSanXuat], [DonViTinh], [SoLuong], [SoLuongBan], [DonGia], [MoTa], [NgayCapNhat], [HinhMinhHoa]) VALUES (N'04', N'set cầu thủ đá banh', N'01', N'01', N'01', N'01', N'01', N'VND', 24, 13, 175000, N'cho bé trai', NULL, N'/Content/images/MSP003.jpg')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDoiTuong], [MaTheLoai], [MaKichCo], [MaChatLieu], [MaNhaSanXuat], [DonViTinh], [SoLuong], [SoLuongBan], [DonGia], [MoTa], [NgayCapNhat], [HinhMinhHoa]) VALUES (N'05', N'đồ bộ 1', N'01', N'01', NULL, N'01', N'01', N'VND', 20, 12, 165000, N'cho bé', NULL, N'/Content/images/MSP003.jpg')
GO
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai]) VALUES (N'01', N'Thể thao')
GO
INSERT [dbo].[TinTuc] ([ID_TT], [Title], [Description], [CreatedDate], [Image]) VALUES (N'1', N'Sale 2 tặng 1', N'BOOMING SALE - BÙNG NỔ MUA SẮM HÈ VỚI SIÊU ƯU ĐÃI MUA 2 TẶNG 1 . Vừa được SALE 50%, vừa được tặng thêm một siêu phẩm thời trang HOT nhất hè này Thời gian áp dụng: từ ngày 15/07 - 31/07 ', CAST(N'2021-05-31' AS Date), N'/Content/images/z1455273191120_13b0b4072efcf420279d098b7cd87e00.jpg')
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([UserId], [UserName], [PassWord], [Email], [Phone], [Allowed]) VALUES (1, N'KT', N'123456', N'kimtien@gmail.com', N'09535136', 1)
INSERT [dbo].[USERS] ([UserId], [UserName], [PassWord], [Email], [Phone], [Allowed]) VALUES (2, N'admin1', N'456123', N'huynhthikimtien123@gmail.com', N'0916909535', 1)
INSERT [dbo].[USERS] ([UserId], [UserName], [PassWord], [Email], [Phone], [Allowed]) VALUES (3, N'admin2', N'123456', NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChatLieu__7FE6CCCA90A20B9C]    Script Date: 6/15/2021 12:59:20 PM ******/
ALTER TABLE [dbo].[ChatLieu] ADD UNIQUE NONCLUSTERED 
(
	[TenChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DoiTuong__46407084F50D5744]    Script Date: 6/15/2021 12:59:20 PM ******/
ALTER TABLE [dbo].[DoiTuong] ADD UNIQUE NONCLUSTERED 
(
	[TenDoiTuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KichCo__01CD3C21F16A6C8B]    Script Date: 6/15/2021 12:59:20 PM ******/
ALTER TABLE [dbo].[KichCo] ADD UNIQUE NONCLUSTERED 
(
	[TenKichCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhaSanXu__EF6D48CEAF8D45E6]    Script Date: 6/15/2021 12:59:20 PM ******/
ALTER TABLE [dbo].[NhaSanXuat] ADD UNIQUE NONCLUSTERED 
(
	[TenNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__FCA80469663E2CB4]    Script Date: 6/15/2021 12:59:20 PM ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[TenSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TheLoai__327F958F21DA7BC5]    Script Date: 6/15/2021 12:59:20 PM ******/
ALTER TABLE [dbo].[TheLoai] ADD UNIQUE NONCLUSTERED 
(
	[TenTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[USERS] ADD  DEFAULT ((0)) FOR [Allowed]
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[ChiTietDatHang]  WITH CHECK ADD FOREIGN KEY([SoHoaDon])
REFERENCES [dbo].[DatHang] ([SoHoaDon])
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DatHang]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[USERS] ([UserId])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_Role] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Role] ([ID_Role])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_Role]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[ChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDoiTuong])
REFERENCES [dbo].[DoiTuong] ([MaDoiTuong])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaKichCo])
REFERENCES [dbo].[KichCo] ([MaKichCo])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
USE [master]
GO
ALTER DATABASE [WebQuanAoOnline] SET  READ_WRITE 
GO
