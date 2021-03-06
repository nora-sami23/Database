USE [master]
GO
/****** Object:  Database [Mini store]    Script Date: 6/7/2020 6:51:26 AM ******/
CREATE DATABASE [Mini store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mini store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Mini store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mini store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Mini store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Mini store] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mini store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mini store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mini store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mini store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mini store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mini store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mini store] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mini store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mini store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mini store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mini store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mini store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mini store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mini store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mini store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mini store] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mini store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mini store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mini store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mini store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mini store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mini store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mini store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mini store] SET RECOVERY FULL 
GO
ALTER DATABASE [Mini store] SET  MULTI_USER 
GO
ALTER DATABASE [Mini store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mini store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mini store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mini store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mini store] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Mini store', N'ON'
GO
ALTER DATABASE [Mini store] SET QUERY_STORE = OFF
GO
USE [Mini store]
GO
/****** Object:  Table [dbo].[order]    Script Date: 6/7/2020 6:51:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[products_salary] [float] NOT NULL,
	[orderdate] [date] NOT NULL,
	[Total_amount] [float] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 6/7/2020 6:51:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[pyment_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[master_card_num] [int] NOT NULL,
	[cash_payed] [float] NOT NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[pyment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/7/2020 6:51:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] NOT NULL,
	[product_name] [nvarchar](max) NOT NULL,
	[product_salary] [float] NOT NULL,
	[section_Id] [int] NOT NULL,
	[isdicontinue] [int] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[section]    Script Date: 6/7/2020 6:51:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[section](
	[section_id] [int] NOT NULL,
	[section_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_section] PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_product]
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD  CONSTRAINT [FK_payment_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[payment] CHECK CONSTRAINT [FK_payment_order]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_section] FOREIGN KEY([section_Id])
REFERENCES [dbo].[section] ([section_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_section]
GO
USE [master]
GO
ALTER DATABASE [Mini store] SET  READ_WRITE 
GO
