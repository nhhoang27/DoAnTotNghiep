USE [DongHo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuanModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuanModel](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[SanPham_ID] [int] NOT NULL,
	[SanPhamID] [int] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NgayDang] [datetime2](7) NOT NULL,
	[TrangThai] [int] NOT NULL,
 CONSTRAINT [PK_BinhLuanModel] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[HoaDon_ID] [int] NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[SoLuong] [nvarchar](max) NULL,
	[Gia] [nvarchar](max) NULL,
	[KhuyenMai] [int] NOT NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_ChiTietHoaDonModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucModel](
	[ID_DanhMuc] [nvarchar](450) NOT NULL,
	[TenDanhMuc] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_DanhMucModel] PRIMARY KEY CLUSTERED 
(
	[ID_DanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[HoTen] [nvarchar](max) NULL,
	[Sdt] [nvarchar](max) NULL,
	[ThanhTien] [int] NOT NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_HoaDonModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPhamModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPhamModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
	[NhaCungCap] [int] NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiSanPhamModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCapModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCapModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaCungCapModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[MaLoai] [int] NOT NULL,
	[DanhMuc] [nvarchar](450) NULL,
	[Gia] [int] NOT NULL,
	[GiaMoi] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Image_List] [nvarchar](max) NULL,
	[Size] [nvarchar](max) NULL,
	[SoLuong] [int] NOT NULL,
	[MoTaNgan] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[NgayLap] [datetime2](7) NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPhamModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserModel]    Script Date: 5/30/2022 10:17:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[HoTen] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Sdt] [nvarchar](max) NULL,
	[Loai] [nvarchar](max) NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201207030755_KhoiTao', N'3.1.10')
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonModel] ON 

INSERT [dbo].[ChiTietHoaDonModel] ([ID], [HoaDon_ID], [TenSP], [SoLuong], [Gia], [KhuyenMai], [ThanhTien], [TrangThai]) VALUES (23, 24, N'SHEEN SHE-4547M-2A', N'1', N'21123', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonModel] OFF
GO
INSERT [dbo].[DanhMucModel] ([ID_DanhMuc], [TenDanhMuc], [TrangThai]) VALUES (N'DM1', N'NEW PRODUCTS', N'1')
INSERT [dbo].[DanhMucModel] ([ID_DanhMuc], [TenDanhMuc], [TrangThai]) VALUES (N'DM2', N'LATEST PRODUCTS', N'1')
INSERT [dbo].[DanhMucModel] ([ID_DanhMuc], [TenDanhMuc], [TrangThai]) VALUES (N'DM3', N'BEST SELLER', N'1')
GO
SET IDENTITY_INSERT [dbo].[HoaDonModel] ON 

INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (19, 1, N'hoàng', N'0944236629', 123213123, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (20, 3, N'hoàng', N'0944236629', 12313, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (21, 3, N'hoàng', N'0944236629', 12313, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (22, 1, N'hoàng', N'0944236629', 21123, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (23, 2, N'hoàng', N'12313123', 123213123, 1)
INSERT [dbo].[HoaDonModel] ([ID], [User_ID], [HoTen], [Sdt], [ThanhTien], [TrangThai]) VALUES (24, 1, N'huy', N'0944236629', 21123, 1)
SET IDENTITY_INSERT [dbo].[HoaDonModel] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPhamModel] ON 

INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (5, N'Đồng hồ nam', 5, N'1')
INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (10, N'Đồng hồ nữ', 5, N'1')
INSERT [dbo].[LoaiSanPhamModel] ([ID], [TenLoai], [NhaCungCap], [TrangThai]) VALUES (11, N'Phụ kiện', 5, N'1')
SET IDENTITY_INSERT [dbo].[LoaiSanPhamModel] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCapModel] ON 

INSERT [dbo].[NhaCungCapModel] ([ID], [TenNCC], [DiaChi], [TrangThai]) VALUES (5, N'casio', N'hà nội', N'1')
INSERT [dbo].[NhaCungCapModel] ([ID], [TenNCC], [DiaChi], [TrangThai]) VALUES (18, N'test222', N'test100', N'1')
SET IDENTITY_INSERT [dbo].[NhaCungCapModel] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhamModel] ON 

INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (17, N'EDIFICE EQS-930NIS-1A', 5, N'DM1', 1231231312, 123213123, N'17.png', N'172nd.png', N'1', 12, N'dong ho dep', N'đồng hồ chống nước cho nam', CAST(N'2022-05-19T21:11:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (18, N'G-SHOCK GMW-B5000MB-1', 5, N'DM2', 100000000, 1200000, N'18.png', N'182nd.png', N'2', 8, NULL, NULL, CAST(N'2022-05-03T22:28:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (19, N'G-SHOCK MRG-B5000B-1', 5, N'DM3', 45900000, 56000, N'19.png', N'192nd.png', N'2', 23, NULL, NULL, CAST(N'2022-05-11T22:29:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (20, N'SHEEN SHE-4547M-2A', 10, N'DM1', 12312313, 21123, N'20.png', N'202nd.png', N'1', 213, NULL, NULL, CAST(N'2021-11-24T22:30:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (21, N'SHEEN SHE-4543GL-8A', 10, N'DM1', 2132313, 12313, N'21.png', N'212nd.png', N'1', 56, NULL, NULL, CAST(N'2021-03-26T22:33:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (22, N'SHEEN SHE-4544G-9A', 10, N'DM1', 445454545, 3224342, N'22.png', N'222nd.png', N'1', 23, NULL, NULL, CAST(N'2022-05-11T22:38:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (23, N'EDIFICE ECB-30D-1A', 5, N'DM3', 125687879, 3434657, N'23.png', N'232nd.png', N'2', 20, NULL, NULL, CAST(N'2022-05-19T22:40:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (24, N'PRO TREK PRW-3500SYT-1', 5, N'DM2', 4000000, 300000, N'24.png', N'242nd.png', N'2', 50, NULL, NULL, CAST(N'2022-02-17T22:57:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (25, N'SHEEN SHE-4540CGL-7A', 10, N'DM1', 3000000, 2900000, N'25.png', N'252nd.png', N'1', 7, NULL, NULL, CAST(N'2022-05-12T22:59:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (26, N'CASIO MTP-VT01BL-1B', 5, N'DM3', 1456000, 1250000, N'26.png', N'262nd.png', N'2', 7, NULL, NULL, CAST(N'2022-04-08T21:38:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (27, N'CASIO MTP-VD02G-1E', 5, N'DM1', 2145000, 2000000, N'27.png', N'272nd.png', N'2', 20, NULL, NULL, CAST(N'2022-05-06T21:40:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (28, N'CASIO MTP-VD02L-7E', 5, N'DM1', 3123000, 2000000, N'28.png', N'282nd.png', N'2', 12, NULL, NULL, CAST(N'2022-03-18T21:43:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (29, N'CASIO MTP-B305D-1EV', 5, N'DM1', 2500000, 1000000, N'29.png', N'292nd.png', N'2', 15, NULL, NULL, CAST(N'2022-05-07T21:44:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (30, N'CASIO MTP-VD02BL-2E', 5, N'DM1', 1184000, 1000000, N'30.png', N'302nd.png', N'2', 40, NULL, NULL, CAST(N'2021-12-30T21:48:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (31, N'CASIO LTP-B110M-1AV', 5, N'DM1', 2270000, 2200000, N'31.png', N'312nd.png', N'2', 20, NULL, NULL, CAST(N'2022-05-04T21:50:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (32, N'CASIO MTP-B300D-7AV', 5, N'DM1', 3010000, 3000000, N'32.png', N'322nd.png', N'2', 5, NULL, NULL, CAST(N'2022-04-01T21:52:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (33, N'CASIO A100WEG-9A', 5, N'DM1', 2468000, 2486000, N'33.png', N'332nd.png', N'2', 20, NULL, NULL, CAST(N'2021-05-05T21:53:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (34, N'CASIO MTP-B100D-1EV', 5, N'DM1', 2270000, 2170000, N'34.png', N'342nd.png', N'2', 19, NULL, NULL, CAST(N'2022-03-31T21:54:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (35, N'SHEEN SHE-4057PGL-7B', 10, N'DM1', 3400000, 3400000, N'35.png', N'352nd.png', N'1', 7, NULL, NULL, CAST(N'2022-01-19T21:56:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (36, N'SHEEN SHE-4533PGL-1A', 10, N'DM2', 4560000, 4560000, N'36.png', N'362nd.png', N'1', 67, NULL, NULL, CAST(N'2022-05-04T21:58:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (37, N'SHEEN SHN-5010L-4A', 10, N'DM1', 4111000, 4000000, N'37.png', N'372nd.png', N'1', 15, NULL, NULL, CAST(N'2022-05-30T21:59:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (38, N'SHEEN SHE-3059PGL-7A', 10, N'DM1', 2090200, 1900000, N'38.png', N'382nd.png', N'1', 30, NULL, NULL, CAST(N'2022-05-30T22:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (39, N'SHEEN SHE-3809PG-2A', 10, N'DM1', 4363000, 4363000, N'39.png', N'392nd.png', N'1', 9, NULL, NULL, CAST(N'2022-05-30T22:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (40, N'SHEEN SHE-3066PG-2A', 10, N'DM1', 4111000, 3500000, N'40.png', N'402nd.png', N'1', 10, NULL, NULL, CAST(N'2022-05-30T22:01:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (41, N'Dây Đeo Bằng Vải BANDGS01B-3 Có Hoa Văn', 11, N'DM1', 1208000, 1200000, N'41.jpg', N'412nd.jpg', N'2', 40, NULL, NULL, CAST(N'2022-05-30T22:06:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (42, N'Dây Đeo Bằng Vải CORDURA BANDGS01BC-4 Màu Cam', 11, N'DM2', 1208100, 1200000, N'42.jpg', N'422nd.jpg', N'1', 80, NULL, NULL, CAST(N'2022-05-30T22:07:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (43, N'Dây Đeo Bằng Nhựa BANDGS01P-1 Màu Đen', 11, N'DM3', 1108100, 1100000, N'43.jpg', N'432nd.jpg', N'1', 56, NULL, NULL, CAST(N'2022-05-13T22:08:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (44, N'Dây Đeo Bằng Vải BANDGS01V-1', 11, N'DM1', 1208000, 1200000, N'44.jpg', N'442nd.jpg', N'2', 43, NULL, NULL, CAST(N'2022-05-30T22:09:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (45, N'Dây Da Đồng Hồ Tissot 1853 Màu Đen Cao Cấp size 20 x 22mm', 11, N'DM2', 300000, 300000, N'45.jpg', N'452nd.jpg', N'2', 51, NULL, NULL, CAST(N'2022-05-25T22:09:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (46, N'Dây Dù Đồng Hồ Quân Đội Màu Xanh Size 18, 20, 22, 24mm Cao Cấp', 11, N'DM2', 270000, 270000, N'46.jpg', N'462nd.jpg', N'2', 43, NULL, NULL, CAST(N'2022-05-11T22:11:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[SanPhamModel] ([ID], [TenSP], [MaLoai], [DanhMuc], [Gia], [GiaMoi], [Image], [Image_List], [Size], [SoLuong], [MoTaNgan], [MoTa], [NgayLap], [TrangThai]) VALUES (47, N'Dây Da Đồng hồ Cá sấu DH-390 Màu Nâu Cao Cấp', 11, N'DM1', 390000, 350000, N'47.jpg', N'472nd.jpg', N'1', 34, NULL, NULL, CAST(N'2022-05-20T22:11:00.0000000' AS DateTime2), N'1')
SET IDENTITY_INSERT [dbo].[SanPhamModel] OFF
GO
SET IDENTITY_INSERT [dbo].[UserModel] ON 

INSERT [dbo].[UserModel] ([ID], [UserName], [Password], [HoTen], [DiaChi], [Email], [Sdt], [Loai], [TrangThai]) VALUES (1, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'Nguyễn Admin', NULL, NULL, NULL, N'0', N'1')
INSERT [dbo].[UserModel] ([ID], [UserName], [Password], [HoTen], [DiaChi], [Email], [Sdt], [Loai], [TrangThai]) VALUES (2, N'hoang1', N'F82E62D7C3EA69CC12B5CDB8D621DAB6', N'hoang', N'hà nội', N'hoang@gmail.com', N'0944236629', N'1', N'0')
INSERT [dbo].[UserModel] ([ID], [UserName], [Password], [HoTen], [DiaChi], [Email], [Sdt], [Loai], [TrangThai]) VALUES (3, N'hoang', N'E10ADC3949BA59ABBE56E057F20F883E', N'hoàng', N'hà đông', N'hoang1@gmail.com', N'12313123', N'1', N'1')
SET IDENTITY_INSERT [dbo].[UserModel] OFF
GO
ALTER TABLE [dbo].[BinhLuanModel]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanModel_SanPhamModel_SanPhamID] FOREIGN KEY([SanPhamID])
REFERENCES [dbo].[SanPhamModel] ([ID])
GO
ALTER TABLE [dbo].[BinhLuanModel] CHECK CONSTRAINT [FK_BinhLuanModel_SanPhamModel_SanPhamID]
GO
ALTER TABLE [dbo].[BinhLuanModel]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuanModel_UserModel_User_ID] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BinhLuanModel] CHECK CONSTRAINT [FK_BinhLuanModel_UserModel_User_ID]
GO
ALTER TABLE [dbo].[ChiTietHoaDonModel]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonModel_HoaDonModel_HoaDon_ID] FOREIGN KEY([HoaDon_ID])
REFERENCES [dbo].[HoaDonModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonModel] CHECK CONSTRAINT [FK_ChiTietHoaDonModel_HoaDonModel_HoaDon_ID]
GO
ALTER TABLE [dbo].[HoaDonModel]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonModel_UserModel_User_ID] FOREIGN KEY([User_ID])
REFERENCES [dbo].[UserModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonModel] CHECK CONSTRAINT [FK_HoaDonModel_UserModel_User_ID]
GO
ALTER TABLE [dbo].[LoaiSanPhamModel]  WITH CHECK ADD  CONSTRAINT [FK_LoaiSanPhamModel_NhaCungCapModel_NhaCungCap] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[NhaCungCapModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoaiSanPhamModel] CHECK CONSTRAINT [FK_LoaiSanPhamModel_NhaCungCapModel_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPhamModel]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamModel_DanhMucModel_DanhMuc] FOREIGN KEY([DanhMuc])
REFERENCES [dbo].[DanhMucModel] ([ID_DanhMuc])
GO
ALTER TABLE [dbo].[SanPhamModel] CHECK CONSTRAINT [FK_SanPhamModel_DanhMucModel_DanhMuc]
GO
ALTER TABLE [dbo].[SanPhamModel]  WITH CHECK ADD  CONSTRAINT [FK_SanPhamModel_LoaiSanPhamModel_MaLoai] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSanPhamModel] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhamModel] CHECK CONSTRAINT [FK_SanPhamModel_LoaiSanPhamModel_MaLoai]
GO
