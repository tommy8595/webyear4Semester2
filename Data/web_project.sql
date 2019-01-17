USE [web_project]
GO
/****** Object:  Table [dbo].[tbl_attandance]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_attandance](
	[sub_id] [int] NOT NULL,
	[stu_id] [nvarchar](50) NOT NULL,
	[tea_id] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[tbl_class]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_class](
	[class_id] [nvarchar](30) NOT NULL,
	[class_name] [nvarchar](50) NOT NULL,
	[class_department] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_homework]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_homework](
	[hom_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_id] [int] NOT NULL,
	[tea_id] [nvarchar](50) NOT NULL,
	[hom_description] [nvarchar](max) NULL,
	[hom_type] [nvarchar](20) NULL,
	[hom_deadline] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[hom_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_homework_detail]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_homework_detail](
	[hom_id] [int] NOT NULL,
	[stu_id] [nvarchar](50) NOT NULL,
	[note] [nvarchar](max) NULL,
	[score] [float] NULL,
	[description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_lesson]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_lesson](
	[sub_id] [int] NOT NULL,
	[tea_id] [nvarchar](50) NOT NULL,
	[les_name] [nvarchar](50) NOT NULL,
	[les_desc] [nvarchar](max) NULL,
	[les_chapter] [nvarchar](50) NULL,
	[les_file_path] [nvarchar](max) NULL,
 CONSTRAINT [pk_lesson] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC,
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_schdedule]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_schdedule](
	[sub_id] [int] NOT NULL,
	[class_id] [nvarchar](30) NOT NULL,
	[tea_id] [nvarchar](50) NOT NULL,
	[sch_time] [time](7) NULL,
	[sch_day] [nvarchar](50) NULL,
 CONSTRAINT [pk_schedule] PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC,
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_score]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_score](
	[sub_id] [int] NOT NULL,
	[stu_id] [nvarchar](50) NOT NULL,
	[stu_name] [nvarchar](max) NULL,
	[attandance] [float] NOT NULL,
	[homework] [float] NOT NULL,
	[assignment] [float] NOT NULL,
	[final_exam] [float] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_student]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_student](
	[stu_id] [nvarchar](50) NOT NULL,
	[stu_name] [nvarchar](max) NOT NULL,
	[stu_sex] [nchar](15) NOT NULL,
	[stu_dob] [date] NOT NULL,
	[stu_pob] [nvarchar](max) NOT NULL,
	[stu_address] [nvarchar](max) NOT NULL,
	[stu_phone] [nvarchar](13) NULL,
	[stu_email] [nvarchar](max) NULL,
	[stu_emergency_number] [nvarchar](13) NOT NULL,
	[class_id] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[stu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_subject]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_subject](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [nvarchar](max) NULL,
	[sub_description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_teacher]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_teacher](
	[tea_id] [nvarchar](50) NOT NULL,
	[tea_name] [nvarchar](max) NOT NULL,
	[tea_gender] [nchar](15) NOT NULL,
	[tea_dob] [date] NOT NULL,
	[tea_pob] [nvarchar](max) NOT NULL,
	[tea_address] [nvarchar](max) NULL,
	[tea_phone] [nvarchar](13) NULL,
PRIMARY KEY CLUSTERED 
(
	[tea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_user]    Script Date: 1/15/2019 10:05:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_user](
	[user_id] [nvarchar](50) NOT NULL,
	[user_psw] [nvarchar](50) NOT NULL,
	[user_type] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tbl_attandance]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
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
ALTER TABLE [dbo].[tbl_homework]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail]  WITH CHECK ADD FOREIGN KEY([hom_id])
REFERENCES [dbo].[tbl_homework] ([hom_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_homework_detail]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_lesson]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_lesson]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_schdedule]  WITH CHECK ADD FOREIGN KEY([tea_id])
REFERENCES [dbo].[tbl_teacher] ([tea_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD FOREIGN KEY([stu_id])
REFERENCES [dbo].[tbl_student] ([stu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_score]  WITH CHECK ADD FOREIGN KEY([sub_id])
REFERENCES [dbo].[tbl_subject] ([sub_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_student]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[tbl_class] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
