USE [DreamHotel]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingID] [bigint] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[BookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BookingDeatail]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDeatail](
	[BookingDetaiID] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingID] [bigint] NOT NULL,
	[MaPhong] [nvarchar](10) NULL,
	[NgayDen] [date] NULL,
	[NgayDi] [date] NULL,
 CONSTRAINT [PK_BookingDeatail] PRIMARY KEY CLUSTERED 
(
	[BookingDetaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nvarchar](10) NOT NULL,
	[TenChucVu] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[MaDoanhThu] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NULL,
	[TenKH] [nvarchar](100) NULL,
	[NgayDen] [date] NULL,
	[NgayDi] [date] NULL,
	[SoDienThoai] [nvarchar](20) NULL,
	[Email] [nvarchar](20) NULL,
	[TongTien] [bigint] NULL,
	[MaKS] [nvarchar](10) NULL,
 CONSTRAINT [PK_DoanhThu] PRIMARY KEY CLUSTERED 
(
	[MaDoanhThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[MaKS] [nvarchar](10) NOT NULL,
	[TenTP] [nvarchar](50) NULL,
	[TenKS] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SoDienThoai] [nvarchar](30) NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[MaKS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[TinhTrang] [nvarchar](2) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[MaLoaiPhong] [nvarchar](10) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NULL,
	[GiaTien] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TomTat] [nvarchar](1000) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nvarchar](10) NOT NULL,
	[MaKS] [nvarchar](10) NULL,
	[MaChucVu] [nvarchar](10) NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[MaPhong] [nvarchar](10) NOT NULL,
	[MaKS] [nvarchar](10) NULL,
	[MaLoaiPhong] [nvarchar](10) NULL,
	[SoPhong] [nvarchar](10) NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[MaPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThanhPho]    Script Date: 4/24/2019 8:22:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhPho](
	[MaTP] [nvarchar](10) NOT NULL,
	[TenTP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanhPho] PRIMARY KEY CLUSTERED 
(
	[MaTP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV01', N'Nhân Viên 23')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV02', N'Trưởng Phòng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV03', N'Nhân Viên Lễ Tân')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV04', N'Kế Toán')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV05', N'Tài Chính')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV06', N'Bảo Vệ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV07', N'Đầu Bếp')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV08', N'Nhân viên vệ sinh công cộng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV09', N'Nhân viên đặt phòng')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV10', N'Nhân viên hành lý')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV11', N' Nhân viên kế toán tổng hợp')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV12', N'Nhân viên kế toán công nợ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV13', N'Nhân viên thủ quỹ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV14', N'Nhân viên Marketing')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV15', N'Nhân viên sales khách công ty')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV16', N'Nhân viên sales khách tour')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV17', N'Nhân viên sales trên Internet')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV18', N'Nhân viên kế toán nội bộ')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV19', N'Nhân viên pha chế cà phê')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'CV20', N'Nhân viên pha chế rượu, cocktail')
SET IDENTITY_INSERT [dbo].[DoanhThu] ON 

INSERT [dbo].[DoanhThu] ([MaDoanhThu], [BookingId], [TenKH], [NgayDen], [NgayDi], [SoDienThoai], [Email], [TongTien], [MaKS]) VALUES (1, 1555959126944, N'Vo Van Hieu', CAST(N'2019-04-23' AS Date), CAST(N'2019-04-27' AS Date), N'0326797145', N'admin@gmail.com', 280000000, N'DN01')
INSERT [dbo].[DoanhThu] ([MaDoanhThu], [BookingId], [TenKH], [NgayDen], [NgayDi], [SoDienThoai], [Email], [TongTien], [MaKS]) VALUES (2, 1556022450714, N'Vo Van Hieu', CAST(N'2019-04-23' AS Date), CAST(N'2019-04-26' AS Date), N'0326797145', N'', 420000000, N'DN01')
INSERT [dbo].[DoanhThu] ([MaDoanhThu], [BookingId], [TenKH], [NgayDen], [NgayDi], [SoDienThoai], [Email], [TongTien], [MaKS]) VALUES (3, 1556090164090, N'vo van hieu', CAST(N'2019-04-26' AS Date), CAST(N'2019-04-27' AS Date), N'032727272', N'hieupro@gmail.com', 15000000, N'DN01')
SET IDENTITY_INSERT [dbo].[DoanhThu] OFF
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'DN01', N'Đằ Nẵng', N'Đà Nẵng Royal Hotel', N'05-Bạch Đằng, thành phố Đà Nẵng', N'0236365563')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'DN02', N'Đằ Nẵng', N'Đà Nẵng Hotel Luxury', N'135-Ngô Quyền, thành phố Đà Nẵng', N'0236654456')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'HCM01', N' Hồ Chí Minh', N'Hồ Chí Minh Royal Hotel', N'78-Hàm Nghi, Quận 1, Thành Phố Hồ Chí Minh', N'028456789')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'HCM02', N'Hồ Chí Minh', N'Hồ Chí Minh Luxury', N'152-Ngô Quyền, Quận 7 thàn phố Hồ Chí Minh', N'028789456')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'HN01', N'Hà Nội', N'Hà Nội Royal Hotel', N'45-Nguyễn Nhạc, thành phố Hà Nội', N'02445646')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'HN02', N'Hà Nội', N'Hà Nội Grand Hotel', N'68-Nguyễn Lữ', N'02478998')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'HN03', N'Hà Nội', N'Hà Nội Holiday', N'98-Lữ Gia, thành phố Hà Nội', N'024123123')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'HP01', N' Hải Phòng', N'Hài Phòng Royal Hotel', N'05-Xuân Diệu', N'4567894511')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'PQ01', N'Phú Quốc', N'Phú Quốc Royal Hotel', N'45-Bạch Đằng', N'7894657984')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'QN01', N'Quy Nhơn', N'Quy Nhơn Royal Hotel', N'155-Xuân Diệu, thành phố Quy Nhơn', N'0256789987')
INSERT [dbo].[KhachSan] ([MaKS], [TenTP], [TenKS], [DiaChi], [SoDienThoai]) VALUES (N'QN02', N'Quy Nhơn', N'Quy Nhơn Royal luxury', N'125-Ngô Mây, thành phố Quy Nhơn', N'0256123321')
SET IDENTITY_INSERT [dbo].[LienHe] ON 

INSERT [dbo].[LienHe] ([HoTen], [Email], [SoDT], [Message], [MaLienHe], [TinhTrang]) VALUES (N'pham thanh hang', N'hang@gmail.com', N'0904949494', N'hihi', 16, NULL)
SET IDENTITY_INSERT [dbo].[LienHe] OFF
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien], [Image], [MoTa], [TomTat]) VALUES (N'LP01', N'Double Deluxe Room', 1500000, N'room1.jpg', N'40m2', NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien], [Image], [MoTa], [TomTat]) VALUES (N'LP02', N'Single Deluxe Room', 1300000, N'room2.jpg', N'30m2', NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien], [Image], [MoTa], [TomTat]) VALUES (N'LP03', N'Honeymoon Suit', 1800000, N'room3.jpg', N'45m2', NULL)
INSERT [dbo].[LoaiPhong] ([MaLoaiPhong], [TenLoaiPhong], [GiaTien], [Image], [MoTa], [TomTat]) VALUES (N'LP04', N'Econony Double', 1700000, N'room4.jpg', N'40m2', NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([TenDangNhap], [MatKhau], [id]) VALUES (N'admin', N'123', 1)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV07', N'DN02', NULL, N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV08', N'DN01', N'CV04', N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV09', N'DN01', N'CV09', N'Nguyễn Văn A', N'Nam', N'22/08/1999', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV10', N'DN01', N'CV10', N'Nguyễn Văn A', N'Nam', N'22/08/2000', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV11', N'DN01', N'CV03', N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV12', N'HCM01', NULL, N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV13', N'HN02', NULL, N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV14', N'DN02', NULL, N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV15', N'DN01', N'CV15', N'Nguyễn Văn A', N'Nam', N'22/08/2005', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV16', N'DN01', N'CV16', N'Nguyễn Văn A', N'Nam', N'22/08/2006', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV17', N'DN01', N'CV17', N'Nguyễn Văn A', N'Nam', N'22/08/2007', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV18', N'DN01', N'CV18', N'Nguyễn Văn A', N'Nam', N'22/08/2008', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV19', N'DN01', N'CV19', N'Nguyễn Văn A', N'Nam', N'22/08/2009', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV21', N'DN02', N'CV01', N'Nguyễn Văn A', N'Nam', N'22/08/1991', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV22', N'DN02', N'CV02', N'Nguyễn Văn A', N'Nữ', N'22/08/1992', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV23', N'DN02', N'CV03', N'Nguyễn Văn A', N'Nam', N'22/08/1993', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV24', N'DN02', N'CV04', N'Nguyễn Văn A', N'Nam', N'22/08/1994', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV25', N'DN02', N'CV05', N'Nguyễn Văn A', N'Nam', N'22/08/1995', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV26', N'DN02', N'CV06', N'Nguyễn Văn A', N'Nam', N'22/08/1996', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV27', N'DN02', N'CV07', N'Nguyễn Văn A', N'Nam', N'22/08/1997', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV28', N'DN02', N'CV08', N'Nguyễn Văn A', N'Nam', N'22/08/1998', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV29', N'DN02', N'CV09', N'Nguyễn Văn A', N'Nam', N'22/08/1999', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV30', N'DN02', N'CV10', N'Nguyễn Văn A', N'Nam', N'22/08/2000', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV31', N'DN02', N'CV11', N'Nguyễn Văn A', N'Nam', N'22/08/2001', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV32', N'DN02', N'CV12', N'Nguyễn Văn A', N'Nam', N'22/08/2002', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV33', N'DN02', N'CV13', N'Nguyễn Văn A', N'Nam', N'22/08/2003', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV34', N'DN02', N'CV14', N'Nguyễn Văn A', N'Nam', N'22/08/2004', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV35', N'DN02', N'CV15', N'Nguyễn Văn A', N'Nam', N'22/08/2005', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV36', N'DN02', N'CV16', N'Nguyễn Văn A', N'Nam', N'22/08/2006', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV37', N'DN02', N'CV17', N'Nguyễn Văn A', N'Nam', N'22/08/2007', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV38', N'DN02', N'CV18', N'Nguyễn Văn A', N'Nam', N'22/08/2008', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV39', N'DN02', N'CV19', N'Nguyễn Văn A', N'Nam', N'22/08/2009', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV40', N'DN02', N'CV20', N'Nguyễn Văn A', N'Nam', N'22/08/2010', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV41', N'QN01', N'CV07', N'Nguy?n V?n A', N'Nu', N'', N'979979797', N'hh@gmail.com', N'dsfsdfsdff')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV42', N'QN01', N'CV02', N'Nguyễn Văn A', N'Nữ', N'22/08/1992', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV43', N'QN01', N'CV03', N'Nguyễn Văn A', N'Nam', N'22/08/1993', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV44', N'QN01', N'CV04', N'Nguyễn Văn A', N'Nam', N'22/08/1994', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV45', N'QN01', N'CV05', N'Nguyễn Văn A', N'Nam', N'22/08/1995', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV46', N'QN01', N'CV06', N'Nguyễn Văn A', N'Nam', N'22/08/1996', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV47', N'QN01', N'CV07', N'Nguyễn Văn A', N'Nam', N'22/08/1997', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV48', N'QN01', N'CV08', N'Nguyễn Văn A', N'Nam', N'22/08/1998', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV49', N'QN01', N'CV09', N'Nguyễn Văn A', N'Nam', N'22/08/1999', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV50', N'QN01', N'CV10', N'Nguyễn Văn A', N'Nam', N'22/08/2000', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV51', N'QN01', N'CV11', N'Nguyễn Văn A', N'Nam', N'22/08/2001', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV52', N'QN01', N'CV12', N'Nguyễn Văn A', N'Nam', N'22/08/2002', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV53', N'QN01', N'CV13', N'Nguyễn Văn A', N'Nam', N'22/08/2003', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV54', N'QN01', N'CV14', N'Nguyễn Văn A', N'Nam', N'22/08/2004', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV55', N'QN01', N'CV15', N'Nguyễn Văn A', N'Nam', N'22/08/2005', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV56', N'QN01', N'CV16', N'Nguyễn Văn A', N'Nam', N'22/08/2006', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV57', N'QN01', N'CV17', N'Nguyễn Văn A', N'Nam', N'22/08/2007', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV58', N'QN01', N'CV18', N'Nguyễn Văn A', N'Nam', N'22/08/2008', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV59', N'QN01', N'CV19', N'Nguyễn Văn A', N'Nam', N'22/08/2009', N'979979797', N'hh@gmail.com', N'31-Hàm Nghi')
INSERT [dbo].[NhanVien] ([MaNhanVien], [MaKS], [MaChucVu], [TenNhanVien], [GioiTinh], [NgaySinh], [SoDienThoai], [Email], [DiaChi]) VALUES (N'NV60', N'QN01', N'CV20', N'Nguyễn Văn A', N'Nam', N'22/08/2010', N'979979797', N'hh@gmail.com', NULL)
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P01', N'DN01', N'LP01', N'P001')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P02', N'DN01', N'LP02', N'P002')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P03', N'DN01', N'LP03', N'P003')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P04', N'DN01', N'LP04', N'P004')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P05', N'DN01', N'LP01', N'P005')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P06', N'DN01', N'LP02', N'P006')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P07', N'DN01', N'LP01', N'P007')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P08', N'DN01', N'LP01', N'P008')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P09', N'DN01', N'LP01', N'P009')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P10', N'DN01', N'LP01', N'P010')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P100', N'QN01', N'LP02', N'P020')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P101', N'QN01', N'LP03', N'P021')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P102', N'QN01', N'LP03', N'P022')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P103', N'QN01', N'LP03', N'P023')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P104', N'QN01', N'LP03', N'P024')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P105', N'QN01', N'LP03', N'P025')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P106', N'QN01', N'LP03', N'P026')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P107', N'QN01', N'LP03', N'P027')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P108', N'QN01', N'LP03', N'P028')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P109', N'QN01', N'LP03', N'P029')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P11', N'DN01', N'LP01', N'P011')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P110', N'QN01', N'LP03', N'P030')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P111', N'QN01', N'LP04', N'P031')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P112', N'QN01', N'LP04', N'P032')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P113', N'QN01', N'LP04', N'P033')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P114', N'QN01', N'LP04', N'P034')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P115', N'QN01', N'LP04', N'P035')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P116', N'QN01', N'LP04', N'P036')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P117', N'QN01', N'LP04', N'P037')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P118', N'QN01', N'LP04', N'P038')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P119', N'QN01', N'LP04', N'P039')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P12', N'DN01', N'LP01', N'P012')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P120', N'QN01', N'LP04', N'P040')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P13', N'DN01', N'LP01', N'P013')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P14', N'DN01', N'LP01', N'P014')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P15', N'DN01', N'LP02', N'P014')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P16', N'DN01', N'LP02', N'P015')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P17', N'DN01', N'LP02', N'P016')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P18', N'DN01', N'LP02', N'P017')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P19', N'DN01', N'LP02', N'P018')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P20', N'DN01', N'LP02', N'P019')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P21', N'DN01', N'LP02', N'P020')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P22', N'DN01', N'LP02', N'P021')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P23', N'DN01', N'LP02', N'P022')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P24', N'DN01', N'LP03', N'P023')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P25', N'DN01', N'LP03', N'P024')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P26', N'DN01', N'LP03', N'P025')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P27', N'DN01', N'LP03', N'P026')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P28', N'DN01', N'LP03', N'P027')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P29', N'DN01', N'LP03', N'P028')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P30', N'DN01', N'LP03', N'P029')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P31', N'DN01', N'LP03', N'P030')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P32', N'DN01', N'LP03', N'P031')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P33', N'DN01', N'LP04', N'P031')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P34', N'DN01', N'LP04', N'P032')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P35', N'DN01', N'LP04', N'P033')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P36', N'DN01', N'LP04', N'P034')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P37', N'DN01', N'LP04', N'P035')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P38', N'DN01', N'LP04', N'P036')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P39', N'DN01', N'LP04', N'P037')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P40', N'DN01', N'LP04', N'P038')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P41', N'DN01', N'LP04', N'P039')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P42', N'DN02', N'LP04', N'P001')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P43', N'DN02', N'LP04', N'P002')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P44', N'DN02', N'LP04', N'P003')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P45', N'DN02', N'LP04', N'P004')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P46', N'DN02', N'LP04', N'P005')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P47', N'DN02', N'LP04', N'P006')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P48', N'DN02', N'LP04', N'P008')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P49', N'DN02', N'LP04', N'P009')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P50', N'DN02', N'LP04', N'P010')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P51', N'DN02', N'LP04', N'P011')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P52', N'DN02', N'LP01', N'P012')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P53', N'DN02', N'LP01', N'P013')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P54', N'DN02', N'LP01', N'P014')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P55', N'DN02', N'LP01', N'P015')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P56', N'DN02', N'LP01', N'P016')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P57', N'DN02', N'LP01', N'P017')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P58', N'DN02', N'LP01', N'P018')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P59', N'DN02', N'LP01', N'P019')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P60', N'DN02', N'LP01', N'P020')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P61', N'DN02', N'LP01', N'P021')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P62', N'DN02', N'LP02', N'P022')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P63', N'DN02', N'LP02', N'P023')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P64', N'DN02', N'LP02', N'P024')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P65', N'DN02', N'LP02', N'P025')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P66', N'DN02', N'LP02', N'P026')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P67', N'DN02', N'LP02', N'P027')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P68', N'DN02', N'LP02', N'P028')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P69', N'DN02', N'LP02', N'P029')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P70', N'DN02', N'LP02', N'P030')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P71', N'DN02', N'LP03', N'P031')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P72', N'DN02', N'LP03', N'P032')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P73', N'DN02', N'LP03', N'P033')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P74', N'DN02', N'LP03', N'P034')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P75', N'DN02', N'LP03', N'P035')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P76', N'DN02', N'LP03', N'P036')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P77', N'DN02', N'LP03', N'P037')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P78', N'DN02', N'LP03', N'P038')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P79', N'DN02', N'LP03', N'P039')
GO
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P80', N'DN02', N'LP03', N'P040')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P81', N'QN01', N'LP01', N'P001')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P82', N'QN01', N'LP01', N'P002')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P83', N'QN01', N'LP01', N'P003')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P84', N'QN01', N'LP01', N'P004')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P85', N'QN01', N'LP01', N'P005')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P86', N'QN01', N'LP01', N'P006')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P87', N'QN01', N'LP01', N'P007')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P88', N'QN01', N'LP01', N'P008')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P89', N'QN01', N'LP01', N'P009')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P90', N'QN01', N'LP01', N'P010')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P91', N'QN01', N'LP02', N'P011')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P92', N'QN01', N'LP02', N'P012')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P93', N'QN01', N'LP02', N'P013')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P94', N'QN01', N'LP02', N'P014')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P95', N'QN01', N'LP02', N'P015')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P96', N'QN01', N'LP02', N'P016')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P97', N'QN01', N'LP02', N'P017')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P98', N'QN01', N'LP02', N'P018')
INSERT [dbo].[Phong] ([MaPhong], [MaKS], [MaLoaiPhong], [SoPhong]) VALUES (N'P99', N'QN01', N'LP02', N'P019')
ALTER TABLE [dbo].[BookingDeatail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDeatail_BookingDeatail] FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([BookingID])
GO
ALTER TABLE [dbo].[BookingDeatail] CHECK CONSTRAINT [FK_BookingDeatail_BookingDeatail]
GO
ALTER TABLE [dbo].[BookingDeatail]  WITH CHECK ADD  CONSTRAINT [FK_BookingDeatail_Phong] FOREIGN KEY([MaPhong])
REFERENCES [dbo].[Phong] ([MaPhong])
GO
ALTER TABLE [dbo].[BookingDeatail] CHECK CONSTRAINT [FK_BookingDeatail_Phong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NhanVien] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NhanVien]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhachSan] FOREIGN KEY([MaKS])
REFERENCES [dbo].[KhachSan] ([MaKS])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhachSan]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([MaLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([MaLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
