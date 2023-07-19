USE [master]
GO
/****** Object:  Database [Shoppe]    Script Date: 6/16/2023 1:08:00 AM ******/
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
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/16/2023 1:08:00 AM ******/
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
/****** Object:  Table [dbo].[Bills]    Script Date: 6/16/2023 1:08:00 AM ******/
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
/****** Object:  Table [dbo].[manager_products]    Script Date: 6/16/2023 1:08:00 AM ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/16/2023 1:08:00 AM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 6/16/2023 1:08:00 AM ******/
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
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 6/16/2023 1:08:00 AM ******/
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
