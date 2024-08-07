﻿USE [master]
GO
/****** Object:  Database [Jewelry_Auction_System]    Script Date: 8/6/2024 3:44:01 PM ******/
CREATE DATABASE [Jewelry_Auction_System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Jewelry_Auction_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Jewelry_Auction_System.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Jewelry_Auction_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Jewelry_Auction_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Jewelry_Auction_System] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Jewelry_Auction_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Jewelry_Auction_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Jewelry_Auction_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Jewelry_Auction_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Jewelry_Auction_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Jewelry_Auction_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET RECOVERY FULL 
GO
ALTER DATABASE [Jewelry_Auction_System] SET  MULTI_USER 
GO
ALTER DATABASE [Jewelry_Auction_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Jewelry_Auction_System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Jewelry_Auction_System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Jewelry_Auction_System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Jewelry_Auction_System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Jewelry_Auction_System] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Jewelry_Auction_System', N'ON'
GO
ALTER DATABASE [Jewelry_Auction_System] SET QUERY_STORE = ON
GO
ALTER DATABASE [Jewelry_Auction_System] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Jewelry_Auction_System]
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[addressID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[addressID_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[auctionID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[auctionID_sequence] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[bidID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[bidID_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[cardID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[cardID_sequence] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[categoryID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[categoryID_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[jewelryID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[jewelryID_sequence] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[memberID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[memberID_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[notificationId_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[notificationId_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[registerBidID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[registerBidID_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[sessionID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[sessionID_sequence] 
 AS [bigint]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[userID_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[userID_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
USE [Jewelry_Auction_System]
GO
/****** Object:  Sequence [dbo].[valuationId_sequence]    Script Date: 8/6/2024 3:44:02 PM ******/
CREATE SEQUENCE [dbo].[valuationId_sequence] 
 AS [bigint]
 START WITH 0
 INCREMENT BY 1
 MINVALUE -9223372036854775808
 MAXVALUE 9223372036854775807
 CACHE 
GO
/****** Object:  Table [dbo].[Address]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[addressID] [varchar](50) NOT NULL,
	[country] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[zipcode] [varchar](50) NULL,
	[address1] [varchar](255) NULL,
	[address2] [varchar](255) NULL,
	[memberID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[addressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auction]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auction](
	[auctionId] [varchar](50) NOT NULL,
	[startDate] [date] NULL,
	[startTime] [time](7) NULL,
	[status] [bit] NULL,
	[endTime] [time](7) NULL,
	[endDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[auctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bid_Track]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bid_Track](
	[bidID] [varchar](50) NOT NULL,
	[sessionID] [varchar](50) NOT NULL,
	[memberID] [varchar](50) NOT NULL,
	[bidAmount] [decimal](18, 2) NOT NULL,
	[bidTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[bidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[categoryID] [nvarchar](50) NOT NULL,
	[categoryName] [nvarchar](255) NOT NULL,
	[parentID] [nvarchar](50) NULL,
	[active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credit_Card]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credit_Card](
	[cardID] [varchar](50) NOT NULL,
	[memberID] [varchar](50) NOT NULL,
	[holderName] [varchar](50) NULL,
	[cardNumber] [varchar](255) NULL,
	[cvvCode] [varchar](50) NULL,
	[expiryDate] [date] NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[invoiceID] [varchar](50) NOT NULL,
	[memberID] [varchar](50) NULL,
	[jewelryID] [varchar](50) NULL,
	[invoiceDate] [datetime] NULL,
	[totalAmount] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jewelry]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jewelry](
	[jewelryID] [varchar](50) NOT NULL,
	[categoryID] [nvarchar](50) NULL,
	[jewelryName] [nvarchar](500) NULL,
	[artist] [nvarchar](255) NULL,
	[circa] [nvarchar](50) NULL,
	[material] [nvarchar](500) NULL,
	[dial] [nvarchar](500) NULL,
	[braceletMaterial] [nvarchar](500) NULL,
	[caseDimensions] [nvarchar](500) NULL,
	[braceletSize] [nvarchar](50) NULL,
	[serialNumber] [nvarchar](255) NULL,
	[referenceNumber] [nvarchar](255) NULL,
	[caliber] [nvarchar](255) NULL,
	[movement] [nvarchar](255) NULL,
	[condition] [nvarchar](500) NULL,
	[metal] [nvarchar](255) NULL,
	[gemstones] [nvarchar](500) NULL,
	[measurements] [nvarchar](500) NULL,
	[weight] [varchar](255) NULL,
	[stamped] [nvarchar](255) NULL,
	[ringSize] [nvarchar](50) NULL,
	[minPrice] [varchar](255) NULL,
	[maxPrice] [varchar](255) NULL,
	[valuationId] [varchar](50) NULL,
	[photos] [nvarchar](max) NULL,
	[temp_Price] [varchar](255) NULL,
	[final_Price] [varchar](255) NULL,
	[status] [varchar](50) NULL,
	[Sold] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[jewelryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[memberID] [varchar](50) NOT NULL,
	[userID] [varchar](50) NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[phoneNumber] [varchar](20) NULL,
	[gender] [nvarchar](10) NULL,
	[dob] [date] NULL,
	[avatar] [nvarchar](255) NULL,
	[status_register_to_bid] [bit] NULL,
	[companyName] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[notificationId] [varchar](50) NOT NULL,
	[valuationId] [varchar](50) NULL,
	[content] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[notificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Register_Bid]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Register_Bid](
	[registerBidID] [varchar](50) NOT NULL,
	[sessionID] [varchar](50) NOT NULL,
	[memberID] [varchar](50) NOT NULL,
	[bidAmount_Current] [decimal](18, 2) NULL,
	[bidTime_Current] [datetime] NULL,
	[preBid_Amount] [decimal](18, 2) NULL,
	[preBid_Time] [time](7) NULL,
	[status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[registerBidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RequestValuation]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RequestValuation](
	[valuationId] [varchar](50) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phonenumber] [varchar](20) NOT NULL,
	[communication] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[photos] [varchar](255) NULL,
	[memberId] [varchar](50) NULL,
	[status] [bit] NULL,
	[final_Status] [bit] NULL,
	[created_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[valuationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleID] [varchar](50) NOT NULL,
	[role_name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionID] [varchar](50) NOT NULL,
	[auctionID] [varchar](50) NOT NULL,
	[jewelryID] [varchar](50) NOT NULL,
	[startBid] [decimal](18, 2) NULL,
	[winnerID] [varchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[sessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/6/2024 3:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userID] [varchar](50) NOT NULL,
	[username] [varchar](50) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NOT NULL,
	[roleID] [varchar](50) NOT NULL,
	[joined_at] [date] NULL,
	[active_status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Address] ([addressID], [country], [city], [state], [zipcode], [address1], [address2], [memberID]) VALUES (N'Add66', N'Vietnam', N'New York City', N'Texas', N'700000', N'12 Back Street', N'Pho Co', N'Member7')
INSERT [dbo].[Address] ([addressID], [country], [city], [state], [zipcode], [address1], [address2], [memberID]) VALUES (N'Add73', N'HCM', N'1234', N'Vietnam', N'HCM', N'18Q', N'34', N'Member4')
INSERT [dbo].[Address] ([addressID], [country], [city], [state], [zipcode], [address1], [address2], [memberID]) VALUES (N'Add74', N'Vietnam', N'New York City', N'Texas', N'700000', N'12 Back Street', N'USA', N'Member11')
INSERT [dbo].[Address] ([addressID], [country], [city], [state], [zipcode], [address1], [address2], [memberID]) VALUES (N'Add75', N'Vietnam', N'New York City', N'Texas', N'700000', N'12 Back Street', N'USA', N'Member12')
INSERT [dbo].[Address] ([addressID], [country], [city], [state], [zipcode], [address1], [address2], [memberID]) VALUES (N'Add76', N'Vietnam', N'New York City', N'Texas', N'700000', N'12 Back Street', N'USA', N'Member13')
INSERT [dbo].[Address] ([addressID], [country], [city], [state], [zipcode], [address1], [address2], [memberID]) VALUES (N'Add77', N'Vietnam', N'New York City', N'Texas', N'700000', N'12 Back Street', N'USA', N'Member14')
GO
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc71', CAST(N'2024-06-20' AS Date), CAST(N'11:00:00' AS Time), 1, CAST(N'23:00:00' AS Time), CAST(N'2024-06-22' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc72', CAST(N'2024-06-20' AS Date), CAST(N'11:00:00' AS Time), 1, CAST(N'12:00:00' AS Time), CAST(N'2024-06-29' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc73', CAST(N'2024-06-14' AS Date), CAST(N'00:35:00' AS Time), 1, CAST(N'12:00:00' AS Time), CAST(N'2024-06-20' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc74', CAST(N'2024-06-18' AS Date), CAST(N'10:41:00' AS Time), 1, CAST(N'00:41:00' AS Time), CAST(N'2024-06-20' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc75', CAST(N'2024-06-19' AS Date), CAST(N'23:13:00' AS Time), 1, CAST(N'22:30:00' AS Time), CAST(N'2024-06-20' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc76', CAST(N'2024-07-06' AS Date), CAST(N'00:04:00' AS Time), 1, CAST(N'12:04:00' AS Time), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc77', CAST(N'2024-07-04' AS Date), CAST(N'13:22:00' AS Time), 1, CAST(N'13:35:00' AS Time), CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc78', CAST(N'2024-07-04' AS Date), CAST(N'13:22:00' AS Time), 1, CAST(N'13:40:00' AS Time), CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc79', CAST(N'2024-07-05' AS Date), CAST(N'13:40:00' AS Time), 1, CAST(N'14:00:00' AS Time), CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc80', CAST(N'2024-07-13' AS Date), CAST(N'22:00:00' AS Time), 1, CAST(N'12:00:00' AS Time), CAST(N'2024-07-20' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc81', CAST(N'2024-07-11' AS Date), CAST(N'09:45:00' AS Time), 1, CAST(N'09:45:00' AS Time), CAST(N'2024-07-11' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc82', CAST(N'2024-07-22' AS Date), CAST(N'09:00:00' AS Time), 1, CAST(N'10:00:00' AS Time), CAST(N'2024-07-23' AS Date))
INSERT [dbo].[Auction] ([auctionId], [startDate], [startTime], [status], [endTime], [endDate]) VALUES (N'Auc83', CAST(N'2024-07-22' AS Date), CAST(N'08:53:00' AS Time), 1, CAST(N'08:53:00' AS Time), CAST(N'2024-07-22' AS Date))
GO
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid100', N'Turn51', N'Member5', CAST(201.00 AS Decimal(18, 2)), CAST(N'10:32:58.0433333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid101', N'Turn51', N'Member5', CAST(202.00 AS Decimal(18, 2)), CAST(N'10:33:04.0300000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid102', N'Turn52', N'Member1', CAST(250.00 AS Decimal(18, 2)), CAST(N'10:33:10.9500000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid103', N'Turn52', N'Member5', CAST(25260.00 AS Decimal(18, 2)), CAST(N'10:33:28.8766667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid104', N'Turn47', N'Member1', CAST(260.00 AS Decimal(18, 2)), CAST(N'10:53:41.5500000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid105', N'Turn47', N'Member1', CAST(340.00 AS Decimal(18, 2)), CAST(N'18:16:17.5766667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid106', N'Turn47', N'Member1', CAST(540.00 AS Decimal(18, 2)), CAST(N'18:16:25.3000000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid107', N'Turn47', N'Member1', CAST(2333.00 AS Decimal(18, 2)), CAST(N'18:19:40.8600000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid108', N'Turn47', N'Member1', CAST(2800.00 AS Decimal(18, 2)), CAST(N'09:16:31.9966667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid109', N'Turn47', N'Member5', CAST(2900.00 AS Decimal(18, 2)), CAST(N'09:18:16.1900000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid110', N'Turn47', N'Member1', CAST(3000.00 AS Decimal(18, 2)), CAST(N'17:21:27.6266667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid111', N'Turn47', N'Member1', CAST(3100.00 AS Decimal(18, 2)), CAST(N'17:22:31.8700000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid112', N'Turn47', N'Member1', CAST(3200.00 AS Decimal(18, 2)), CAST(N'01:19:12.3200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid113', N'Turn47', N'Member1', CAST(3300.00 AS Decimal(18, 2)), CAST(N'01:19:22.0566667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid114', N'Turn47', N'Member1', CAST(33333333.00 AS Decimal(18, 2)), CAST(N'12:32:33.7600000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid115', N'Turn57', N'Member5', CAST(1200.00 AS Decimal(18, 2)), CAST(N'13:40:16.2200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid116', N'Turn57', N'Member1', CAST(1210.00 AS Decimal(18, 2)), CAST(N'13:40:36.9466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid117', N'Turn57', N'Member5', CAST(1240.00 AS Decimal(18, 2)), CAST(N'13:40:51.4900000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid118', N'Turn57', N'Member1', CAST(1300.00 AS Decimal(18, 2)), CAST(N'13:41:03.2433333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid119', N'Turn57', N'Member5', CAST(1350.00 AS Decimal(18, 2)), CAST(N'13:41:16.6366667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid120', N'Turn57', N'Member1', CAST(1400.00 AS Decimal(18, 2)), CAST(N'13:41:29.1366667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid121', N'Turn57', N'Member1', CAST(1500.00 AS Decimal(18, 2)), CAST(N'13:42:38.9000000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid122', N'Turn57', N'Member5', CAST(1600.00 AS Decimal(18, 2)), CAST(N'13:46:47.0466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid123', N'Turn57', N'Member1', CAST(1700.00 AS Decimal(18, 2)), CAST(N'13:46:52.0466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid124', N'Turn53', N'Member1', CAST(200.00 AS Decimal(18, 2)), CAST(N'17:30:05.2500000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid125', N'Turn60', N'Member1', CAST(500.00 AS Decimal(18, 2)), CAST(N'09:49:55.1533333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid126', N'Turn60', N'Member5', CAST(600.00 AS Decimal(18, 2)), CAST(N'09:50:07.1966667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid127', N'Turn60', N'Member1', CAST(650.00 AS Decimal(18, 2)), CAST(N'09:50:22.1000000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid128', N'Turn60', N'Member5', CAST(660.00 AS Decimal(18, 2)), CAST(N'09:50:28.8433333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid129', N'Turn60', N'Member1', CAST(670.00 AS Decimal(18, 2)), CAST(N'09:51:07.2433333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid130', N'Turn60', N'Member5', CAST(680.00 AS Decimal(18, 2)), CAST(N'09:51:13.5466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid131', N'Turn62', N'Member13', CAST(200.00 AS Decimal(18, 2)), CAST(N'11:02:51.7766667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid132', N'Turn62', N'Member14', CAST(300.00 AS Decimal(18, 2)), CAST(N'11:06:02.8300000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid133', N'Turn62', N'Member13', CAST(400.00 AS Decimal(18, 2)), CAST(N'11:06:14.9200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid134', N'Turn62', N'Member13', CAST(500.00 AS Decimal(18, 2)), CAST(N'11:06:22.7700000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid135', N'Turn62', N'Member14', CAST(600.00 AS Decimal(18, 2)), CAST(N'11:06:26.4066667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid136', N'Turn62', N'Member14', CAST(700.00 AS Decimal(18, 2)), CAST(N'11:07:19.1966667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid137', N'Turn62', N'Member13', CAST(730.00 AS Decimal(18, 2)), CAST(N'11:07:24.6866667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid47', N'Turn47', N'Member1', CAST(100.00 AS Decimal(18, 2)), CAST(N'02:24:21.4000000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid48', N'Turn47', N'Member1', CAST(200.00 AS Decimal(18, 2)), CAST(N'02:24:26.3033333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid49', N'Turn47', N'Member1', CAST(400.00 AS Decimal(18, 2)), CAST(N'02:24:42.2033333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid50', N'Turn48', N'Member5', CAST(21.00 AS Decimal(18, 2)), CAST(N'02:24:55.7600000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid51', N'Turn48', N'Member1', CAST(212.00 AS Decimal(18, 2)), CAST(N'02:26:07.7200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid52', N'Turn48', N'Member5', CAST(345.00 AS Decimal(18, 2)), CAST(N'02:26:28.5200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid53', N'Turn48', N'Member5', CAST(346.00 AS Decimal(18, 2)), CAST(N'02:26:34.4200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid54', N'Turn49', N'Member1', CAST(123.00 AS Decimal(18, 2)), CAST(N'02:26:49.1900000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid55', N'Turn49', N'Member5', CAST(789.00 AS Decimal(18, 2)), CAST(N'02:26:54.0700000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid56', N'Turn47', N'Member1', CAST(401.00 AS Decimal(18, 2)), CAST(N'16:27:07.5400000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid57', N'Turn47', N'Member1', CAST(402.00 AS Decimal(18, 2)), CAST(N'16:40:54.3233333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid58', N'Turn48', N'Member1', CAST(406.00 AS Decimal(18, 2)), CAST(N'16:41:15.1466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid59', N'Turn47', N'Member1', CAST(789.00 AS Decimal(18, 2)), CAST(N'16:43:28.1966667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid60', N'Turn47', N'Member1', CAST(100.00 AS Decimal(18, 2)), CAST(N'16:44:15.4200000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid61', N'Turn47', N'Member1', CAST(110.00 AS Decimal(18, 2)), CAST(N'16:44:21.8633333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid62', N'Turn47', N'Member1', CAST(120.00 AS Decimal(18, 2)), CAST(N'16:44:26.5333333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid63', N'Turn47', N'Member1', CAST(130.00 AS Decimal(18, 2)), CAST(N'16:44:31.7033333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid64', N'Turn47', N'Member1', CAST(140.00 AS Decimal(18, 2)), CAST(N'16:44:36.5266667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid65', N'Turn48', N'Member1', CAST(100.00 AS Decimal(18, 2)), CAST(N'16:44:49.9900000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid66', N'Turn49', N'Member1', CAST(200.00 AS Decimal(18, 2)), CAST(N'16:45:26.1700000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid67', N'Turn47', N'Member1', CAST(141.00 AS Decimal(18, 2)), CAST(N'16:49:59.3500000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid68', N'Turn47', N'Member1', CAST(142.00 AS Decimal(18, 2)), CAST(N'18:01:34.8100000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid69', N'Turn47', N'Member1', CAST(212.00 AS Decimal(18, 2)), CAST(N'22:40:13.3533333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid70', N'Turn47', N'Member1', CAST(213.00 AS Decimal(18, 2)), CAST(N'23:02:33.3466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid71', N'Turn47', N'Member1', CAST(214.00 AS Decimal(18, 2)), CAST(N'23:07:29.6333333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid72', N'Turn47', N'Member1', CAST(215.00 AS Decimal(18, 2)), CAST(N'23:13:21.6000000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid73', N'Turn47', N'Member1', CAST(216.00 AS Decimal(18, 2)), CAST(N'23:58:17.8533333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid74', N'Turn47', N'Member1', CAST(217.00 AS Decimal(18, 2)), CAST(N'23:58:23.0800000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid75', N'Turn47', N'Member1', CAST(218.00 AS Decimal(18, 2)), CAST(N'23:58:27.5133333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid76', N'Turn47', N'Member1', CAST(219.00 AS Decimal(18, 2)), CAST(N'00:14:27.8600000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid77', N'Turn47', N'Member5', CAST(220.00 AS Decimal(18, 2)), CAST(N'00:14:37.5500000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid78', N'Turn47', N'Member1', CAST(221.00 AS Decimal(18, 2)), CAST(N'00:14:41.0733333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid79', N'Turn47', N'Member5', CAST(222.00 AS Decimal(18, 2)), CAST(N'00:14:44.1066667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid80', N'Turn47', N'Member1', CAST(223.00 AS Decimal(18, 2)), CAST(N'00:14:48.3900000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid81', N'Turn47', N'Member5', CAST(224.00 AS Decimal(18, 2)), CAST(N'00:14:52.5566667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid82', N'Turn47', N'Member1', CAST(225.00 AS Decimal(18, 2)), CAST(N'00:15:00.1333333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid83', N'Turn47', N'Member1', CAST(226.00 AS Decimal(18, 2)), CAST(N'00:15:36.7266667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid84', N'Turn47', N'Member1', CAST(227.00 AS Decimal(18, 2)), CAST(N'01:35:31.3600000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid85', N'Turn47', N'Member1', CAST(228.00 AS Decimal(18, 2)), CAST(N'19:56:45.4333333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid86', N'Turn47', N'Member1', CAST(229.00 AS Decimal(18, 2)), CAST(N'17:53:56.7566667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid87', N'Turn47', N'Member1', CAST(230.00 AS Decimal(18, 2)), CAST(N'17:55:46.5466667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid88', N'Turn47', N'Member5', CAST(240.00 AS Decimal(18, 2)), CAST(N'03:37:35.7333333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid89', N'Turn48', N'Member1', CAST(100.25 AS Decimal(18, 2)), CAST(N'03:37:41.2500000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid90', N'Turn48', N'Member5', CAST(1222.00 AS Decimal(18, 2)), CAST(N'03:37:46.9633333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid91', N'Turn49', N'Member1', CAST(21111.00 AS Decimal(18, 2)), CAST(N'03:37:54.0033333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid92', N'Turn47', N'Member1', CAST(250.00 AS Decimal(18, 2)), CAST(N'03:42:53.0100000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid93', N'Turn49', N'Member1', CAST(22000.00 AS Decimal(18, 2)), CAST(N'03:43:13.6833333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid94', N'Turn50', N'Member1', CAST(1334.00 AS Decimal(18, 2)), CAST(N'09:55:36.6033333' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid95', N'Turn50', N'Member5', CAST(1500.00 AS Decimal(18, 2)), CAST(N'09:56:57.2266667' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid96', N'Turn50', N'Member5', CAST(1600.00 AS Decimal(18, 2)), CAST(N'09:57:05.3900000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid97', N'Turn50', N'Member1', CAST(1700.00 AS Decimal(18, 2)), CAST(N'09:57:14.4400000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid98', N'Turn51', N'Member5', CAST(100.00 AS Decimal(18, 2)), CAST(N'10:08:58.8300000' AS Time))
INSERT [dbo].[Bid_Track] ([bidID], [sessionID], [memberID], [bidAmount], [bidTime]) VALUES (N'Bid99', N'Turn51', N'Member1', CAST(200.00 AS Decimal(18, 2)), CAST(N'10:32:09.2000000' AS Time))
GO
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category0', N'Bracelet', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category1', N'Brooch', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category2', N'Earrings', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category3', N'Loose Stone', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category4', N'Misc', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category5', N'Necklace', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category6', N'Pendant', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category7', N'Ring', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category8', N'Set', NULL, 1)
INSERT [dbo].[category] ([categoryID], [categoryName], [parentID], [active]) VALUES (N'category9', N'Watch', NULL, 1)
GO
INSERT [dbo].[Credit_Card] ([cardID], [memberID], [holderName], [cardNumber], [cvvCode], [expiryDate], [status]) VALUES (N'CRE12', N'Member4', N'trung hoang', N'4222 2222 2222 2220', N'342', CAST(N'2029-06-16' AS Date), 1)
INSERT [dbo].[Credit_Card] ([cardID], [memberID], [holderName], [cardNumber], [cvvCode], [expiryDate], [status]) VALUES (N'CRE13', N'Member11', N'Natsu Dragoneel', N'5555 5555 5555 4444', N'123', CAST(N'2042-12-18' AS Date), 1)
INSERT [dbo].[Credit_Card] ([cardID], [memberID], [holderName], [cardNumber], [cvvCode], [expiryDate], [status]) VALUES (N'CRE14', N'Member12', N'Ben Nguyen', N'4222 2222 2222 2220', N'123', CAST(N'2034-11-19' AS Date), 1)
INSERT [dbo].[Credit_Card] ([cardID], [memberID], [holderName], [cardNumber], [cvvCode], [expiryDate], [status]) VALUES (N'CRE15', N'Member13', N'Tien Dang', N'5555 5555 5555 4444', N'123', CAST(N'2029-02-19' AS Date), 1)
INSERT [dbo].[Credit_Card] ([cardID], [memberID], [holderName], [cardNumber], [cvvCode], [expiryDate], [status]) VALUES (N'CRE16', N'Member14', N'Viet Thang', N'4222 2222 2222 2220', N'123', CAST(N'2031-02-01' AS Date), 1)
INSERT [dbo].[Credit_Card] ([cardID], [memberID], [holderName], [cardNumber], [cvvCode], [expiryDate], [status]) VALUES (N'CRE5', N'Member7', N'Engage ring', N'123', N'123', CAST(N'2042-01-19' AS Date), 1)
GO
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'03244607', N'Member13', N'Lot59', CAST(N'2024-07-22T11:12:27.000' AS DateTime), CAST(21900000.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'23576645', N'Member5', N'Lot45', CAST(N'2024-07-03T13:41:52.000' AS DateTime), CAST(36660000.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'23590368', N'Member1', N'Lot44', CAST(N'2024-07-03T09:55:51.000' AS DateTime), CAST(93000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'28263570', N'Member1', N'Lot46', CAST(N'2024-07-03T21:14:33.000' AS DateTime), CAST(6600000.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'63594783', N'Member1', N'Lot55', CAST(N'2024-07-05T13:57:30.000' AS DateTime), CAST(51000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'83066420', N'Member5', N'Lot48', CAST(N'2024-07-03T13:32:19.000' AS DateTime), CAST(6060000.00 AS Decimal(18, 2)))
INSERT [dbo].[Invoice] ([invoiceID], [memberID], [jewelryID], [invoiceDate], [totalAmount]) VALUES (N'91620079', N'Member5', N'Lot57', CAST(N'2024-07-11T10:07:51.000' AS DateTime), CAST(20400000.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot40', N'category7', N'POND AQUAMARINE AND DIAMOND RING', N'William Salramha', N'2000s', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'platinum', N'oval faceted aquamarine approx. 10 carats; round brilliant cut diamonds approx. 0.35 carat total, most G/VS', N'ring top 3/4 x 1/2 inch', N'9.50 g', N'PLAT, maker''s mark', N'5-1/2', N'3500', N'4500', N'val60', N'images/206-1.jpg;images/206-2.jpg;', N'2000', N'2800', N'Confirmed', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot42', N'category2', N'DIAMOND FLEURETTE GARLAND EARRINGS', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'14K white gold', N'round brilliant and baguette cut diamonds approx. 1.00 carat total, most G-H/VS', N' 3/4 x 3/8 inch', N' 5.78 g', N'PROPERTY OF AN ILLINOIS LADY', N'', N'2000', N'2500', N'val61', N'images/234-1.jpg;images/234-2.jpg;images/234-3.jpg;', N'1000', N'1500', N'Confirmed', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot44', N'category7', N'AQUAMARINE AND DIAMOND RING, GIA CERTIFIED', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'14K white gold', N' emerald cut aquamarine approx. 27.90 carats; round brilliant cut diamonds approx. 0.45 carat, most H-I/VS', N'ring top 3/4 x 7/8 inch', N'16.20 g', N'14K', N'6-1/4', N'3500', N'4500', N'val63', N'images/209-1.jpg;images/209-2.jpg;images/209-3.jpg;images/209-4.jpg;', N'2200', N'3400', N'SOLD', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot45', N'category8', N'ART NOUVEAU DRAGON BROOCHES', N'Art Nouveau', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'14K yellow gold, silver', N'old cut diamond approx. 0.12 carat, G-H/SI; round faceted and cabochon red stones', N'1-1/4 x 1-1/4 inches', N'14K 9.90g., silver 6.80 g. Group contains two brooches', N'14K, sterling', N'', N'1500', N'2500', N'val64', N'images/213-1.jpg;images/213-2.jpg;images/213-3.jpg;', N'900', N'5600', N'SOLD', CAST(36660000.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot46', N'category5', N'CITRINE NECKLACE', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'18K yellow gold', N' oval faceted citrines approx. 15.20 carats total', N'length 26 inches', N' 6.88 g.', N'750', N'', N'900', N'1300', N'val65', N'images/231-1.jpg;images/231-2.jpg;images/231-3.png;', N'700', N'3422', N'SOLD', CAST(6600000.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot47', N'category7', N'KWIAT DIAMOND RING', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'18K white gold', N'set with round brilliant and rose cut diamonds, weighing a total of approximately 1.66 carats, most with G-H color and VS clarity', N' ring top 3/4 inch wide', N'7.80 g.', N'', N'6', N'2000', N'3000', N'val66', N'images/251-1.jpg;images/251-2.jpg;images/251-3.jpg;images/251-4.jpg;images/251-5.jpg;', N'', N'5400', N'Confirmed', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot48', N'category2', N'PINK SAPPHIRE AND DIAMOND EARRINGS', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'14K white gold', N'set with oval faceted pink sapphires, weighing a total of approximately 24.85 carats; round brilliant cut diamonds, weighing a total of approximately 1.60 carats, most with H-I color and SI clarity', N'1-3/4 x 1-3/8 inches', N'17.60 g', N'14K', N'', N'4000', N'5000', N'val67', N'images/259-1.jpg;images/259-2.jpg;', N'3600', N'2800', N'SOLD', CAST(6060000.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot49', N'category0', N'ROLEX DAY-DATE REF. 1803 IN 18K GOLD', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'123', N'', N'', N'', N'', N'', N'', N'', N'2300', N'2600', N'val70', N'images/206-1.jpg;images/206-2.jpg;', N'1500', N'4500', N'Confirmed', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot50', N'category0', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'2300', N'2500', N'val69', N'images/270-1.jpg;images/270-2.jpg;images/270-3.jpg;', N'2200', N'4500', N'Confirmed', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot51', N'category7', N'Engage ring', N'Gorgeous Alley', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'1300', N'1600', N'val72', N'images/209-2.jpg;images/209-3.jpg;', N'1200', N'1200', N'Confirmed', NULL)
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot52', N'category0', N'Engage ring', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'1200', N'1400', N'val71', N'images/206-1.jpg;images/206-2.jpg;', N'1300', N'1200', N'Confirmed', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot53', N'category0', N'BRACELET WITH DIAMONDS', N'Thomson Maftin', N'12', N'Gold', N'', N'', N'', N'', N'', N'', N'', N'', N'Dial is in excellent condition. Case is excellent, with minor scratches under magnification. Movement is running at time of cataloging. Overall, the present example is in excellent condition.', N'Gold', N'', N'', N'12g', N'12', N'12', N'1100', N'1200', N'val81', N'images/268-1.jpg;images/268-2.jpg;', N'1150', N'1300', N'Confirmed', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot54', N'category8', N'Set of jewelry with great design ', N'Typhony', N'', N'Gold', N'', N'', N'', N'', N'', N'', N'', N'', N'Case is in good condition, with signs of polishing and brushed finish on lug tops, but smoothly polished throughout all other surfaces.', N'Gold', N'', N'', N'13g', N'', N'', N'1400', N'1600', N'val82', N'images/213-1.jpg;images/213-2.jpg;images/213-3.jpg;', N'1350', N'1280', N'Confirmed', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot55', N'category0', N'Ring with great design', N'Thomson typhon', N'', N'Diamond', N'', N'', N'', N'', N'', N'', N'', N'', N'Case is in good condition, with signs of polishing and brushed finish on lug tops, but smoothly polished throughout all other surfaces.', N'', N'', N'', N'12g', N'', N'', N'1600', N'1700', N'val83', N'images/206-1.jpg;images/206-2.jpg;', N'1500', N'1670', N'SOLD', CAST(51000000.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot56', N'category0', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'2400', N'2500', N'val80', N'images/206-1.jpg;', N'2200', N'1400', N'Confirmed', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot57', N'category7', N'Ring titan', N'Thomas', N'', N'', N'', N'', N'', N'', N'123456789', N'', N'', N' Automatic', N'Good', N'Titan', N'', N'', N'1.2', N'', N'', N'1400', N'1500', N'val84', N'images/2008-1.jpg;images/2008-2.jpg;', N'1300', N'1350', N'SOLD', CAST(20400000.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot58', N'category0', N'Titan Ring', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'12.2', N'', N'', N'1200', N'1300', N'val85', N'images/2019-2.jpg;', N'1400', N'2400', N'Confirmed', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot59', N'category9', N'CARTIER MUST DE RONDE IN GOLD VERMEIL', N'Cartier', N'1990s', N'Gold vermeil over sterling silver', N' Buff colored enamel dial with printed Roman numerals. Date aperture at the "3" hour marker', N'Pink leather strap', N'32 mm in diameter', N'7 3/4 inches', N'019511', N'1800-1', N'687', N'Quartz', N'Dial is in excellent condition. Case is excellent, with small scratches visible under magnification. Case has been customized with third party pave stones. Movement is running at time of cataloging. Overall, the present example is in excellent condition.', N'', N'', N'', N'', N'', N'', N'2000', N'3000', N'val86', N'images/1f9c41fd-8f52-47f9-a600-85b29d263c1a.jpg;images/458bc2da-d861-490c-b1f8-39203d51063e.jpg;', N'2100', N'2400', N'SOLD', CAST(21900000.00 AS Decimal(18, 2)))
INSERT [dbo].[Jewelry] ([jewelryID], [categoryID], [jewelryName], [artist], [circa], [material], [dial], [braceletMaterial], [caseDimensions], [braceletSize], [serialNumber], [referenceNumber], [caliber], [movement], [condition], [metal], [gemstones], [measurements], [weight], [stamped], [ringSize], [minPrice], [maxPrice], [valuationId], [photos], [temp_Price], [final_Price], [status], [Sold]) VALUES (N'Lot60', N'category0', N'ettet', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'3233', N'4444', N'val87', N'images/201-1.jpg;images/201-2.jpg;', N'3463', N'3244', N'Final-Evaluated', CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member1', N'User0', N'Alex', N'Watson', N'0978787898', N'Male', CAST(N'2000-02-19' AS Date), NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member10', N'User14', N'Ben', N'Nguyen', N'0978787898', N'male', CAST(N'1915-02-08' AS Date), NULL, 0, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member11', N'User15', N'Natsu', N'Dragoneel', N'0978787898', N'male', CAST(N'1915-02-08' AS Date), NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member12', N'User16', N'Ben', N'Nguyen', N'0978787898', N'male', CAST(N'2004-03-10' AS Date), NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member13', N'User17', N'Tien', N'Dang', N'0934526729', N'male', CAST(N'2002-01-18' AS Date), NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member14', N'User18', N'Viet', N'Thang', N'0912563434', N'male', CAST(N'1998-02-06' AS Date), NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member4', N'User8', N'trung', N'hoang', N'1234567890', N'Male', CAST(N'2007-03-15' AS Date), NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member5', N'User9', N'Tom', NULL, NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member6', N'User10', N'Engage', N'ring', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member7', N'User11', N'Engage', N'ring', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member8', N'User12', N'Engage', N'ring', NULL, NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[Member] ([memberID], [userID], [firstName], [lastName], [phoneNumber], [gender], [dob], [avatar], [status_register_to_bid], [companyName]) VALUES (N'Member9', N'User13', N'Ben', N'Nguyen', N'0978787898', N'male', CAST(N'1915-02-08' AS Date), NULL, 1, NULL)
GO
INSERT [dbo].[Notification] ([notificationId], [valuationId], [content]) VALUES (N'No26', N'val60', N'<div class="container">
<h1>Dear Alex Watson,</h1>
<p>We appreciate your recent purchase of jewelry from our store. To ensure a smooth delivery process, please follow these instructions:</p>
<ul>
<li>
<strong>Ship To:</strong>
<br>Global F''Rankelly''s Premier Jewelry Auction House
<br>608 5th Avenue
<br>Suite 507, New York, NY 10020
</li>
<li>
<strong>Shipping Instructions:</strong>
<br>- Securely package the jewelry in a padded box or envelope.
<br>- Use bubble wrap or tissue paper for protection.
<br>- Choose your preferred shipping method.
<br>- Insure valuable items and obtain a tracking number.
<br>- Include a copy of your purchase receipt or invoice.
<br>- Provide your phone number and email address.
<br>- We''ll cover the shipping costs if applicable.
</li>
</ul>
<p>Once packaged, no need to reply to this email. We''ll keep you updated on the delivery status. Thank you for choosing our store.</p>
<p>Best regards,<br>
Global F''Rankelly''s Premier<br>
Request Shipment<br>
Global F''Rankelly''s Premier Jewelry Auction House<br>
(212) 389-9040</p>
</div>')
INSERT [dbo].[Notification] ([notificationId], [valuationId], [content]) VALUES (N'No27', N'val72', N'<div class="container">
<h1>Dear Tom,</h1>
<p>We appreciate your recent purchase of jewelry from our store. To ensure a smooth delivery process, please follow these instructions:</p>
<ul>
<li>
<strong>Ship To:</strong>
<br>Global F''Rankelly''s Premier Jewelry Auction House
<br>608 5th Avenue
<br>Suite 507, New York, NY 10020
</li>
<li>
<strong>Shipping Instructions:</strong>
<br>- Securely package the jewelry in a padded box or envelope.
<br>- Use bubble wrap or tissue paper for protection.
<br>- Choose your preferred shipping method.
<br>- Insure valuable items and obtain a tracking number.
<br>- Include a copy of your purchase receipt or invoice.
<br>- Provide your phone number and email address.
<br>- We''ll cover the shipping costs if applicable.
</li>
</ul>
<p>Once packaged, no need to reply to this email. We''ll keep you updated on the delivery status. Thank you for choosing our store.</p>
<p>Best regards,<br>
Global F''Rankelly''s Premier<br>
Request Shipment<br>
Global F''Rankelly''s Premier Jewelry Auction House<br>
(212) 389-9040</p>
</div>')
GO
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg222', N'Turn47', N'Member1', CAST(33333333.00 AS Decimal(18, 2)), CAST(N'2024-07-04T12:32:33.677' AS DateTime), CAST(100.00 AS Decimal(18, 2)), CAST(N'16:44:15.4066667' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg223', N'Turn48', N'Member1', CAST(100.25 AS Decimal(18, 2)), CAST(N'2024-06-27T03:37:41.240' AS DateTime), CAST(100.00 AS Decimal(18, 2)), CAST(N'16:44:49.9766667' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg224', N'Turn49', N'Member1', CAST(220.00 AS Decimal(18, 2)), CAST(N'2024-06-27T03:43:13.683' AS DateTime), CAST(200.00 AS Decimal(18, 2)), CAST(N'16:45:26.1600000' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg225', N'Turn47', N'Member5', CAST(2900.00 AS Decimal(18, 2)), CAST(N'2024-06-29T09:18:16.167' AS DateTime), CAST(220.00 AS Decimal(18, 2)), CAST(N'00:14:37.5300000' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg226', N'Turn46', N'Member1', CAST(1200.00 AS Decimal(18, 2)), NULL, CAST(1230.00 AS Decimal(18, 2)), CAST(N'02:44:49.0240000' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg228', N'Turn48', N'Member5', CAST(1222.00 AS Decimal(18, 2)), CAST(N'2024-06-27T03:37:46.967' AS DateTime), CAST(1222.00 AS Decimal(18, 2)), CAST(N'03:37:46.9500000' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg230', N'Turn50', N'Member1', CAST(1700.00 AS Decimal(18, 2)), CAST(N'2024-06-27T09:57:14.430' AS DateTime), CAST(1334.00 AS Decimal(18, 2)), CAST(N'09:55:36.5433333' AS Time), N'Paid')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg231', N'Turn50', N'Member5', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2024-06-27T09:57:05.380' AS DateTime), CAST(1500.00 AS Decimal(18, 2)), CAST(N'09:56:57.1633333' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg232', N'Turn51', N'Member5', CAST(202.00 AS Decimal(18, 2)), CAST(N'2024-06-27T10:33:04.030' AS DateTime), CAST(100.00 AS Decimal(18, 2)), CAST(N'10:08:58.7733333' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg234', N'Turn51', N'Member1', CAST(200.00 AS Decimal(18, 2)), CAST(N'2024-06-27T10:32:09.183' AS DateTime), CAST(200.00 AS Decimal(18, 2)), CAST(N'10:32:09.1500000' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg235', N'Turn52', N'Member1', CAST(250.00 AS Decimal(18, 2)), CAST(N'2024-06-27T10:33:10.953' AS DateTime), CAST(250.00 AS Decimal(18, 2)), CAST(N'10:33:10.9300000' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg236', N'Turn52', N'Member5', CAST(25260.00 AS Decimal(18, 2)), CAST(N'2024-06-27T10:33:28.873' AS DateTime), CAST(25260.00 AS Decimal(18, 2)), CAST(N'10:33:28.8466667' AS Time), N'Pending Payment')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg237', N'Turn45', N'Member1', CAST(12.00 AS Decimal(18, 2)), NULL, CAST(12.00 AS Decimal(18, 2)), CAST(N'23:41:27.9266667' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg238', N'Turn54', N'Member1', CAST(1000.00 AS Decimal(18, 2)), NULL, CAST(1200.00 AS Decimal(18, 2)), CAST(N'13:28:53.9780000' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg285', N'Turn54', N'Member5', CAST(900.00 AS Decimal(18, 2)), NULL, CAST(900.00 AS Decimal(18, 2)), CAST(N'15:28:16.2650000' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg290', N'Turn57', N'Member1', CAST(1700.00 AS Decimal(18, 2)), CAST(N'2024-07-05T13:46:52.047' AS DateTime), CAST(1100.00 AS Decimal(18, 2)), CAST(N'13:32:19.2550000' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg291', N'Turn57', N'Member5', CAST(1600.00 AS Decimal(18, 2)), CAST(N'2024-07-05T13:46:47.040' AS DateTime), CAST(1200.00 AS Decimal(18, 2)), CAST(N'13:32:09.0300000' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg292', N'Turn53', N'Member1', CAST(200.00 AS Decimal(18, 2)), CAST(N'2024-07-10T17:30:05.233' AS DateTime), CAST(200.00 AS Decimal(18, 2)), CAST(N'17:30:05.1966667' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg294', N'Turn60', N'Member1', CAST(670.00 AS Decimal(18, 2)), CAST(N'2024-07-11T09:51:07.223' AS DateTime), CAST(500.00 AS Decimal(18, 2)), CAST(N'09:49:55.1066667' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg295', N'Turn60', N'Member5', CAST(680.00 AS Decimal(18, 2)), CAST(N'2024-07-11T09:51:13.543' AS DateTime), CAST(600.00 AS Decimal(18, 2)), CAST(N'09:50:07.1633333' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg301', N'Turn58', N'Member11', CAST(1200.00 AS Decimal(18, 2)), NULL, CAST(1200.00 AS Decimal(18, 2)), CAST(N'09:15:38.3733333' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg302', N'Turn62', N'Member13', CAST(730.00 AS Decimal(18, 2)), CAST(N'2024-07-22T11:07:24.687' AS DateTime), CAST(200.00 AS Decimal(18, 2)), CAST(N'11:02:51.7500000' AS Time), N'Delivery')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg303', N'Turn62', N'Member14', CAST(700.00 AS Decimal(18, 2)), CAST(N'2024-07-22T11:07:19.193' AS DateTime), CAST(300.00 AS Decimal(18, 2)), CAST(N'11:06:02.8133333' AS Time), N'Lost')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg304', N'Turn61', N'Member13', CAST(1100.00 AS Decimal(18, 2)), NULL, CAST(1100.00 AS Decimal(18, 2)), CAST(N'11:20:44.2833333' AS Time), N'Placed')
INSERT [dbo].[Register_Bid] ([registerBidID], [sessionID], [memberID], [bidAmount_Current], [bidTime_Current], [preBid_Amount], [preBid_Time], [status]) VALUES (N'Reg307', N'Turn61', N'Member12', CAST(1200.00 AS Decimal(18, 2)), NULL, CAST(1200.00 AS Decimal(18, 2)), CAST(N'11:25:29.1900000' AS Time), N'Placed')
GO
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val60', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Phone Call', N'Thanks', N'images/206-1.jpg;images/206-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val61', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Phone Call', N'Thanks for evaluating', N'images/234-1.jpg;images/234-2.jpg;images/234-3.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val63', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/209-1.jpg;images/209-2.jpg;images/209-3.jpg;images/209-4.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val64', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Email', N'undefined', N'images/213-1.jpg;images/213-2.jpg;images/213-3.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val65', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/231-1.jpg;images/231-2.jpg;images/231-3.png;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val66', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/251-1.jpg;images/251-2.jpg;images/251-3.jpg;images/251-4.jpg;images/251-5.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val67', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/259-1.jpg;images/259-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val68', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/268-1.jpg;images/268-2.jpg;', N'Member1', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val69', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/270-1.jpg;images/270-2.jpg;images/270-3.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val70', N'Alex Watson', N'AlexWatson123@gmail.com', N'0342124432', N'Text Message', N'undefined', N'images/206-1.jpg;images/206-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val71', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'Please evaluate for me. Thank you!', N'images/206-1.jpg;images/206-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val72', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'undefined', N'images/209-2.jpg;images/209-3.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val73', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'Thank you!', N'images/231-1.jpg;images/231-2.jpg;', N'Member1', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val74', N'Tom', N'tom11@gmail.com', N'0845456789', N'Phone Call', N'undefined', N'images/270-1.jpg;images/270-2.jpg;images/270-3.jpg;', N'Member5', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val75', N'Tom', N'tom11@gmail.com', N'0845456789', N'Phone Call', N'undefined', N'images/270-1.jpg;images/270-2.jpg;images/270-3.jpg;', N'Member5', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val76', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'Please Evaluate for me', N'images/231-1.jpg;images/231-2.jpg;images/231-3.png;', N'Member5', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val77', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'Please Evaluate for me', N'images/231-1.jpg;images/231-2.jpg;images/231-3.png;', N'Member5', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val78', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'Please valuate for me', N'images/231-1.jpg;', N'Member5', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val79', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'undefined', N'images/231-1.jpg;', N'Member5', 0, 0, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val80', N'Tom', N'tom11@gmail.com', N'0845456789', N'Text Message', N'undefined', N'images/206-1.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val81', N'Tom Cruiser', N'tomsargar67vn@gmail.com', N'0382567980', N'Text Message', N'Thank you for evaluating those jewelries very much. Contact me as soon as possible', N'images/268-1.jpg;images/268-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val82', N'Lucy Thymsofttyph', N'lucythym78typh@gmail.com', N'0234787865', N'Text Message', N'Thanks for evaluating. Contact me as soon as possible. <3', N'images/213-1.jpg;images/213-2.jpg;images/213-3.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val83', N'Tom Cruiser', N'tomsargar67vn@gmail.com', N'0382567980', N'Text Message', N'undefined', N'images/206-1.jpg;images/206-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val84', N'Tom Cruiser', N'tomsargar67vn@gmail.com', N'0382567980', N'Email', N'Thank you!', N'images/2008-1.jpg;images/2008-2.jpg;', N'Member1', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val85', N'Tom Cruiser', N'tomsargar67vn@gmail.com', N'0382567980', N'Text Message', N'undefined', N'images/2019-2.jpg;', N'Member9', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val86', N'Viet Thang', N'vietthang123@gmail.com', N'0912563434', N'Email', N'Please evaluate!', N'images/1f9c41fd-8f52-47f9-a600-85b29d263c1a.jpg;images/458bc2da-d861-490c-b1f8-39203d51063e.jpg;', N'Member12', 1, 1, NULL)
INSERT [dbo].[RequestValuation] ([valuationId], [name], [email], [phonenumber], [communication], [description], [photos], [memberId], [status], [final_Status], [created_date]) VALUES (N'val87', N'Viet Thang', N'vietthang123@gmail.com', N'0912563434', N'Email', N'undefined', N'images/201-1.jpg;images/201-2.jpg;', N'Member12', 1, 1, NULL)
GO
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (N'Role01', N'Member')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (N'Role02', N'Staff')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (N'Role03', N'Manager')
INSERT [dbo].[Role] ([roleID], [role_name]) VALUES (N'Role04', N'Admin')
GO
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn45', N'Auc71', N'Lot40', NULL, NULL, 1)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn46', N'Auc72', N'Lot42', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn47', N'Auc73', N'Lot44', NULL, N'Member5', 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn48', N'Auc73', N'Lot45', NULL, N'Member5', 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn49', N'Auc73', N'Lot46', NULL, N'Member1', 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn50', N'Auc74', N'Lot47', NULL, NULL, 1)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn51', N'Auc74', N'Lot48', NULL, NULL, 1)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn52', N'Auc74', N'Lot49', NULL, NULL, 1)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn53', N'Auc75', N'Lot50', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn54', N'Auc76', N'Lot51', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn55', N'Auc77', N'Lot53', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn56', N'Auc78', N'Lot54', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn57', N'Auc79', N'Lot55', NULL, NULL, 1)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn58', N'Auc80', N'Lot52', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn59', N'Auc80', N'Lot56', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn60', N'Auc81', N'Lot57', NULL, NULL, 1)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn61', N'Auc82', N'Lot58', NULL, NULL, 0)
INSERT [dbo].[Session] ([sessionID], [auctionID], [jewelryID], [startBid], [winnerID], [status]) VALUES (N'Turn62', N'Auc83', N'Lot59', NULL, NULL, 1)
GO
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User0', N'user', N'user123@gmail.com', N'123', N'Role01', CAST(N'2024-06-02' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User1', N'staff', N'staff123@gmail.com', N'123', N'Role02', CAST(N'2024-06-03' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User10', N'Nhim', N'abc122@gmail.com', N'Nhim12345678', N'Role01', CAST(N'2024-07-03' AS Date), 0)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User11', N'Nhim1', N'abc122@gmail.com', N'Nhim14567890', N'Role01', CAST(N'2024-07-03' AS Date), 0)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User12', N'Nhim2', N'abc122@gmail.com', N'Nhim1234567890', N'Role01', CAST(N'2024-07-03' AS Date), 0)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User13', N'ben123', N'ben123@gmail.com', N'Ben123456', N'Role01', CAST(N'2024-07-10' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User14', N'ben1234', N'ben123@gmail.com', N'Ben123456', N'Role01', CAST(N'2024-07-15' AS Date), 0)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User15', N'natsu123', N'natsu123@gmail.com', N'Ben123456', N'Role01', CAST(N'2024-07-18' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User16', N'bennguyen08', N'bennguyen123@gmail.com', N'Ben123456789', N'Role01', CAST(N'2024-07-22' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User17', N'tiendang08', N'tiendang123@gmail.com', N'Tien123456789', N'Role01', CAST(N'2024-07-22' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User18', N'vietthang08', N'vietthang123@gmail.com', N'Thang123456789', N'Role01', CAST(N'2024-07-22' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User2', N'manager', N'manager123@gmail.com', N'123', N'Role03', CAST(N'2024-06-03' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User3', N'admin', N'admin123@gmail.com', N'123', N'Role04', CAST(N'2024-06-03' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User8', N'trung', N'trung123@gmail.com', N'Abcdef', N'Role01', CAST(N'2024-06-18' AS Date), 1)
INSERT [dbo].[Users] ([userID], [username], [email], [password], [roleID], [joined_at], [active_status]) VALUES (N'User9', N'user1', N'user123@gmail.com', N'1234', N'Role01', CAST(N'2024-06-20' AS Date), 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc_member_session]    Script Date: 8/6/2024 3:44:02 PM ******/
ALTER TABLE [dbo].[Register_Bid] ADD  CONSTRAINT [uc_member_session] UNIQUE NONCLUSTERED 
(
	[memberID] ASC,
	[sessionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [uc_auction_jewelry]    Script Date: 8/6/2024 3:44:02 PM ******/
ALTER TABLE [dbo].[Session] ADD  CONSTRAINT [uc_auction_jewelry] UNIQUE NONCLUSTERED 
(
	[auctionID] ASC,
	[jewelryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_r43af9ap4edm43mmtq01oddj6]    Script Date: 8/6/2024 3:44:02 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UK_r43af9ap4edm43mmtq01oddj6] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__F3DBC57254B972C2]    Script Date: 8/6/2024 3:44:02 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Auction] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[Credit_Card] ADD  CONSTRAINT [set_card_active_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Jewelry] ADD  DEFAULT ('Re-Evaluated') FOR [status]
GO
ALTER TABLE [dbo].[Jewelry] ADD  DEFAULT ((0)) FOR [Sold]
GO
ALTER TABLE [dbo].[Member] ADD  DEFAULT ((0)) FOR [status_register_to_bid]
GO
ALTER TABLE [dbo].[Register_Bid] ADD  DEFAULT ('Placed') FOR [status]
GO
ALTER TABLE [dbo].[RequestValuation] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[RequestValuation] ADD  DEFAULT ((0)) FOR [final_Status]
GO
ALTER TABLE [dbo].[Session] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('Role01') FOR [roleID]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [set_active_status]  DEFAULT ((1)) FOR [active_status]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [fk_memberID] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [fk_memberID]
GO
ALTER TABLE [dbo].[Bid_Track]  WITH CHECK ADD  CONSTRAINT [fk_memberID_live] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Bid_Track] CHECK CONSTRAINT [fk_memberID_live]
GO
ALTER TABLE [dbo].[Bid_Track]  WITH CHECK ADD  CONSTRAINT [fk_sessionID_live] FOREIGN KEY([sessionID])
REFERENCES [dbo].[Session] ([sessionID])
GO
ALTER TABLE [dbo].[Bid_Track] CHECK CONSTRAINT [fk_sessionID_live]
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD FOREIGN KEY([parentID])
REFERENCES [dbo].[category] ([categoryID])
GO
ALTER TABLE [dbo].[Credit_Card]  WITH CHECK ADD  CONSTRAINT [fk_memberID_member] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Credit_Card] CHECK CONSTRAINT [fk_memberID_member]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Jewelry]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[category] ([categoryID])
GO
ALTER TABLE [dbo].[Jewelry]  WITH CHECK ADD FOREIGN KEY([valuationId])
REFERENCES [dbo].[RequestValuation] ([valuationId])
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD  CONSTRAINT [fk_member_userID] FOREIGN KEY([userID])
REFERENCES [dbo].[Users] ([userID])
GO
ALTER TABLE [dbo].[Member] CHECK CONSTRAINT [fk_member_userID]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD FOREIGN KEY([valuationId])
REFERENCES [dbo].[RequestValuation] ([valuationId])
GO
ALTER TABLE [dbo].[Register_Bid]  WITH CHECK ADD  CONSTRAINT [fk_Register_Bid_memberID] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Register_Bid] CHECK CONSTRAINT [fk_Register_Bid_memberID]
GO
ALTER TABLE [dbo].[Register_Bid]  WITH CHECK ADD  CONSTRAINT [fk_sessionID] FOREIGN KEY([sessionID])
REFERENCES [dbo].[Session] ([sessionID])
GO
ALTER TABLE [dbo].[Register_Bid] CHECK CONSTRAINT [fk_sessionID]
GO
ALTER TABLE [dbo].[RequestValuation]  WITH CHECK ADD FOREIGN KEY([memberId])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [fk_auctionID] FOREIGN KEY([auctionID])
REFERENCES [dbo].[Auction] ([auctionId])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [fk_auctionID]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [fk_jewelryID] FOREIGN KEY([jewelryID])
REFERENCES [dbo].[Jewelry] ([jewelryID])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [fk_jewelryID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [fk_roleID] FOREIGN KEY([roleID])
REFERENCES [dbo].[Role] ([roleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [fk_roleID]
GO
USE [master]
GO
ALTER DATABASE [Jewelry_Auction_System] SET  READ_WRITE 
GO