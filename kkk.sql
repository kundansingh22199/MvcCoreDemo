USE [master]
GO
/****** Object:  Database [MVCDEMO]    Script Date: 08-03-2024 18:28:59 ******/
CREATE DATABASE [MVCDEMO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVCDEMO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MVCDEMO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MVCDEMO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\MVCDEMO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MVCDEMO] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVCDEMO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVCDEMO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVCDEMO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVCDEMO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVCDEMO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVCDEMO] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVCDEMO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVCDEMO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVCDEMO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVCDEMO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVCDEMO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVCDEMO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVCDEMO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVCDEMO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVCDEMO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVCDEMO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVCDEMO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVCDEMO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVCDEMO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVCDEMO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVCDEMO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVCDEMO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVCDEMO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVCDEMO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MVCDEMO] SET  MULTI_USER 
GO
ALTER DATABASE [MVCDEMO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVCDEMO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVCDEMO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVCDEMO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MVCDEMO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MVCDEMO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MVCDEMO] SET QUERY_STORE = ON
GO
ALTER DATABASE [MVCDEMO] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MVCDEMO]
GO
/****** Object:  Table [dbo].[TblcityMaster]    Script Date: 08-03-2024 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblcityMaster](
	[city_id] [int] NULL,
	[city_name] [varchar](40) NULL,
	[c_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEmployee]    Script Date: 08-03-2024 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[MobileNo] [varchar](15) NULL,
	[Dob] [datetime] NULL,
	[State] [int] NULL,
	[City] [int] NULL,
	[Status] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblstateMaster]    Script Date: 08-03-2024 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblstateMaster](
	[state_id] [int] NULL,
	[state_name] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (1, N'North and Middle Andaman', 32)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (2, N'South Andaman', 32)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (3, N'Nicobar', 32)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (4, N'Adilabad', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (5, N'Anantapur', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (6, N'Chittoor', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (7, N'East Godavari', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (8, N'Guntur', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (9, N'Hyderabad', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (10, N'Kadapa', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (11, N'Karimnagar', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (12, N'Khammam', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (13, N'Krishna', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (14, N'Kurnool', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (15, N'Mahbubnagar', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (16, N'Medak', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (17, N'Nalgonda', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (18, N'Nellore', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (19, N'Nizamabad', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (20, N'Prakasam', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (21, N'Rangareddi', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (22, N'Srikakulam', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (23, N'Vishakhapatnam', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (24, N'Vizianagaram', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (25, N'Warangal', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (26, N'West Godavari', 1)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (27, N'Anjaw', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (28, N'Changlang', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (29, N'East Kameng', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (30, N'Lohit', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (31, N'Lower Subansiri', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (32, N'Papum Pare', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (33, N'Tirap', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (34, N'Dibang Valley', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (35, N'Upper Subansiri', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (36, N'West Kameng', 3)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (37, N'Barpeta', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (38, N'Bongaigaon', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (39, N'Cachar', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (40, N'Darrang', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (41, N'Dhemaji', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (42, N'Dhubri', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (43, N'Dibrugarh', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (44, N'Goalpara', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (45, N'Golaghat', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (46, N'Hailakandi', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (47, N'Jorhat', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (48, N'Karbi Anglong', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (49, N'Karimganj', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (50, N'Kokrajhar', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (51, N'Lakhimpur', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (52, N'Marigaon', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (53, N'Nagaon', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (54, N'Nalbari', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (55, N'North Cachar Hills', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (56, N'Sibsagar', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (57, N'Sonitpur', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (58, N'Tinsukia', 2)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (59, N'Araria', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (60, N'Aurangabad', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (61, N'Banka', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (62, N'Begusarai', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (63, N'Bhagalpur', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (64, N'Bhojpur', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (65, N'Buxar', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (66, N'Darbhanga', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (67, N'Purba Champaran', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (68, N'Gaya', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (69, N'Gopalganj', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (70, N'Jamui', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (71, N'Jehanabad', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (72, N'Khagaria', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (73, N'Kishanganj', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (74, N'Kaimur', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (75, N'Katihar', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (76, N'Lakhisarai', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (77, N'Madhubani', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (78, N'Munger', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (79, N'Madhepura', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (80, N'Muzaffarpur', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (81, N'Nalanda', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (82, N'Nawada', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (83, N'Patna', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (84, N'Purnia', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (85, N'Rohtas', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (86, N'Saharsa', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (87, N'Samastipur', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (88, N'Sheohar', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (89, N'Sheikhpura', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (90, N'Saran', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (91, N'Sitamarhi', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (92, N'Supaul', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (93, N'Siwan', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (94, N'Vaishali', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (95, N'Pashchim Champaran', 4)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (96, N'Bastar', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (97, N'Bilaspur', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (98, N'Dantewada', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (99, N'Dhamtari', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (100, N'Durg', 36)
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (101, N'Jashpur', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (102, N'Janjgir-Champa', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (103, N'Korba', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (104, N'Koriya', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (105, N'Kanker', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (106, N'Kawardha', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (107, N'Mahasamund', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (108, N'Raigarh', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (109, N'Raipur', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (110, N'Surguja', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (111, N'Diu', 29)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (112, N'Daman', 29)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (113, N'Rajnandgaon', 36)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (114, N'Central Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (115, N'East Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (116, N'New Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (117, N'North Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (118, N'North East Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (119, N'North West Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (120, N'South Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (121, N'South West Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (122, N'West Delhi', 25)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (123, N'North Goa', 26)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (124, N'South Goa', 26)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (125, N'Ahmedabad', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (126, N'Amreli District', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (127, N'Anand', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (128, N'Banaskantha', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (129, N'Bharuch', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (130, N'Bhavnagar', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (131, N'Dahod', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (132, N'The Dangs', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (133, N'Gandhinagar', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (134, N'Jamnagar', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (135, N'Junagadh', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (136, N'Kutch', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (137, N'Kheda', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (138, N'Mehsana', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (139, N'Narmada', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (140, N'Navsari', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (141, N'Patan', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (142, N'Panchmahal', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (143, N'Porbandar', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (144, N'Rajkot', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (145, N'Sabarkantha', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (146, N'Surendranagar', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (147, N'Surat', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (148, N'Vadodara', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (149, N'Valsad', 5)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (150, N'Ambala', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (151, N'Bhiwani', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (152, N'Faridabad', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (153, N'Fatehabad', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (154, N'Gurgaon', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (155, N'Hissar', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (156, N'Jhajjar', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (157, N'Jind', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (158, N'Karnal', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (159, N'Kaithal', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (160, N'Kurukshetra', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (161, N'Mahendragarh', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (162, N'Mewat', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (163, N'Panchkula', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (164, N'Panipat', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (165, N'Rewari', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (166, N'Rohtak', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (167, N'Sirsa', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (168, N'Sonepat', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (169, N'Yamuna Nagar', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (170, N'Palwal', 6)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (171, N'Bilaspur', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (172, N'Chamba', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (173, N'Hamirpur', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (174, N'Kangra', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (175, N'Kinnaur', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (176, N'Kulu', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (177, N'Lahaul and Spiti', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (178, N'Mandi', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (179, N'Shimla', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (180, N'Sirmaur', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (181, N'Solan', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (182, N'Una', 7)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (183, N'Anantnag', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (184, N'Badgam', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (185, N'Bandipore', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (186, N'Baramula', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (187, N'Doda', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (188, N'Jammu', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (189, N'Kargil', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (190, N'Kathua', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (191, N'Kupwara', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (192, N'Leh', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (193, N'Poonch', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (194, N'Pulwama', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (195, N'Rajauri', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (196, N'Srinagar', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (197, N'Samba', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (198, N'Udhampur', 8)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (199, N'Bokaro', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (200, N'Chatra', 34)
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (201, N'Deoghar', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (202, N'Dhanbad', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (203, N'Dumka', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (204, N'Purba Singhbhum', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (205, N'Garhwa', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (206, N'Giridih', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (207, N'Godda', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (208, N'Gumla', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (209, N'Hazaribagh', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (210, N'Koderma', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (211, N'Lohardaga', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (212, N'Pakur', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (213, N'Palamu', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (214, N'Ranchi', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (215, N'Sahibganj', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (216, N'Seraikela and Kharsawan', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (217, N'Pashchim Singhbhum', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (218, N'Ramgarh', 34)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (219, N'Bidar', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (220, N'Belgaum', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (221, N'Bijapur', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (222, N'Bagalkot', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (223, N'Bellary', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (224, N'Bangalore Rural District', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (225, N'Bangalore Urban District', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (226, N'Chamarajnagar', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (227, N'Chikmagalur', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (228, N'Chitradurga', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (229, N'Davanagere', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (230, N'Dharwad', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (231, N'Dakshina Kannada', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (232, N'Gadag', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (233, N'Gulbarga', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (234, N'Hassan', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (235, N'Haveri District', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (236, N'Kodagu', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (237, N'Kolar', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (238, N'Koppal', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (239, N'Mandya', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (240, N'Mysore', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (241, N'Raichur', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (242, N'Shimoga', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (243, N'Tumkur', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (244, N'Udupi', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (245, N'Uttara Kannada', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (246, N'Ramanagara', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (247, N'Chikballapur', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (248, N'Yadagiri', 9)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (249, N'Alappuzha', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (250, N'Ernakulam', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (251, N'Idukki', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (252, N'Kollam', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (253, N'Kannur', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (254, N'Kasaragod', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (255, N'Kottayam', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (256, N'Kozhikode', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (257, N'Malappuram', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (258, N'Palakkad', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (259, N'Pathanamthitta', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (260, N'Thrissur', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (261, N'Thiruvananthapuram', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (262, N'Wayanad', 10)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (263, N'Alirajpur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (264, N'Anuppur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (265, N'Ashok Nagar', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (266, N'Balaghat', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (267, N'Barwani', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (268, N'Betul', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (269, N'Bhind', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (270, N'Bhopal', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (271, N'Burhanpur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (272, N'Chhatarpur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (273, N'Chhindwara', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (274, N'Damoh', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (275, N'Datia', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (276, N'Dewas', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (277, N'Dhar', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (278, N'Dindori', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (279, N'Guna', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (280, N'Gwalior', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (281, N'Harda', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (282, N'Hoshangabad', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (283, N'Indore', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (284, N'Jabalpur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (285, N'Jhabua', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (286, N'Katni', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (287, N'Khandwa', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (288, N'Khargone', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (289, N'Mandla', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (290, N'Mandsaur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (291, N'Morena', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (292, N'Narsinghpur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (293, N'Neemuch', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (294, N'Panna', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (295, N'Rewa', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (296, N'Rajgarh', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (297, N'Ratlam', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (298, N'Raisen', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (299, N'Sagar', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (300, N'Satna', 11)
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (301, N'Sehore', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (302, N'Seoni', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (303, N'Shahdol', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (304, N'Shajapur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (305, N'Sheopur', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (306, N'Shivpuri', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (307, N'Sidhi', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (308, N'Singrauli', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (309, N'Tikamgarh', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (310, N'Ujjain', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (311, N'Umaria', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (312, N'Vidisha', 11)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (313, N'Ahmednagar', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (314, N'Akola', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (315, N'Amrawati', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (316, N'Aurangabad', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (317, N'Bhandara', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (318, N'Beed', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (319, N'Buldhana', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (320, N'Chandrapur', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (321, N'Dhule', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (322, N'Gadchiroli', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (323, N'Gondiya', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (324, N'Hingoli', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (325, N'Jalgaon', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (326, N'Jalna', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (327, N'Kolhapur', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (328, N'Latur', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (329, N'Mumbai City', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (330, N'Mumbai suburban', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (331, N'Nandurbar', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (332, N'Nanded', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (333, N'Nagpur', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (334, N'Nashik', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (335, N'Osmanabad', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (336, N'Parbhani', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (337, N'Pune', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (338, N'Raigad', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (339, N'Ratnagiri', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (340, N'Sindhudurg', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (341, N'Sangli', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (342, N'Solapur', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (343, N'Satara', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (344, N'Thane', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (345, N'Wardha', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (346, N'Washim', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (347, N'Yavatmal', 12)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (348, N'Bishnupur', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (349, N'Churachandpur', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (350, N'Chandel', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (351, N'Imphal East', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (352, N'Senapati', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (353, N'Tamenglong', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (354, N'Thoubal', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (355, N'Ukhrul', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (356, N'Imphal West', 13)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (357, N'East Garo Hills', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (358, N'East Khasi Hills', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (359, N'Jaintia Hills', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (360, N'Ri-Bhoi', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (361, N'South Garo Hills', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (362, N'West Garo Hills', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (363, N'West Khasi Hills', 14)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (364, N'Aizawl', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (365, N'Champhai', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (366, N'Kolasib', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (367, N'Lawngtlai', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (368, N'Lunglei', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (369, N'Mamit', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (370, N'Saiha', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (371, N'Serchhip', 15)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (372, N'Dimapur', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (373, N'Kohima', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (374, N'Mokokchung', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (375, N'Mon', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (376, N'Phek', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (377, N'Tuensang', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (378, N'Wokha', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (379, N'Zunheboto', 16)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (380, N'Angul', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (381, N'Boudh', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (382, N'Bhadrak', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (383, N'Bolangir', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (384, N'Bargarh', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (385, N'Baleswar', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (386, N'Cuttack', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (387, N'Debagarh', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (388, N'Dhenkanal', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (389, N'Ganjam', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (390, N'Gajapati', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (391, N'Jharsuguda', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (392, N'Jajapur', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (393, N'Jagatsinghpur', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (394, N'Khordha', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (395, N'Kendujhar', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (396, N'Kalahandi', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (397, N'Kandhamal', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (398, N'Koraput', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (399, N'Kendrapara', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (400, N'Malkangiri', 17)
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (401, N'Mayurbhanj', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (402, N'Nabarangpur', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (403, N'Nuapada', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (404, N'Nayagarh', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (405, N'Puri', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (406, N'Rayagada', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (407, N'Sambalpur', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (408, N'Subarnapur', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (409, N'Sundargarh', 17)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (410, N'Karaikal', 27)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (411, N'Mahe', 27)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (412, N'Puducherry', 27)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (413, N'Yanam', 27)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (414, N'Amritsar', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (415, N'Bathinda', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (416, N'Firozpur', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (417, N'Faridkot', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (418, N'Fatehgarh Sahib', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (419, N'Gurdaspur', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (420, N'Hoshiarpur', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (421, N'Jalandhar', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (422, N'Kapurthala', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (423, N'Ludhiana', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (424, N'Mansa', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (425, N'Moga', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (426, N'Mukatsar', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (427, N'Nawan Shehar', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (428, N'Patiala', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (429, N'Rupnagar', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (430, N'Sangrur', 18)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (431, N'Ajmer', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (432, N'Alwar', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (433, N'Bikaner', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (434, N'Barmer', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (435, N'Banswara', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (436, N'Bharatpur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (437, N'Baran', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (438, N'Bundi', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (439, N'Bhilwara', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (440, N'Churu', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (441, N'Chittorgarh', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (442, N'Dausa', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (443, N'Dholpur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (444, N'Dungapur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (445, N'Ganganagar', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (446, N'Hanumangarh', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (447, N'Juhnjhunun', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (448, N'Jalore', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (449, N'Jodhpur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (450, N'Jaipur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (451, N'Jaisalmer', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (452, N'Jhalawar', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (453, N'Karauli', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (454, N'Kota', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (455, N'Nagaur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (456, N'Pali', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (457, N'Pratapgarh', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (458, N'Rajsamand', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (459, N'Sikar', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (460, N'Sawai Madhopur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (461, N'Sirohi', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (462, N'Tonk', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (463, N'Udaipur', 19)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (464, N'East Sikkim', 20)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (465, N'North Sikkim', 20)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (466, N'South Sikkim', 20)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (467, N'West Sikkim', 20)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (468, N'Ariyalur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (469, N'Chennai', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (470, N'Coimbatore', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (471, N'Cuddalore', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (472, N'Dharmapuri', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (473, N'Dindigul', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (474, N'Erode', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (475, N'Kanchipuram', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (476, N'Kanyakumari', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (477, N'Karur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (478, N'Madurai', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (479, N'Nagapattinam', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (480, N'The Nilgiris', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (481, N'Namakkal', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (482, N'Perambalur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (483, N'Pudukkottai', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (484, N'Ramanathapuram', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (485, N'Salem', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (486, N'Sivagangai', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (487, N'Tiruppur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (488, N'Tiruchirappalli', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (489, N'Theni', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (490, N'Tirunelveli', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (491, N'Thanjavur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (492, N'Thoothukudi', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (493, N'Thiruvallur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (494, N'Thiruvarur', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (495, N'Tiruvannamalai', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (496, N'Vellore', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (497, N'Villupuram', 21)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (498, N'Dhalai', 22)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (499, N'North Tripura', 22)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (500, N'South Tripura', 22)
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (501, N'West Tripura', 22)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (502, N'Almora', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (503, N'Bageshwar', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (504, N'Chamoli', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (505, N'Champawat', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (506, N'Dehradun', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (507, N'Haridwar', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (508, N'Nainital', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (509, N'Pauri Garhwal', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (510, N'Pithoragharh', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (511, N'Rudraprayag', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (512, N'Tehri Garhwal', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (513, N'Udham Singh Nagar', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (514, N'Uttarkashi', 33)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (515, N'Agra', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (516, N'Allahabad', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (517, N'Aligarh', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (518, N'Ambedkar Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (519, N'Auraiya', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (520, N'Azamgarh', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (521, N'Barabanki', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (522, N'Badaun', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (523, N'Bagpat', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (524, N'Bahraich', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (525, N'Bijnor', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (526, N'Ballia', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (527, N'Banda', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (528, N'Balrampur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (529, N'Bareilly', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (530, N'Basti', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (531, N'Bulandshahr', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (532, N'Chandauli', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (533, N'Chitrakoot', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (534, N'Deoria', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (535, N'Etah', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (536, N'Kanshiram Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (537, N'Etawah', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (538, N'Firozabad', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (539, N'Farrukhabad', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (540, N'Fatehpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (541, N'Faizabad', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (542, N'Gautam Buddha Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (543, N'Gonda', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (544, N'Ghazipur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (545, N'Gorkakhpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (546, N'Ghaziabad', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (547, N'Hamirpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (548, N'Hardoi', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (549, N'Mahamaya Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (550, N'Jhansi', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (551, N'Jalaun', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (552, N'Jyotiba Phule Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (553, N'Jaunpur District', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (554, N'Kanpur Dehat', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (555, N'Kannauj', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (556, N'Kanpur Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (557, N'Kaushambi', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (558, N'Kushinagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (559, N'Lalitpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (560, N'Lakhimpur Kheri', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (561, N'Lucknow', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (562, N'Mau', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (563, N'Meerut', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (564, N'Maharajganj', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (565, N'Mahoba', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (566, N'Mirzapur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (567, N'Moradabad', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (568, N'Mainpuri', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (569, N'Mathura', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (570, N'Muzaffarnagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (571, N'Pilibhit', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (572, N'Pratapgarh', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (573, N'Rampur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (574, N'Rae Bareli', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (575, N'Saharanpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (576, N'Sitapur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (577, N'Shahjahanpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (578, N'Sant Kabir Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (579, N'Siddharthnagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (580, N'Sonbhadra', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (581, N'Sant Ravidas Nagar', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (582, N'Sultanpur', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (583, N'Shravasti', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (584, N'Unnao', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (585, N'Varanasi', 23)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (586, N'Birbhum', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (587, N'Bankura', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (588, N'Bardhaman', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (589, N'Darjeeling', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (590, N'Dakshin Dinajpur', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (591, N'Hooghly', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (592, N'Howrah', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (593, N'Jalpaiguri', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (594, N'Cooch Behar', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (595, N'Kolkata', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (596, N'Malda', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (597, N'Midnapore', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (598, N'Murshidabad', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (599, N'Nadia', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (600, N'North 24 Parganas', 24)
GO
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (601, N'South 24 Parganas', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (602, N'Purulia', 24)
INSERT [dbo].[TblcityMaster] ([city_id], [city_name], [c_id]) VALUES (603, N'Uttar Dinajpur', 24)
GO
SET IDENTITY_INSERT [dbo].[TblEmployee] ON 

INSERT [dbo].[TblEmployee] ([Id], [Name], [Email], [MobileNo], [Dob], [State], [City], [Status], [CreateDate], [UpdateDate]) VALUES (1, N'Kundan Kumar', N'kk@gmail.com', N'1234567890', CAST(N'2024-03-20T00:00:00.000' AS DateTime), 0, 0, 1, CAST(N'2024-03-08T13:31:46.623' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[TblEmployee] OFF
GO
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (1, N'ANDHRA PRADESH')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (2, N'ASSAM')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (3, N'ARUNACHAL PRADESH')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (4, N'BIHAR')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (5, N'GUJRAT')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (6, N'HARYANA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (7, N'HIMACHAL PRADESH')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (8, N'JAMMU & KASHMIR')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (9, N'KARNATAKA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (10, N'KERALA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (11, N'MADHYA PRADESH')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (12, N'MAHARASHTRA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (13, N'MANIPUR')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (14, N'MEGHALAYA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (15, N'MIZORAM')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (16, N'NAGALAND')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (17, N'ORISSA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (18, N'PUNJAB')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (19, N'RAJASTHAN')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (20, N'SIKKIM')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (21, N'TAMIL NADU')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (22, N'TRIPURA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (23, N'UTTAR PRADESH')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (24, N'WEST BENGAL')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (25, N'DELHI')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (26, N'GOA')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (27, N'PONDICHERY')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (28, N'LAKSHDWEEP')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (29, N'DAMAN & DIU')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (30, N'DADRA & NAGAR')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (31, N'CHANDIGARH')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (32, N'ANDAMAN & NICOBAR')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (33, N'UTTARANCHAL')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (34, N'JHARKHAND')
INSERT [dbo].[TblstateMaster] ([state_id], [state_name]) VALUES (35, N'CHATTISGARH')
GO
/****** Object:  StoredProcedure [dbo].[SP_CityMaster]    Script Date: 08-03-2024 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_CityMaster]
@id int
as
begin
	select city_id , city_name  from TblcityMaster inner join TblstateMaster on TblcityMaster.c_id=TblstateMaster.state_id  where TblstateMaster.state_id=@id
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Employee]    Script Date: 08-03-2024 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SP_Employee]
@Id int = 0 ,
@Name varchar(50)=null,
@Email varchar(100)=null, 
@MobileNo varchar(15)=null, 
@Dob datetime=null,
@State int =0,
@City int =0,
@Action varchar(20)
AS
BEGIN
	IF @Action='Insert'
	BEGIN
		INSERT INTO TblEmployee(Name,Email,MobileNo,Dob,State,City,Status,CreateDate) VALUES (@Name,@Email,@MobileNo,@Dob,@State,@City,1,GETDATE())
	END
	IF @Action='Update'
	BEGIN
		UPDATE TblEmployee SET Name=@Name,Email=@Email,Dob=@Dob,State=@State,City=@City,MobileNo=@MobileNo where Id=@Id
	END
	IF @Action='Delete'
	BEGIN
		DELETE From TblEmployee Where Id=@Id
	END
	IF @Action='SearchById'
	BEGIN
		SELECT * From TblEmployee Where Id=@Id
	END
	IF @Action='AllData'
	BEGIN
		SELECT * From TblEmployee
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SP_StateMaster]    Script Date: 08-03-2024 18:28:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_StateMaster]
as
begin
	select state_id , state_name  from TblstateMaster
end
GO
USE [master]
GO
ALTER DATABASE [MVCDEMO] SET  READ_WRITE 
GO
