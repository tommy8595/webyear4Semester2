USE [master]
GO
/****** Object:  Database [web_project]    Script Date: 2/27/2019 10:25:42 AM ******/
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
/****** Object:  Table [dbo].[tbl_attandance]    Script Date: 2/27/2019 10:25:42 AM ******/
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
 CONSTRAINT [PK_tbl_attandance] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC,
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_get_att]    Script Date: 2/27/2019 10:25:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fn_get_att] (@st int,@su int)
returns table as return 
select * from tbl_attandance where stu_id=@st and sub_id=@su
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 2/27/2019 10:25:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_chapter]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_class]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_day]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_homework]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_homework_detail]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_lesson]    Script Date: 2/27/2019 10:25:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lesson](
	[les_id] [int] IDENTITY(1,1) NOT NULL,
	[chap_id] [int] NULL,
	[les_name] [nvarchar](50) NULL,
	[les_file_path_video] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_lesson] PRIMARY KEY CLUSTERED 
(
	[les_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_schdedule]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_score]    Script Date: 2/27/2019 10:25:43 AM ******/
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
 CONSTRAINT [PK_tbl_score] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC,
	[tea_id] ASC,
	[attandance] ASC,
	[homework] ASC,
	[assignment] ASC,
	[final_exam] ASC,
	[score_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_teacher]    Script Date: 2/27/2019 10:25:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_teacher](
	[tea_id] [int] IDENTITY(1,1) NOT NULL,
	[tea_email] [nvarchar](max) NOT NULL,
	[tea_name] [nvarchar](max) NOT NULL,
	[tea_gender] [nchar](15) NOT NULL,
	[tea_dob] [datetime] NOT NULL,
	[tea_pob] [nvarchar](max) NOT NULL,
	[tea_address] [nvarchar](max) NULL,
	[tea_phone] [nvarchar](13) NULL,
	[tea_picture] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_teacher] PRIMARY KEY CLUSTERED 
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_time]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Table [dbo].[tbl_user]    Script Date: 2/27/2019 10:25:43 AM ******/
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
/****** Object:  Index [IX_FK__tbl_attan__stu_i__36B12243]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_attan__stu_i__36B12243] ON [dbo].[tbl_attandance]
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_attan__tea_i__38996AB5]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_attan__tea_i__38996AB5] ON [dbo].[tbl_attandance]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_lesso__sub_i__1A14E395]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_lesso__sub_i__1A14E395] ON [dbo].[tbl_chapter]
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_lesso__tea_i__1B0907CE]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_lesso__tea_i__1B0907CE] ON [dbo].[tbl_chapter]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_homew__sub_i__398D8EEE]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_homew__sub_i__398D8EEE] ON [dbo].[tbl_homework]
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_homew__stu_i__3B75D760]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_homew__stu_i__3B75D760] ON [dbo].[tbl_homework_detail]
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_lesso__chap___4C6B5938]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_lesso__chap___4C6B5938] ON [dbo].[tbl_lesson]
(
	[chap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__class__3E52440B]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__class__3E52440B] ON [dbo].[tbl_schdedule]
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__sch_d__17036CC0]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__sch_d__17036CC0] ON [dbo].[tbl_schdedule]
(
	[sch_days] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__sch_t__1F98B2C1]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__sch_t__1F98B2C1] ON [dbo].[tbl_schdedule]
(
	[sch_times] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__sub_i__3F466844]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__sub_i__3F466844] ON [dbo].[tbl_schdedule]
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_schde__tea_i__403A8C7D]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_schde__tea_i__403A8C7D] ON [dbo].[tbl_schdedule]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_score__tea_i__4222D4EF]    Script Date: 2/27/2019 10:25:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_FK__tbl_score__tea_i__4222D4EF] ON [dbo].[tbl_score]
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK__tbl_stude__class__4316F928]    Script Date: 2/27/2019 10:25:43 AM ******/
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
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD  CONSTRAINT [FK__tbl_score__stu_i__412EB0B6] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score] CHECK CONSTRAINT [FK__tbl_score__stu_i__412EB0B6]
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD  CONSTRAINT [FK__tbl_score__tea_i__4222D4EF] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score] CHECK CONSTRAINT [FK__tbl_score__tea_i__4222D4EF]
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
