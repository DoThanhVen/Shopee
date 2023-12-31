USE [master]
GO
/****** Object:  Database [Shoppe]    Script Date: 7/21/2023 4:41:07 PM ******/
CREATE DATABASE [Shoppe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shoppe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Shoppe.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shoppe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Shoppe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Shoppe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shoppe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shoppe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shoppe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shoppe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shoppe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shoppe] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shoppe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shoppe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shoppe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shoppe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shoppe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shoppe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shoppe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shoppe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shoppe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shoppe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shoppe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shoppe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shoppe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shoppe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shoppe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shoppe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shoppe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shoppe] SET RECOVERY FULL 
GO
ALTER DATABASE [Shoppe] SET  MULTI_USER 
GO
ALTER DATABASE [Shoppe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shoppe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shoppe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shoppe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shoppe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shoppe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Shoppe', N'ON'
GO
ALTER DATABASE [Shoppe] SET QUERY_STORE = ON
GO
ALTER DATABASE [Shoppe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Shoppe]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/21/2023 4:41:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Activated] [bit] NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Table_1_2] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 7/21/2023 4:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdBill] [nvarchar](12) NOT NULL,
	[OrderId] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Status] [nvarchar](255) NOT NULL,
	[ngay_xac_nhan] [datetime] NOT NULL,
	[ngay_giao_hang] [datetime] NOT NULL,
	[ngay_huy_don] [datetime] NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manager_products]    Script Date: 7/21/2023 4:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manager_products](
	[Id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Size] [nchar](255) NULL,
	[Color] [nvarchar](255) NULL,
	[Classify] [nvarchar](255) NULL,
	[Gender] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_ManagerProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/21/2023 4:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Size] [nvarchar](50) NULL,
	[Color] [nvarchar](255) NULL,
	[Classify] [nvarchar](255) NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](1000) NOT NULL,
	[Status] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Table_1_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/21/2023 4:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](2000) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Sale] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Table_1_3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 7/21/2023 4:41:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address], [Activated], [Admin]) VALUES (N'0327272727', N'12323', N'Đỗ Thanh Vẹn', N'klasink2511@gmail.com', N'logo.png', N'312123', 0, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address], [Activated], [Admin]) VALUES (N'0829024681', N'1', N'Đỗ Thanh Vẹn', N'dothanhven0303@gmail.com', N'logo.png', N'Cà Mau', 0, 0)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Address], [Activated], [Admin]) VALUES (N'0912471560', N'1', N'11111', N'thanhven2222@gmail.com', N'logo.png', N'123123', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (91, N'3a81df6fb0ea', 2019, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (92, N'46fc9a41e4ee', 2020, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (93, N'd9d9a54f0618', 2021, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (94, N'1362e11f3a09', 2021, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (95, N'9399bafa62ad', 2022, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (96, N'eb4556ebff95', 2022, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (97, N'6766f8baca6e', 2023, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Đã Hủy Đơn', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Bills] ([Id], [IdBill], [OrderId], [CreateDate], [Status], [ngay_xac_nhan], [ngay_giao_hang], [ngay_huy_don]) VALUES (98, N'b95ee95ebd86', 2024, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chờ Xác Nhận', CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime), CAST(N'2023-07-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[manager_products] ON 

INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (50, 61, N'Oversize                                                                                                                                                                                                                                                       ', N'Đỏ', N'', 0, 22, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (51, 61, N'M                                                                                                                                                                                                                                                              ', N'Trắng', N'', 0, 111, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (52, 61, N'M                                                                                                                                                                                                                                                              ', N'Trắng', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (53, 61, N'M                                                                                                                                                                                                                                                              ', N'Trắng', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (54, 61, N'M                                                                                                                                                                                                                                                              ', N'Trắng', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (55, 61, N'S                                                                                                                                                                                                                                                              ', N'Đen', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (56, 61, N'S                                                                                                                                                                                                                                                              ', N'Đen', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (57, 61, N'Oversize                                                                                                                                                                                                                                                       ', N'aaaaa', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (58, 61, N'Oversize                                                                                                                                                                                                                                                       ', N'aaaaa', N'', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
INSERT [dbo].[manager_products] ([Id], [ProductId], [Size], [Color], [Classify], [Gender], [Quantity], [CreateDate]) VALUES (59, 1061, N'M                                                                                                                                                                                                                                                              ', N'Đen', N'Cổ Bo', 0, 1, CAST(N'2023-07-21T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[manager_products] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [Username], [ProductId], [Quantity], [Size], [Color], [Classify], [CreateDate], [Address], [Status]) VALUES (2019, N'0912471560', 61, 1, N'Oversize                                          ', N'Trắng', NULL, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'123123', N'Đã Hủy Đơn')
INSERT [dbo].[OrderDetails] ([Id], [Username], [ProductId], [Quantity], [Size], [Color], [Classify], [CreateDate], [Address], [Status]) VALUES (2020, N'0912471560', 1060, 1, NULL, NULL, NULL, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'123123', N'Đã Hủy Đơn')
INSERT [dbo].[OrderDetails] ([Id], [Username], [ProductId], [Quantity], [Size], [Color], [Classify], [CreateDate], [Address], [Status]) VALUES (2021, N'0912471560', 1068, 1, NULL, NULL, NULL, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'123123', N'Đã Hủy Đơn')
INSERT [dbo].[OrderDetails] ([Id], [Username], [ProductId], [Quantity], [Size], [Color], [Classify], [CreateDate], [Address], [Status]) VALUES (2022, N'0912471560', 61, 1, NULL, NULL, NULL, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'123123', N'Đã Hủy Đơn')
INSERT [dbo].[OrderDetails] ([Id], [Username], [ProductId], [Quantity], [Size], [Color], [Classify], [CreateDate], [Address], [Status]) VALUES (2023, N'0912471560', 1061, 4, NULL, NULL, NULL, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'123123', N'Đã Hủy Đơn')
INSERT [dbo].[OrderDetails] ([Id], [Username], [ProductId], [Quantity], [Size], [Color], [Classify], [CreateDate], [Address], [Status]) VALUES (2024, N'0912471560', 1069, 1, NULL, NULL, NULL, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'123123', N'Chờ Xác Nhận')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (61, N'Áo', 1, N'85598f687c8033400b0bfd2a045fdcf0.jfif', 11, CAST(N'2023-06-16T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1060, N'Bình Đun Nước', 16, N'flash-sale-item-2.jpg', 2, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 123123)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1061, N'Áo', 1, N'top-search-13.jpg', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1062, N'Áo', 1, N'buy-item-cart.png', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1063, N'Áo', 1, N'buy-item-cart.png', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1064, N'Áo', 1, N'buy-item-cart.png', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1065, N'Áo', 1, N'buy-item-cart.png', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1066, N'Áo', 1, N'buy-item-cart.png', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1067, N'Váy Nữ', 20, N'8e5bb14cb9f17ae4a78fec37bec46d7b.jfif', 11, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1068, N'Quần Jean Ngắn Nữ', 12, N'sg-11134201-22100-9yu4mp8ls5hvea.jfif', 2, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 123000)
INSERT [dbo].[Products] ([Id], [Name], [TypeId], [Image], [Sale], [CreateDate], [Description], [Price]) VALUES (1069, N'Váy Nữ', 1, N'8e5bb14cb9f17ae4a78fec37bec46d7b.jfif', 22, CAST(N'2023-07-21T00:00:00.000' AS DateTime), N'Chi tiết sản phẩm', 111111)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (1, N'Áo Thun')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (2, N'Áo Sơ Mi')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (3, N'Quần Short')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (4, N'Quần Lót')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (5, N'Quần Tây')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (6, N'Quần Jean')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (7, N'Quần Kaki')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (8, N'Thắt Lưng')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (9, N'Khuyên Tai')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (10, N'Giày')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (11, N'Dép')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (12, N'Quần Đùi')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (13, N'Set Quần Áo')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (14, N'Kem')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (15, N'Son')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (16, N'Bình Đun Nước')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (17, N'Máy Sấy')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (18, N'Laptop')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (19, N'Điện Thoại')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (20, N'Váy')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (21, N'Vớ, Tất')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (22, N'Nhẫn')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (23, N'Tai Nghe')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (24, N'Mũ')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (25, N'Dây Chuyền')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (26, N'Đồng Hồ')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (27, N'Gấu Bông')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (28, N'Balo')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (29, N'Ốp Lưng')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (30, N'Quạt')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (31, N'Nước Hoa')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (32, N'Giày')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (33, N'Dép')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (34, N'Gấu Bông')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (35, N'Tủ Kệ')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (36, N'Mắt Kính')
INSERT [dbo].[TypeProduct] ([Id], [Name]) VALUES (37, N'Gương')
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Table_1_Photo]  DEFAULT (N'Photo.gif') FOR [Photo]
GO
ALTER TABLE [dbo].[Bills] ADD  CONSTRAINT [DF_Table_1_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Bills] ADD  CONSTRAINT [DF_Bills_CreateDate1]  DEFAULT (getdate()) FOR [ngay_xac_nhan]
GO
ALTER TABLE [dbo].[Bills] ADD  CONSTRAINT [DF_Bills_CreateDate1_1]  DEFAULT (getdate()) FOR [ngay_giao_hang]
GO
ALTER TABLE [dbo].[Bills] ADD  CONSTRAINT [DF_Bills_ngayGiaoHang1]  DEFAULT (getdate()) FOR [ngay_huy_don]
GO
ALTER TABLE [dbo].[manager_products] ADD  CONSTRAINT [DF_ManagerProducts_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Table_1_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[OrderDetails] ADD  CONSTRAINT [DF_Table_1_CreateDate_1]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Table_1_Image_1]  DEFAULT (N'Product.gif') FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Table_1_CreateDate_2]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_OrderDetails] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderDetails] ([Id])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_OrderDetails]
GO
ALTER TABLE [dbo].[manager_products]  WITH CHECK ADD  CONSTRAINT [FK_manager_products_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[manager_products] CHECK CONSTRAINT [FK_manager_products_Products]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Accounts]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_TypeProduct] FOREIGN KEY([TypeId])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_TypeProduct]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã khách hàng' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mật khẩu đăng nhập' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Họ và tên' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Fullname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts', @level2type=N'COLUMN',@level2name=N'Photo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã chi tiết' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hóa đơn' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Username'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã hàng hóa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Số lượng mua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Địa chỉ nhận' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderDetails', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Mã loại' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tên tiếng Việt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hình ảnh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Image'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ngày sản xuất' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
USE [master]
GO
ALTER DATABASE [Shoppe] SET  READ_WRITE 
GO
