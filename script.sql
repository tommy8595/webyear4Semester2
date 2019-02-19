USE [master]
GO
/****** Object:  Database [web_project]    Script Date: 2/16/2019 12:21:11 PM ******/
CREATE DATABASE [web_project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'web_project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.RIDH\MSSQL\DATA\web_project.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'web_project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.RIDH\MSSQL\DATA\web_project_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
ALTER DATABASE [web_project] SET AUTO_CREATE_STATISTICS ON 
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
ALTER DATABASE [web_project] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'web_project', N'ON'
GO
USE [web_project]
GO
/****** Object:  Table [dbo].[tbl_attandance]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_attandance](
	[sub_id] [int] NOT NULL,
	[stu_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[att_date] [date] NULL,
	[att_type] [nvarchar](30) NULL,
	[att_description] [nvarchar](max) NULL,
 CONSTRAINT [pk_attandance] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC,
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_chapter]    Script Date: 2/16/2019 12:21:11 PM ******/
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
 CONSTRAINT [pk_lesson] PRIMARY KEY CLUSTERED 
(
	[chap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_class]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_class](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [nvarchar](50) NOT NULL,
	[class_department] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[class_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_day]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_day](
	[day] [nvarchar](20) NOT NULL,
	[day_id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[day_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_homework]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_homework](
	[hom_id] [int] IDENTITY(1,1) NOT NULL,
	[hom_description] [nvarchar](max) NULL,
	[hom_type] [nvarchar](20) NULL,
	[sub_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[hom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_homework_detail]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_homework_detail](
	[hom_id] [int] NOT NULL,
	[stu_id] [int] NOT NULL,
	[point] [float] NOT NULL,
	[description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_lesson]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lesson](
	[les_id] [int] IDENTITY(1,1) NOT NULL,
	[chap_id] [int] NULL,
	[les_name] [nvarchar](50) NULL,
	[les_file_path_video] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[les_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_schdedule]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_schdedule](
	[sub_id] [int] NOT NULL,
	[class_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[sch_id] [int] IDENTITY(5,1) NOT NULL,
	[sch_days] [int] NOT NULL,
	[sch_times] [int] NULL,
 CONSTRAINT [PK_tbl_schdedule] PRIMARY KEY CLUSTERED 
(
	[sch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_score]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_score](
	[stu_id] [int] NOT NULL,
	[tea_id] [int] NOT NULL,
	[stu_name] [nvarchar](max) NULL,
	[attandance] [float] NOT NULL,
	[homework] [float] NOT NULL,
	[assignment] [float] NOT NULL,
	[final_exam] [float] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_student](
	[stu_id] [int] NOT NULL,
	[stu_name] [nvarchar](max) NOT NULL,
	[stu_sex] [nchar](15) NOT NULL,
	[stu_dob] [date] NOT NULL,
	[stu_pob] [nvarchar](max) NOT NULL,
	[stu_address] [nvarchar](max) NOT NULL,
	[stu_phone] [nvarchar](13) NULL,
	[stu_email] [nvarchar](max) NULL,
	[stu_emergency_number] [nvarchar](13) NOT NULL,
	[class_id] [int] NULL,
 CONSTRAINT [PK__tbl_stud__E53CAB2108E3B4FF] PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [nvarchar](max) NULL,
	[sub_description] [nvarchar](max) NULL,
	[sub_picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_teacher]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_teacher](
	[tea_id] [int] IDENTITY(1,1) NOT NULL,
	[tea_email] [nvarchar](max) NOT NULL,
	[tea_name] [nvarchar](max) NOT NULL,
	[tea_gender] [nchar](15) NOT NULL,
	[tea_dob] [date] NOT NULL,
	[tea_pob] [nvarchar](max) NOT NULL,
	[tea_address] [nvarchar](max) NULL,
	[tea_phone] [nvarchar](13) NULL,
	[tea_picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_time]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_time](
	[time_id] [int] IDENTITY(1,1) NOT NULL,
	[times] [nvarchar](50) NULL,
 CONSTRAINT [PK__tbl_time__0FB76BB9DA8A3AE3] PRIMARY KEY CLUSTERED 
(
	[time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_email] [nvarchar](100) NULL,
	[user_psw] [nvarchar](50) NOT NULL,
	[user_type] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[user_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_schedule]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_schedule] as 
select top 100 percent* from tbl_schdedule order BY 
     CASE
          WHEN sch_day = 'Sunday' THEN 1
          WHEN sch_day = 'Monday' THEN 2
          WHEN sch_day = 'Tuesday' THEN 3
          WHEN sch_day = 'Wednesday' THEN 4
          WHEN sch_day = 'Thursday' THEN 5
          WHEN sch_day = 'Friday' THEN 6
          WHEN sch_day = 'Saturday' THEN 7
     END 
	 ASC

GO
/****** Object:  View [dbo].[vw_schedules]    Script Date: 2/16/2019 12:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_schedules] as
select top 100 percent*
from tbl_schdedule
pivot
(count(sch_day)for sch_day in([Monday],[Tuesday],[Wednesday],[Thursday]))pvt


GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD  CONSTRAINT [FK__tbl_attan__stu_i__75A278F5] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_attandance] CHECK CONSTRAINT [FK__tbl_attan__stu_i__75A278F5]
GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_chapter]  WITH CHECK ADD  CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395] FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_chapter] CHECK CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395]
GO
ALTER TABLE [dbo].[tbl_chapter]  WITH CHECK ADD  CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE] FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_chapter] CHECK CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE]
GO
ALTER TABLE [dbo].[tbl_homework]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail]  WITH CHECK ADD FOREIGN KEY([hom_id])
REFERENCES [dbo].[tbl_homework] ([hom_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail]  WITH CHECK ADD  CONSTRAINT [FK__tbl_homew__stu_i__47DBAE45] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail] CHECK CONSTRAINT [FK__tbl_homew__stu_i__47DBAE45]
GO
ALTER TABLE [dbo].[tbl_lesson]  WITH CHECK ADD FOREIGN KEY([chap_id])
REFERENCES [dbo].[tbl_chapter] ([chap_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD  CONSTRAINT [FK__tbl_schde__sch_d__17036CC0] FOREIGN KEY([sch_days])
REFERENCES [dbo].[tbl_day] ([day_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule] CHECK CONSTRAINT [FK__tbl_schde__sch_d__17036CC0]
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sch_days])
REFERENCES [dbo].[tbl_day] ([day_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sch_times])
REFERENCES [dbo].[tbl_time] ([time_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sch_times])
REFERENCES [dbo].[tbl_time] ([time_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sch_times])
REFERENCES [dbo].[tbl_time] ([time_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD  CONSTRAINT [FK__tbl_score__stu_i__787EE5A0] FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score] CHECK CONSTRAINT [FK__tbl_score__stu_i__787EE5A0]
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD  CONSTRAINT [FK__tbl_stude__class__3B75D760] FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_student] CHECK CONSTRAINT [FK__tbl_stude__class__3B75D760]
GO
ALTER TABLE [dbo].[tbl_teacher]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
GO
USE [master]
GO
ALTER DATABASE [web_project] SET  READ_WRITE 
GO
