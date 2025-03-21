USE [master]
GO
/****** Object:  Database [web_project]    Script Date: 3/4/2019 11:01:39 AM ******/
CREATE DATABASE [web_project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'web_project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\web_project.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'web_project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\web_project_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [web_project] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [web_project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [web_project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [web_project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [web_project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [web_project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [web_project] SET ARITHABORT OFF 
GO
ALTER DATABASE [web_project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [web_project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [web_project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [web_project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [web_project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [web_project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [web_project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [web_project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [web_project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [web_project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [web_project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [web_project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [web_project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [web_project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [web_project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [web_project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [web_project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [web_project] SET RECOVERY FULL 
GO
ALTER DATABASE [web_project] SET  MULTI_USER 
GO
ALTER DATABASE [web_project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [web_project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [web_project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [web_project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [web_project] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [web_project] SET QUERY_STORE = OFF
GO
USE [web_project]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [web_project]
GO
/****** Object:  Table [dbo].[tbl_attandance]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_attandance](
	[sub_id] [int] NOT NULL,
	[stu_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[att_date] [datetime] NULL,
	[att_type] [nvarchar](30) NULL,
	[att_description] [nvarchar](max) NULL,
	[att_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_attandance] PRIMARY KEY CLUSTERED 
(
	[att_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_get_att]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_get_att] (@st int,@su int)
returns table as return 
select * from tbl_attandance where stu_id=@st and sub_id=@su
GO
/****** Object:  Table [dbo].[tbl_lesson]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lesson](
	[chap_id] [int] NULL,
	[les_name] [nvarchar](50) NULL,
	[les_file_path_video] [nvarchar](max) NULL,
	[les_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_lesson] PRIMARY KEY CLUSTERED 
(
	[les_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chapter]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_chapter](
	[sub_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[chap_name] [nvarchar](50) NOT NULL,
	[chap_description] [nvarchar](max) NULL,
	[chap_file_path_pdf] [nvarchar](max) NULL,
	[chap_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_chapter] PRIMARY KEY CLUSTERED 
(
	[chap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_get_chapter_lesson]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_get_chapter_lesson](@sid int,@tid int)
returns table as return
select top 100 percent tea_id,ls.chap_id,ch.chap_name,ch.chap_description,ch.chap_file_path_pdf,ls.les_name,ls.les_file_path_video
 from tbl_lesson ls inner join tbl_chapter ch on ls.chap_id=ch.chap_id where ch.tea_id=@tid and ch.sub_id=@sid
 order by ch.chap_id
GO
/****** Object:  Table [dbo].[tbl_class]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](50) NOT NULL,
	[class_department] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_class] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_day]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_day](
	[day] [nvarchar](20) NOT NULL,
	[day_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_day] PRIMARY KEY CLUSTERED 
(
	[day_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_homework]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_homework](
	[hom_id] [int] IDENTITY(1,1) NOT NULL,
	[hom_description] [nvarchar](max) NULL,
	[hom_type] [nvarchar](20) NULL,
	[sub_id] [int] NOT NULL,
 CONSTRAINT [PK_tbl_homework] PRIMARY KEY CLUSTERED 
(
	[hom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_homework_detail]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_homework_detail](
	[hom_id] [int] NOT NULL,
	[stu_id] [int] NOT NULL,
	[point] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_homework_detail] PRIMARY KEY CLUSTERED 
(
	[hom_id] ASC,
	[stu_id] ASC,
	[point] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_schdedule]    Script Date: 3/4/2019 11:01:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_schdedule](
	[sub_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[sch_id] [int] IDENTITY(1,1) NOT NULL,
	[sch_days] [int] NOT NULL,
	[sch_times] [int] NULL,
 CONSTRAINT [PK_tbl_schdedule] PRIMARY KEY CLUSTERED 
(
	[sch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_score]    Script Date: 3/4/2019 11:01:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_score](
	[stu_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[attandance] [float] NOT NULL,
	[homework] [float] NOT NULL,
	[assignment] [float] NOT NULL,
	[final_exam] [float] NOT NULL,
	[score_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_id] [int] NULL,
 CONSTRAINT [PK_tbl_score] PRIMARY KEY CLUSTERED 
(
	[score_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 3/4/2019 11:01:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_student](
	[stu_id] [int] IDENTITY(1,1) NOT NULL,
	[stu_name] [nvarchar](max) NOT NULL,
	[stu_sex] [nchar](15) NOT NULL,
	[stu_dob] [datetime] NOT NULL,
	[stu_pob] [nvarchar](max) NOT NULL,
	[stu_address] [nvarchar](max) NOT NULL,
	[stu_phone] [nvarchar](13) NULL,
	[stu_email] [nvarchar](max) NULL,
	[stu_emergency_number] [nvarchar](13) NOT NULL,
	[class_id] [int] NULL,
 CONSTRAINT [PK_tbl_student] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 3/4/2019 11:01:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subject](
	[sub_id] [int] IDENTITY(6,1) NOT NULL,
	[sub_name] [nvarchar](max) NULL,
	[sub_description] [nvarchar](max) NULL,
	[sub_picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_subject] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_teacher]    Script Date: 3/4/2019 11:01:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_teacher](
	[tea_email] [nvarchar](max) NOT NULL,
	[tea_name] [nvarchar](max) NOT NULL,
	[tea_gender] [nchar](15) NOT NULL,
	[tea_dob] [datetime] NOT NULL,
	[tea_pob] [nvarchar](max) NOT NULL,
	[tea_address] [nvarchar](max) NULL,
	[tea_phone] [nvarchar](13) NULL,
	[tea_picture] [nvarchar](max) NULL,
	[tea_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_tbl_teacher] PRIMARY KEY CLUSTERED 
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_time]    Script Date: 3/4/2019 11:01:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_time](
	[time_id] [int] IDENTITY(1,1) NOT NULL,
	[times] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_time] PRIMARY KEY CLUSTERED 
(
	[time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 3/4/2019 11:01:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[user_id] [int] NOT NULL,
	[user_email] [nvarchar](100) NULL,
	[user_psw] [nvarchar](50) NOT NULL,
	[user_type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_attandance] ([sub_id], [stu_id], [tea_id], [att_date], [att_type], [att_description], [att_id]) VALUES (1, 1, 2, CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'absence', N'Dont know', 1)
INSERT [dbo].[tbl_attandance] ([sub_id], [stu_id], [tea_id], [att_date], [att_type], [att_description], [att_id]) VALUES (3, 1, 2, CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'absence', N'Headache', 2)
INSERT [dbo].[tbl_attandance] ([sub_id], [stu_id], [tea_id], [att_date], [att_type], [att_description], [att_id]) VALUES (5, 1, 2, CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'permission', N'Dirrhea', 3)
SET IDENTITY_INSERT [dbo].[tbl_chapter] ON 

INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (2, 1003, N'XML & XSL', N'WEB Description', N'D:\IT_year_4\Web develop\webass2\download', 1008)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (2, 1003, N'PHP', N'WEB Description', N'D:\IT_year_4\Web develop\webass2\download', 1009)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (2, 1003, N'Asp.net ', N'WEB Description', N'D:\IT_year_4\Web develop\webass2\download', 1010)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (3, 1006, N'Project Management', N'SE Description', N'D:\IT_year_4\Web develop\webass2\download', 1011)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (3, 1006, N'Scope Management', N'SE Description', N'D:\IT_year_4\Web develop\webass2\download', 1012)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (3, 1006, N'Time Management', N'SE Description', N'D:\IT_year_4\Web develop\webass2\download', 1013)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (4, 1008, N'Samba ', N'Linux Description', N'D:\IT_year_4\Web develop\webass2\download', 1014)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (4, 1008, N'DNS', N'Linux Description', N'D:\IT_year_4\Web develop\webass2\download', 1015)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (4, 1008, N'Apache', N'Linux Description', N'D:\IT_year_4\Web develop\webass2\download', 1016)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (5, 1010, N'Introduction to IS', N'MIS Description', N'D:\IT_year_4\Web develop\webass2\download', 1017)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (5, 1010, N'Information system in organization', N'MIS Description', N'D:\IT_year_4\Web develop\webass2\download', 1018)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (5, 1010, N'Hardware input processing & output devices', N'MIS Description', N'D:\IT_year_4\Web develop\webass2\download', 1019)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (1, 2, N'Structural Design Pattern', N'OOAD Description', N'D:\IT_year_4\Web develop\webass2\download', 1023)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (1, 2, N'Creational Design Pattern', N'OOAD Description', N'D:\IT_year_4\Web develop\webass2\download', 1024)
INSERT [dbo].[tbl_chapter] ([sub_id], [tea_id], [chap_name], [chap_description], [chap_file_path_pdf], [chap_id]) VALUES (1, 2, N'Behavioral Design Pattern', N'OOAD Desription', N'D:\IT_year_4\Web develop\webass2\download', 1025)
SET IDENTITY_INSERT [dbo].[tbl_chapter] OFF
SET IDENTITY_INSERT [dbo].[tbl_class] ON 

INSERT [dbo].[tbl_class] ([class_id], [class_name], [class_department]) VALUES (1, N'M4', N'CS')
INSERT [dbo].[tbl_class] ([class_id], [class_name], [class_department]) VALUES (2, N'M5', N'CS')
SET IDENTITY_INSERT [dbo].[tbl_class] OFF
SET IDENTITY_INSERT [dbo].[tbl_day] ON 

INSERT [dbo].[tbl_day] ([day], [day_id]) VALUES (N'Monday', 1)
INSERT [dbo].[tbl_day] ([day], [day_id]) VALUES (N'Tuesday', 2)
INSERT [dbo].[tbl_day] ([day], [day_id]) VALUES (N'Wedneasday', 3)
INSERT [dbo].[tbl_day] ([day], [day_id]) VALUES (N'Thursaday', 4)
INSERT [dbo].[tbl_day] ([day], [day_id]) VALUES (N'Friday', 5)
INSERT [dbo].[tbl_day] ([day], [day_id]) VALUES (N'Saturday', 6)
SET IDENTITY_INSERT [dbo].[tbl_day] OFF
SET IDENTITY_INSERT [dbo].[tbl_homework] ON 

INSERT [dbo].[tbl_homework] ([hom_id], [hom_description], [hom_type], [sub_id]) VALUES (1, N'Decorator', N'homework', 1)
INSERT [dbo].[tbl_homework] ([hom_id], [hom_description], [hom_type], [sub_id]) VALUES (2, N'Create Form with bridge', N'assignment', 1)
INSERT [dbo].[tbl_homework] ([hom_id], [hom_description], [hom_type], [sub_id]) VALUES (3, N'State Pattern', N'homework', 1)
INSERT [dbo].[tbl_homework] ([hom_id], [hom_description], [hom_type], [sub_id]) VALUES (1002, N'State practice', N'homework', 1)
SET IDENTITY_INSERT [dbo].[tbl_homework] OFF
INSERT [dbo].[tbl_homework_detail] ([hom_id], [stu_id], [point], [description]) VALUES (1, 1, 10, N'laor')
INSERT [dbo].[tbl_homework_detail] ([hom_id], [stu_id], [point], [description]) VALUES (2, 1, 20, N'rrr')
INSERT [dbo].[tbl_homework_detail] ([hom_id], [stu_id], [point], [description]) VALUES (3, 1, 10, N'Pattern')
INSERT [dbo].[tbl_homework_detail] ([hom_id], [stu_id], [point], [description]) VALUES (1002, 1, 20, N'loar')
SET IDENTITY_INSERT [dbo].[tbl_lesson] ON 

INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1023, N'Decorator Pattern', N'https://www.youtube.com/embed/fJW65Wo7IHI ', 27)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1023, N'Bridge Pattern', N'https://www.youtube.com/embed/fJW65Wo7IHI ', 28)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1023, N'Adaptor Pattern', N'https://www.youtube.com/embed/fJW65Wo7IHI ', 29)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1024, N'Prototype Pattern', NULL, 30)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1024, N'Builder Pattern', NULL, 31)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1024, N'Factory Pattern', NULL, 32)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1025, N'Strategies Pattern', NULL, 33)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1025, N'State Pattern', NULL, 34)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1025, N'Chain of Responsibility Pattern', NULL, 35)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1008, N'XML Implementation', N'https://www.youtube.com/embed/UnTQVlqmDQ0', 36)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1008, N'XSL Implementation', NULL, 37)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1008, N'XSL&XML Implementation', NULL, 38)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1009, N'PHP Introduction', NULL, 39)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1009, N'PHP Syntax', NULL, 40)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1009, N'PHP Implementation', NULL, 41)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1010, N'MVC Introduction', NULL, 42)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1010, N'MVC Guide', NULL, 43)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1010, N'MVC Implementation', NULL, 44)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1011, N'Budget Planning', NULL, 45)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1011, N'WBS Planning', NULL, 46)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1011, N'QC Planning', NULL, 47)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1012, N'Stake holder', NULL, 48)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1012, N'Scope Statement', NULL, 49)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1012, N'Scope Control', NULL, 50)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1013, N'Managing Goal', NULL, 51)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1013, N'Managing Task', NULL, 52)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1013, N'Prioritize', NULL, 53)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1014, N'Samba Guide', NULL, 54)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1014, N'Sambarization', NULL, 55)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1014, N'Samba Component', NULL, 56)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1015, N'DNS Guide', NULL, 57)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1015, N'DNS Component', NULL, 58)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1015, N'DNS Pros&Cons', NULL, 59)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1016, N'Apache Guide', NULL, 60)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1016, N'Apache Component', NULL, 61)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1016, N'Apache Pros&Cons', NULL, 62)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1017, N'What is IS', NULL, 63)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1017, N'About is IS', NULL, 64)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1017, N'IS Guide', NULL, 65)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1018, N'What is IS', NULL, 66)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1018, N'About is IS', NULL, 67)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1018, N'IS Guide', NULL, 68)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1019, N'What is IS', NULL, 69)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1019, N'About is IS', NULL, 70)
INSERT [dbo].[tbl_lesson] ([chap_id], [les_name], [les_file_path_video], [les_id]) VALUES (1019, N'IS Guide', NULL, 71)
SET IDENTITY_INSERT [dbo].[tbl_lesson] OFF
SET IDENTITY_INSERT [dbo].[tbl_schdedule] ON 

INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (1, 2, 2, 1006, 1, 1)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (3, 2, 1006, 1007, 1, 2)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (2, 2, 1003, 1008, 2, 1)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (5, 2, 1010, 1009, 2, 2)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (5, 2, 1010, 1010, 3, 1)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (4, 2, 1008, 1011, 3, 2)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (1, 2, 2, 1012, 4, 1)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (4, 2, 1008, 1013, 4, 2)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (2, 2, 1003, 1014, 5, 1)
INSERT [dbo].[tbl_schdedule] ([sub_id], [class_id], [tea_id], [sch_id], [sch_days], [sch_times]) VALUES (3, 2, 1006, 1015, 5, 2)
SET IDENTITY_INSERT [dbo].[tbl_schdedule] OFF
SET IDENTITY_INSERT [dbo].[tbl_score] ON 

INSERT [dbo].[tbl_score] ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id], [sub_id]) VALUES (1, 2, 9, 10, 20, 60, 2, 1)
INSERT [dbo].[tbl_score] ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id], [sub_id]) VALUES (1, 1003, 5, 8, 18, 55, 3, 2)
INSERT [dbo].[tbl_score] ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id], [sub_id]) VALUES (1, 1006, 8, 10, 20, 60, 4, 3)
INSERT [dbo].[tbl_score] ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id], [sub_id]) VALUES (1, 1008, 8, 10, 18, 54, 5, 4)
INSERT [dbo].[tbl_score] ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id], [sub_id]) VALUES (1, 1010, 9, 8, 20, 60, 6, 5)
SET IDENTITY_INSERT [dbo].[tbl_score] OFF
SET IDENTITY_INSERT [dbo].[tbl_student] ON 

INSERT [dbo].[tbl_student] ([stu_id], [stu_name], [stu_sex], [stu_dob], [stu_pob], [stu_address], [stu_phone], [stu_email], [stu_emergency_number], [class_id]) VALUES (1, N'Tommy', N'male           ', CAST(N'1997-10-29T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'0967249948', N'òudom97@gmail.com', N'037432523', 2)
INSERT [dbo].[tbl_student] ([stu_id], [stu_name], [stu_sex], [stu_dob], [stu_pob], [stu_address], [stu_phone], [stu_email], [stu_emergency_number], [class_id]) VALUES (2, N'Fech ', N'female         ', CAST(N'2001-07-12T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'012794999', N'elf894@gmail.com', N'07534793', 1)
INSERT [dbo].[tbl_student] ([stu_id], [stu_name], [stu_sex], [stu_dob], [stu_pob], [stu_address], [stu_phone], [stu_email], [stu_emergency_number], [class_id]) VALUES (1002, N'Siem Soksovatdy', N'male           ', CAST(N'1998-03-06T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'012517427', N'soksovatdysiem@gmail.com', N'012517427', 2)
INSERT [dbo].[tbl_student] ([stu_id], [stu_name], [stu_sex], [stu_dob], [stu_pob], [stu_address], [stu_phone], [stu_email], [stu_emergency_number], [class_id]) VALUES (2002, N'toto', N'male           ', CAST(N'1970-03-04T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'075362854', N'TOTO@mail.com', N'085463576', 1)
SET IDENTITY_INSERT [dbo].[tbl_student] OFF
SET IDENTITY_INSERT [dbo].[tbl_subject] ON 

INSERT [dbo].[tbl_subject] ([sub_id], [sub_name], [sub_description], [sub_picture]) VALUES (1, N'ooad', N'Object-oriented analysis and design (OOAD) is a popular technical approach for analyzing and designing an application, system, or business by applying object-oriented programming, as well as using visual modeling throughout the development life cycles to foster better stakeholder communication and product quality.
', N'asd')
INSERT [dbo].[tbl_subject] ([sub_id], [sub_name], [sub_description], [sub_picture]) VALUES (2, N'web', N'Web application development is the creation of application programs that reside on remote servers and are delivered to the user’s device over the Internet. A web application (web app) does not need to be downloaded and is instead accessed through a network. An end user can access a web application through a web browser such as Google Chrome, Safari, or Mozilla Firefox. A majority of web applications can be written in JavaScript, Cascading Style Sheets (CSS), and HTML5.
', N'afioas')
INSERT [dbo].[tbl_subject] ([sub_id], [sub_name], [sub_description], [sub_picture]) VALUES (3, N'se', N'Project management is the practice of initiating, planning, executing, controlling, and closing the work of a team to achieve specific goals and meet specific success criteria at the specified time.
', N'hrofreoif')
INSERT [dbo].[tbl_subject] ([sub_id], [sub_name], [sub_description], [sub_picture]) VALUES (4, N'linux', N'Linux is the best-known and most-used open source operating system. As an operating system, Linux is software that sits underneath all of the other software on a computer, receiving requests from those programs and relaying these requests to the computer’s hardware.
', N'test')
INSERT [dbo].[tbl_subject] ([sub_id], [sub_name], [sub_description], [sub_picture]) VALUES (5, N'mis', N'A management information system (MIS) is a computerized database of financial information organized and programmed in such a way that it produces regular reports on operations for every level of management in a company. It is usually also possible to obtain special reports from the system easily.
', N' loy')
SET IDENTITY_INSERT [dbo].[tbl_subject] OFF
SET IDENTITY_INSERT [dbo].[tbl_teacher] ON 

INSERT [dbo].[tbl_teacher] ([tea_email], [tea_name], [tea_gender], [tea_dob], [tea_pob], [tea_address], [tea_phone], [tea_picture], [tea_id]) VALUES (N'ooad@gmail.com', N'Tang Pengsreng', N'male           ', CAST(N'1992-10-10T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'0923231323', N'https://drive.google.com/file/d/1C99Z9esc9fhUJwLrgfu3lGcNdEMtCIy3/', 2)
INSERT [dbo].[tbl_teacher] ([tea_email], [tea_name], [tea_gender], [tea_dob], [tea_pob], [tea_address], [tea_phone], [tea_picture], [tea_id]) VALUES (N'web@gmail.com', N'Chhim Bunthoeun', N'male           ', CAST(N'1992-08-02T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'03435343', N'https://scontent.fpnh1-1.fna.fbcdn.net/v/t1.0-9/14581367_190735968028253_3918625345799342786_n.jpg?_nc_cat=111&_nc_eui2=AeEEaOcE7WYAaIr4I-StE6KTLQsLsCOYgHfEICqWmX9XCBu2SGsN5sHlDb2_wStqYSgEa-yXD4P9qLPGMmnplhMyGqrquKCPewqzBa0FbfaOzg&_nc_ht=scontent.fpnh1-1.fna&oh=0d3c1688ce98b16e7c6953ff1a9f64c9&oe=5D20D681', 1003)
INSERT [dbo].[tbl_teacher] ([tea_email], [tea_name], [tea_gender], [tea_dob], [tea_pob], [tea_address], [tea_phone], [tea_picture], [tea_id]) VALUES (N'se@gmail.com', N'Pok Leakmony', N'male           ', CAST(N'1992-10-10T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'923231323', N'D:\IT_year_4\Web develop\webass2\web.jpg', 1006)
INSERT [dbo].[tbl_teacher] ([tea_email], [tea_name], [tea_gender], [tea_dob], [tea_pob], [tea_address], [tea_phone], [tea_picture], [tea_id]) VALUES (N'linux@gmail.com', N'Ouk Khean', N'male           ', CAST(N'1992-10-10T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'923231323', N'https://drive.google.com/open?id=1S46Cyiouqk0ZYk4eOVk5M6jrZhn_ypzw', 1008)
INSERT [dbo].[tbl_teacher] ([tea_email], [tea_name], [tea_gender], [tea_dob], [tea_pob], [tea_address], [tea_phone], [tea_picture], [tea_id]) VALUES (N'mis@gmail.com', N'Ly Heng', N'male           ', CAST(N'1992-10-10T00:00:00.000' AS DateTime), N'Phnom Penh', N'Phnom Penh', N'923231323', N'https://scontent.fpnh9-2.fna.fbcdn.net/v/t1.0-9/25660081_758096691044993_1512696701839256779_n.jpg?_nc_cat=105&_nc_eui2=AeG_a7yeCRYNSczCIOxqAsT5IMed_lf5Z2PngvVCKZkwiL53mYbz8Zd1IsZTf7_WWsuenSGBL1xwmSwJ-OyvjQQKXtB7fO90BfiXvFMEPH8BmA&_nc_ht=scontent.fpnh9-2.fna&oh=8e43ba5f6575907a4cdb62ecfd38c3ad&oe=5D151F6B', 1010)
SET IDENTITY_INSERT [dbo].[tbl_teacher] OFF
SET IDENTITY_INSERT [dbo].[tbl_time] ON 

INSERT [dbo].[tbl_time] ([time_id], [times]) VALUES (1, N'7:30-9:00')
INSERT [dbo].[tbl_time] ([time_id], [times]) VALUES (2, N'9:00-10:45')
SET IDENTITY_INSERT [dbo].[tbl_time] OFF
INSERT [dbo].[tbl_user] ([user_id], [user_email], [user_psw], [user_type]) VALUES (1, N'oudom97@gmail.com', N'123', N'student')
INSERT [dbo].[tbl_user] ([user_id], [user_email], [user_psw], [user_type]) VALUES (2, N'elf894@gmail.com', N'123', N'student')
INSERT [dbo].[tbl_user] ([user_id], [user_email], [user_psw], [user_type]) VALUES (1002, N'soksovatdysiem@gmail.com', N'123', N'student')
INSERT [dbo].[tbl_user] ([user_id], [user_email], [user_psw], [user_type]) VALUES (2002, N'TOTO@mail.com', N'123', N'admin')
/****** Object:  Index [IX_FK__tbl_attan__stu_i__36B12243]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_attan__stu_i__36B12243] ON [dbo].[tbl_attandance]
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_attan__tea_i__38996AB5]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_attan__tea_i__38996AB5] ON [dbo].[tbl_attandance]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_lesso__sub_i__1A14E395]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_lesso__sub_i__1A14E395] ON [dbo].[tbl_chapter]
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_lesso__tea_i__1B0907CE]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_lesso__tea_i__1B0907CE] ON [dbo].[tbl_chapter]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_homew__sub_i__398D8EEE]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_homew__sub_i__398D8EEE] ON [dbo].[tbl_homework]
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_homew__stu_i__3B75D760]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_homew__stu_i__3B75D760] ON [dbo].[tbl_homework_detail]
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_lesso__chap___4C6B5938]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_lesso__chap___4C6B5938] ON [dbo].[tbl_lesson]
(
	[chap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__class__3E52440B]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__class__3E52440B] ON [dbo].[tbl_schdedule]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__sch_d__17036CC0]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__sch_d__17036CC0] ON [dbo].[tbl_schdedule]
(
	[sch_days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__sch_t__1F98B2C1]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__sch_t__1F98B2C1] ON [dbo].[tbl_schdedule]
(
	[sch_times] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__sub_i__3F466844]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__sub_i__3F466844] ON [dbo].[tbl_schdedule]
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__tea_i__403A8C7D]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__tea_i__403A8C7D] ON [dbo].[tbl_schdedule]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_stude__class__4316F928]    Script Date: 3/4/2019 11:01:40 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_stude__class__4316F928] ON [dbo].[tbl_student]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD  CONSTRAINT [FK__tbl_attan__stu_i__36B12243] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_attandance] CHECK CONSTRAINT [FK__tbl_attan__stu_i__36B12243]
GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD  CONSTRAINT [FK__tbl_attan__sub_i__37A5467C] FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_attandance] CHECK CONSTRAINT [FK__tbl_attan__sub_i__37A5467C]
GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD  CONSTRAINT [FK__tbl_attan__tea_i__38996AB5] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_attandance] CHECK CONSTRAINT [FK__tbl_attan__tea_i__38996AB5]
GO
ALTER TABLE [dbo].[tbl_chapter]  WITH CHECK ADD  CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395] FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_chapter] CHECK CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395]
GO
ALTER TABLE [dbo].[tbl_chapter]  WITH CHECK ADD  CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_chapter] CHECK CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE]
GO
ALTER TABLE [dbo].[tbl_homework]  WITH CHECK ADD  CONSTRAINT [FK__tbl_homew__sub_i__398D8EEE] FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework] CHECK CONSTRAINT [FK__tbl_homew__sub_i__398D8EEE]
GO
ALTER TABLE [dbo].[tbl_homework_detail]  WITH CHECK ADD  CONSTRAINT [FK__tbl_homew__hom_i__3A81B327] FOREIGN KEY([hom_id])
REFERENCES [dbo].[tbl_homework] ([hom_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail] CHECK CONSTRAINT [FK__tbl_homew__hom_i__3A81B327]
GO
ALTER TABLE [dbo].[tbl_homework_detail]  WITH CHECK ADD  CONSTRAINT [FK__tbl_homew__stu_i__3B75D760] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail] CHECK CONSTRAINT [FK__tbl_homew__stu_i__3B75D760]
GO
ALTER TABLE [dbo].[tbl_lesson]  WITH CHECK ADD  CONSTRAINT [FK__tbl_lesso__chap___4C6B5938] FOREIGN KEY([chap_id])
REFERENCES [dbo].[tbl_chapter] ([chap_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_lesson] CHECK CONSTRAINT [FK__tbl_lesso__chap___4C6B5938]
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD  CONSTRAINT [FK__tbl_schde__class__3E52440B] FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule] CHECK CONSTRAINT [FK__tbl_schde__class__3E52440B]
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD  CONSTRAINT [FK__tbl_schde__sch_d__17036CC0] FOREIGN KEY([sch_days])
REFERENCES [dbo].[tbl_day] ([day_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule] CHECK CONSTRAINT [FK__tbl_schde__sch_d__17036CC0]
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD  CONSTRAINT [FK__tbl_schde__sch_t__1F98B2C1] FOREIGN KEY([sch_times])
REFERENCES [dbo].[tbl_time] ([time_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule] CHECK CONSTRAINT [FK__tbl_schde__sch_t__1F98B2C1]
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD  CONSTRAINT [FK__tbl_schde__sub_i__3F466844] FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule] CHECK CONSTRAINT [FK__tbl_schde__sub_i__3F466844]
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD  CONSTRAINT [FK__tbl_schde__tea_i__403A8C7D] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule] CHECK CONSTRAINT [FK__tbl_schde__tea_i__403A8C7D]
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD  CONSTRAINT [FK__tbl_score__stu_i__787EE5A0] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score] CHECK CONSTRAINT [FK__tbl_score__stu_i__787EE5A0]
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD  CONSTRAINT [FK__tbl_score__tea_i__797309D9] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score] CHECK CONSTRAINT [FK__tbl_score__tea_i__797309D9]
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK__tbl_stude__class__4316F928] FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK__tbl_stude__class__4316F928]
GO
ALTER TABLE [dbo].[tbl_teacher]  WITH CHECK ADD  CONSTRAINT [FK__tbl_teach__tea_i__2645B050] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
GO
ALTER TABLE [dbo].[tbl_teacher] CHECK CONSTRAINT [FK__tbl_teach__tea_i__2645B050]
GO
ALTER TABLE [dbo].[tbl_user]  WITH CHECK ADD  CONSTRAINT [FK_tbl_studenttbl_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
GO
ALTER TABLE [dbo].[tbl_user] CHECK CONSTRAINT [FK_tbl_studenttbl_user]
GO
USE [master]
GO
ALTER DATABASE [web_project] SET  READ_WRITE 
GO
