CREATE DATABASE [Project_Apple]
USE [Project_Apple]
GO
/****** Object:  Table [dbo].[BaoHanh]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[MaBH] [nvarchar](100) NOT NULL,
	[ThoiGianBH] [int] NOT NULL,
 CONSTRAINT [PK_BaoHanh] PRIMARY KEY CLUSTERED 
(
	[MaBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietBH]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietBH](
	[MaBH] [nvarchar](100) NOT NULL,
	[MaHD] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](100) NOT NULL,
	[MaSP] [nvarchar](100) NOT NULL,
	[NgayBH] [datetime] NOT NULL,
	[NgayHenTra] [datetime] NOT NULL,
	[GhiChu] [nvarchar](255) NOT NULL,
 CONSTRAINT [pk_MaBH_MaHD_MaKH_MaSP] PRIMARY KEY CLUSTERED 
(
	[MaBH] ASC,
	[MaHD] ASC,
	[MaKH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [nvarchar](100) NOT NULL,
	[MaSP] [nvarchar](100) NOT NULL,
	[MaBH] [nvarchar](100) NOT NULL,
	[GiaBan] [money] NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[KhuyenMai] [int] NOT NULL,
	[ThanhTien] [money] NOT NULL,
 CONSTRAINT [pk_MaHD_MaSP_MaBH] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC,
	[MaBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaPhieu] [nvarchar](100) NOT NULL,
	[MaNCC] [nvarchar](100) NOT NULL,
	[MaSP] [nvarchar](100) NOT NULL,
	[GiaGoc] [money] NOT NULL,
	[SoLuongNhap] [int] NOT NULL,
	[SoLuongTon] [int] NULL,
	[ThanhTien] [money] NOT NULL,
 CONSTRAINT [pk_MaPhieu_MaNCC_MaSP] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC,
	[MaNCC] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](100) NOT NULL,
	[TenChucVu] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](100) NOT NULL,
	[NhanVienLap] [nvarchar](100) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](100) NOT NULL,
	[SDT] [nvarchar](12) NOT NULL,
	[HoTenKH] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoai] [nvarchar](100) NOT NULL,
	[TenLoai] [nvarchar](255) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [nvarchar](100) NOT NULL,
	[TenNCC] [nvarchar](255) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](100) NOT NULL,
	[MaChucVu] [nvarchar](100) NOT NULL,
	[HoTenNV] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT_NhanVien] [nvarchar](12) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Anh] [nvarchar](100) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [nvarchar](100) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
	[ChiTietQuyen] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieu] [nvarchar](100) NOT NULL,
	[NhanVienLap] [nvarchar](100) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](100) NOT NULL,
	[TenSP] [nvarchar](255) NOT NULL,
	[MaLoai] [nvarchar](100) NOT NULL,
	[XuatXu] [nvarchar](100) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [nvarchar](100) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[NVSoHuu] [nvarchar](100) NULL,
	[MaQuyen] [nvarchar](100) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BaoHanh] ([MaBH], [ThoiGianBH]) VALUES (N'BH12', 12)
INSERT [dbo].[BaoHanh] ([MaBH], [ThoiGianBH]) VALUES (N'BH24', 24)
INSERT [dbo].[BaoHanh] ([MaBH], [ThoiGianBH]) VALUES (N'BH36', 36)
INSERT [dbo].[BaoHanh] ([MaBH], [ThoiGianBH]) VALUES (N'BH48', 48)
INSERT [dbo].[BaoHanh] ([MaBH], [ThoiGianBH]) VALUES (N'BH6', 6)

INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaBH], [GiaBan], [SoLuongMua], [KhuyenMai], [ThanhTien]) VALUES (N'HD1', N'SP1', N'BH12', 6735000.0000, 2, 10, 12123000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaBH], [GiaBan], [SoLuongMua], [KhuyenMai], [ThanhTien]) VALUES (N'HD1', N'SP4', N'BH36', 6435000.0000, 1, 10, 5791500.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaBH], [GiaBan], [SoLuongMua], [KhuyenMai], [ThanhTien]) VALUES (N'HD1', N'SP5', N'BH12', 630000.0000, 1, 10, 567000.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaBH], [GiaBan], [SoLuongMua], [KhuyenMai], [ThanhTien]) VALUES (N'HD2', N'SP2', N'BH12', 4483500.0000, 2, 10, 8070300.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaBH], [GiaBan], [SoLuongMua], [KhuyenMai], [ThanhTien]) VALUES (N'HD2', N'SP3', N'BH12', 17985000.0000, 1, 10, 16186500.0000)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [MaBH], [GiaBan], [SoLuongMua], [KhuyenMai], [ThanhTien]) VALUES (N'HD2', N'SP5', N'BH12', 630000.0000, 1, 10, 567000.0000)

INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN1', N'NCC1', N'SP1', 4490000.0000, 50, 48, 224500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN1', N'NCC1', N'SP2', 2989000.0000, 50, 48, 149450000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN1', N'NCC1', N'SP3', 11990000.0000, 30, 29, 359700000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN1', N'NCC1', N'SP4', 4290000.0000, 20, 19, 85800000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN1', N'NCC1', N'SP5', 420000.0000, 50, 48, 21000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP10', 250000.0000, 50, 50, 12500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP11', 3790000.0000, 50, 50, 189500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP12', 8950000.0000, 50, 50, 447500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP13', 5590000.0000, 50, 50, 279500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP6', 42800000.0000, 50, 50, 2140000000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP7', 23650000.0000, 50, 50, 1182500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP8', 790000.0000, 50, 50, 39500000.0000)
INSERT [dbo].[ChiTietPhieuNhap] ([MaPhieu], [MaNCC], [MaSP], [GiaGoc], [SoLuongNhap], [SoLuongTon], [ThanhTien]) VALUES (N'PN2', N'NCC1', N'SP9', 4250000.0000, 50, 50, 212500000.0000)

INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV1', N'Quản lý')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV2', N'Thu ngân')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV3', N'Bán hàng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV4', N'Thủ kho')

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NhanVienLap], [NgayLap]) VALUES (N'HD1', N'KH1', N'NV4', CAST(N'2020-07-12T10:05:02.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NhanVienLap], [NgayLap]) VALUES (N'HD2', N'KH4', N'NV4', CAST(N'2020-07-12T10:12:05.000' AS DateTime))

INSERT [dbo].[KhachHang] ([MaKH], [SDT], [HoTenKH], [DiaChi], [TrangThai]) VALUES (N'KH1', N'0989767856', N'Lâm Đình Khải', N'TP.HCM', 1)
INSERT [dbo].[KhachHang] ([MaKH], [SDT], [HoTenKH], [DiaChi], [TrangThai]) VALUES (N'KH2', N'0978543234', N'Nguyễn Thị Thu Ngân', N'TP.HCM', 1)
INSERT [dbo].[KhachHang] ([MaKH], [SDT], [HoTenKH], [DiaChi], [TrangThai]) VALUES (N'KH3', N'0987654321', N'Phạm Khang', N'Bình Thuận', 1)
INSERT [dbo].[KhachHang] ([MaKH], [SDT], [HoTenKH], [DiaChi], [TrangThai]) VALUES (N'KH4', N'0987678999', N'Lê Diễm My', N'An Giang', 1)
INSERT [dbo].[KhachHang] ([MaKH], [SDT], [HoTenKH], [DiaChi], [TrangThai]) VALUES (N'KH5', N'0123456789', N'Bùi Công Mạnh', N'TP.HCM', 1)

INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L1', N'Iphone 5', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L1', N'Iphone 5s', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L10', N'Iphone 6', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L10', N'Iphone 6s', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L10', N'Iphone 6s plus', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L11', N'Iphone 7', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L11', N'Iphone 7 plus', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L12', N'Iphone 8', 0)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L13', N'Iphone X', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L2', N'Iphone 11', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L3', N'Iphone 11 Pro Max', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L4', N'Iphone 11 Pro', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L5', N'Iphone 12 Pro', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L6', N'Iphone 12 Pro Max', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L7', N'Iphone 13 Pro', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L8', N'Iphone 13 Pro Max', 1)
INSERT [dbo].[LoaiSanPham] ([MaLoai], [TenLoai], [TrangThai]) VALUES (N'L9', N'Iphone Xs Max', 1)

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [TrangThai]) VALUES (N'NCC1', N'Corning', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [TrangThai]) VALUES (N'NCC2', N'Qualcomm', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [TrangThai]) VALUES (N'NCC2', N'Sharp', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [TrangThai]) VALUES (N'NCC2', N'Murata', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [TrangThai]) VALUES (N'NCC3', N'Samsung', 1)
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [TrangThai]) VALUES (N'NCC3', N'VietNam', 1)

INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV1', N'CV1', N'Nguyễn Thành Phát', 1, CAST(N'2000-10-02' AS Date), N'0353110711', N'Tiền Giang', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV2', N'CV1', N'Thái Thanh Tú', 1, CAST(N'2000-10-02' AS Date), N'0353110711', N'Tiền Giang', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV3', N'CV1', N'Phạm Minh Nhựt', 1, CAST(N'2000-08-16' AS Date), N'0987654321', N'Bến Tre', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV4', N'CV2', N'Nguyễn Thị Thu Huyền', 0, CAST(N'2000-06-27' AS Date), N'0909876789', N'TP.HCM', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV5', N'CV3', N'Đào Duy Nam', 1, CAST(N'2000-12-09' AS Date), N'0987789987', N'TP.HCM', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV6', N'CV4', N'Lâm Đình Quý', 1, CAST(N'2000-08-20' AS Date), N'0967547897', N'TP.HCM', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV7', N'CV3', N'Đoàn Thu Thảo', 0, CAST(N'2000-05-02' AS Date), N'0978567896', N'TP.HCM', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV8', N'CV2', N'Lê Văn Đạt', 1, CAST(N'2000-12-20' AS Date), N'0123567898', N'TP.HCM', N'', 1)
INSERT [dbo].[NhanVien] ([MaNV], [MaChucVu], [HoTenNV], [GioiTinh], [NgaySinh], [SDT_NhanVien], [DiaChi], [Anh], [TrangThai]) VALUES (N'NV9', N'CV1', N'Đoàn Hữu Phúc', 1, CAST(N'2000-10-03' AS Date), N'0353110712', N'Tiền Giang', N'', 1)

INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [ChiTietQuyen]) VALUES (N'1', N'Admin', N'Toàn quyền, sửa dụng được tất cả các chức năng')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [ChiTietQuyen]) VALUES (N'2', N'Bán hàng', N'Sử dụng được các thức năng: quản lý sản phẩm, quản lý hóa đơn, quản lý khách hàng, một và chức năng của thống kê')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [ChiTietQuyen]) VALUES (N'3', N'Thủ kho', N'Sử dụng được các chức năng: quản lý sản phẩm, quản lý phiếu nhập, một vài chức năng của thống kê')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [TenQuyen], [ChiTietQuyen]) VALUES (N'4', N'Thu ngân', N'Sử dụng được các chức năng: quản lý hóa đơn, báo cáo,...')
INSERT [dbo].[PhieuNhap] ([MaPhieu], [NhanVienLap], [NgayNhap]) VALUES (N'PN1', N'NV6', CAST(N'2020-07-12T09:33:28.000' AS DateTime))
INSERT [dbo].[PhieuNhap] ([MaPhieu], [NhanVienLap], [NgayNhap]) VALUES (N'PN2', N'NV6', CAST(N'2020-07-12T10:42:09.000' AS DateTime))

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP1', N'iPhone 5 16G', N'L1', N'Việt Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP10', N'Iphone 12 Pro Max 128G', N'L6', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP11', N'Iphone X 256G', N'L13', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP12', N'Iphone 6s plus 32G', N'L10', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP13', N'Iphone 13 Pro Max 256G', N'L8', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP2', N'Iphone 5s 32G', N'L1', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP3', N'Iphone 11 64G', N'L2', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP4', N'Iphone 11 128G', N'L2', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP5', N'Iphone 12 Pro Max 64G', N'L6', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP6', N'Iphone 6s 16G', N'L10', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP7', N'Iphone 12 Pro 128G', N'L5', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP8', N'Iphone 13 Pro Max 64G', N'L8', N'Viet Nam', 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoai], [XuatXu], [TrangThai]) VALUES (N'SP9', N'Iphone 12 Pro 64G', N'L5', N'Viet Nam', 1)

INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'admin', N'1234', NULL, N'1', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'canh', N'qooqwh9HaVY=', N'NV1', N'1', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'dat', N'qooqwh9HaVY=', N'NV8', N'4', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'huyen', N'qooqwh9HaVY=', N'NV4', N'4', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'nam', N'qooqwh9HaVY=', N'NV5', N'2', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'nhut', N'qooqwh9HaVY=', N'NV3', N'1', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'phuc', N'qooqwh9HaVY=', N'NV2', N'1', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'thao', N'qooqwh9HaVY=', N'NV7', N'2', 1)
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [NVSoHuu], [MaQuyen], [TrangThai]) VALUES (N'thukho', N'qooqwh9HaVY=', N'NV6', N'3', 1)
ALTER TABLE [dbo].[ChiTietBH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBH_BaoHanh] FOREIGN KEY([MaBH])
REFERENCES [dbo].[BaoHanh] ([MaBH])
GO
ALTER TABLE [dbo].[ChiTietBH] CHECK CONSTRAINT [FK_ChiTietBH_BaoHanh]
GO
ALTER TABLE [dbo].[ChiTietBH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBH_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietBH] CHECK CONSTRAINT [FK_ChiTietBH_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietBH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBH_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ChiTietBH] CHECK CONSTRAINT [FK_ChiTietBH_KhachHang]
GO
ALTER TABLE [dbo].[ChiTietBH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBH_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietBH] CHECK CONSTRAINT [FK_ChiTietBH_SanPham]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_BaoHanh] FOREIGN KEY([MaBH])
REFERENCES [dbo].[BaoHanh] ([MaBH])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_BaoHanh]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPhieu])
REFERENCES [dbo].[PhieuNhap] ([MaPhieu])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([NhanVienLap])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([NhanVienLap])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Loai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPham] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Loai]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([NVSoHuu])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_PhanQuyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_PhanQuyen]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThuTheoHD]    Script Date: 7/12/2020 12:27:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BaoCaoDoanhThuTheoHD] (@NgayBatDau datetime, @NgayKetThuc datetime)
as
begin
	if(@NgayBatDau = '' AND @NgayKetThuc = '')
		begin
			SELECT hd.MaHD, hd.NgayLap, ct.MaSP, sp.TenSP, ct.SoLuongMua, ct.GiaBan,ct.KhuyenMai,ct.ThanhTien
			FROM HoaDon hd, ChiTietHoaDon ct, SanPham sp
			WHERE hd.MaHD = ct.MaHD AND ct.MaSP = sp.MaSP 
		end
	else
		begin
			SELECT hd.MaHD, hd.NgayLap, ct.MaSP, sp.TenSP, ct.SoLuongMua, ct.GiaBan,ct.KhuyenMai,ct.ThanhTien
			FROM HoaDon hd, ChiTietHoaDon ct, SanPham sp
			WHERE hd.MaHD = ct.MaHD AND ct.MaSP = sp.MaSP AND CONVERT(DATETIME,CONVERT(VARCHAR(10),hd.NgayLap,102),102) BETWEEN CONVERT(DATETIME,@NgayBatDau) AND CONVERT(DATETIME,@NgayKetThuc)
		end
end
GO
