
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/23/2019 21:15:28
-- Generated from EDMX file: D:\AssignmentWebS2\web\web\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [web_project];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__tbl_attan__stu_i__75A278F5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_attandance] DROP CONSTRAINT [FK__tbl_attan__stu_i__75A278F5];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_attan__sub_i__2A4B4B5E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_attandance] DROP CONSTRAINT [FK__tbl_attan__sub_i__2A4B4B5E];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_attan__tea_i__2B3F6F97]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_attandance] DROP CONSTRAINT [FK__tbl_attan__tea_i__2B3F6F97];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_homew__hom_i__2F10007B]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_homework_detail] DROP CONSTRAINT [FK__tbl_homew__hom_i__2F10007B];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_homew__stu_i__47DBAE45]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_homework_detail] DROP CONSTRAINT [FK__tbl_homew__stu_i__47DBAE45];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_homew__sub_i__2E1BDC42]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_homework] DROP CONSTRAINT [FK__tbl_homew__sub_i__2E1BDC42];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_lesso__chap___30F848ED]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_lesson] DROP CONSTRAINT [FK__tbl_lesso__chap___30F848ED];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_lesso__sub_i__1A14E395]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_chapter] DROP CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_lesso__tea_i__1B0907CE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_chapter] DROP CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__class__31EC6D26]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__class__31EC6D26];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__class__32E0915F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__class__32E0915F];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__class__33D4B598]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__class__33D4B598];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sch_d__17036CC0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sch_d__17036CC0];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sch_d__35BCFE0A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sch_d__35BCFE0A];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sch_t__36B12243]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sch_t__36B12243];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sch_t__37A5467C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sch_t__37A5467C];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sch_t__38996AB5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sch_t__38996AB5];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sub_i__398D8EEE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sub_i__398D8EEE];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__sub_i__3A81B327]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sub_i__3A81B327];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__tea_i__3B75D760]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__tea_i__3B75D760];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_schde__tea_i__3C69FB99]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__tea_i__3C69FB99];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_score__stu_i__787EE5A0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_score] DROP CONSTRAINT [FK__tbl_score__stu_i__787EE5A0];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_score__tea_i__797309D9]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_score] DROP CONSTRAINT [FK__tbl_score__tea_i__797309D9];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_stude__class__3B75D760]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_student] DROP CONSTRAINT [FK__tbl_stude__class__3B75D760];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_teach__tea_i__403A8C7D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_teacher] DROP CONSTRAINT [FK__tbl_teach__tea_i__403A8C7D];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tbl_attandance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_attandance];
GO
IF OBJECT_ID(N'[dbo].[tbl_chapter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_chapter];
GO
IF OBJECT_ID(N'[dbo].[tbl_class]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_class];
GO
IF OBJECT_ID(N'[dbo].[tbl_day]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_day];
GO
IF OBJECT_ID(N'[dbo].[tbl_homework]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_homework];
GO
IF OBJECT_ID(N'[dbo].[tbl_lesson]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_lesson];
GO
IF OBJECT_ID(N'[dbo].[tbl_schdedule]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_schdedule];
GO
IF OBJECT_ID(N'[dbo].[tbl_score]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_score];
GO
IF OBJECT_ID(N'[dbo].[tbl_student]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_student];
GO
IF OBJECT_ID(N'[dbo].[tbl_subject]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_subject];
GO
IF OBJECT_ID(N'[dbo].[tbl_teacher]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_teacher];
GO
IF OBJECT_ID(N'[dbo].[tbl_time]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_time];
GO
IF OBJECT_ID(N'[dbo].[tbl_user]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_user];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[tbl_homework_detail]', 'U') IS NOT NULL
    DROP TABLE [web_projectModelStoreContainer].[tbl_homework_detail];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'tbl_attandance'
CREATE TABLE [dbo].[tbl_attandance] (
    [sub_id] int  NOT NULL,
    [stu_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [att_date] datetime  NULL,
    [att_type] nvarchar(30)  NULL,
    [att_description] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_chapter'
CREATE TABLE [dbo].[tbl_chapter] (
    [sub_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [chap_name] nvarchar(50)  NOT NULL,
    [chap_description] nvarchar(max)  NULL,
    [chap_file_path_pdf] nvarchar(max)  NULL,
    [chap_id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'tbl_class'
CREATE TABLE [dbo].[tbl_class] (
    [class_id] int IDENTITY(1,1) NOT NULL,
    [class_name] nvarchar(50)  NOT NULL,
    [class_department] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_day'
CREATE TABLE [dbo].[tbl_day] (
    [day] nvarchar(20)  NOT NULL,
    [day_id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'tbl_homework'
CREATE TABLE [dbo].[tbl_homework] (
    [hom_id] int IDENTITY(1,1) NOT NULL,
    [hom_description] nvarchar(max)  NULL,
    [hom_type] nvarchar(20)  NULL,
    [sub_id] int  NOT NULL
);
GO

-- Creating table 'tbl_homework_detail'
CREATE TABLE [dbo].[tbl_homework_detail] (
    [hom_id] int  NOT NULL,
    [stu_id] int  NOT NULL,
    [point] float  NOT NULL,
    [description] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_lesson'
CREATE TABLE [dbo].[tbl_lesson] (
    [les_id] int IDENTITY(1,1) NOT NULL,
    [chap_id] int  NULL,
    [les_name] nvarchar(50)  NULL,
    [les_file_path_video] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_schdedule'
CREATE TABLE [dbo].[tbl_schdedule] (
    [sub_id] int  NOT NULL,
    [class_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [sch_id] int IDENTITY(1,1) NOT NULL,
    [sch_days] int  NOT NULL,
    [sch_times] int  NULL
);
GO

-- Creating table 'tbl_score'
CREATE TABLE [dbo].[tbl_score] (
    [stu_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [attandance] float  NOT NULL,
    [homework] float  NOT NULL,
    [assignment] float  NOT NULL,
    [final_exam] float  NOT NULL,
    [score_id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'tbl_student'
CREATE TABLE [dbo].[tbl_student] (
    [stu_id] int IDENTITY(1,1) NOT NULL,
    [stu_name] nvarchar(max)  NOT NULL,
    [stu_sex] nchar(15)  NOT NULL,
    [stu_dob] datetime  NOT NULL,
    [stu_pob] nvarchar(max)  NOT NULL,
    [stu_address] nvarchar(max)  NOT NULL,
    [stu_phone] nvarchar(13)  NULL,
    [stu_email] nvarchar(max)  NULL,
    [stu_emergency_number] nvarchar(13)  NOT NULL,
    [class_id] int  NULL
);
GO

-- Creating table 'tbl_subject'
CREATE TABLE [dbo].[tbl_subject] (
    [sub_id] int IDENTITY(1,1) NOT NULL,
    [sub_name] nvarchar(max)  NULL,
    [sub_description] nvarchar(max)  NULL,
    [sub_picture] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_teacher'
CREATE TABLE [dbo].[tbl_teacher] (
    [tea_id] int IDENTITY(1,1) NOT NULL,
    [tea_email] nvarchar(max)  NOT NULL,
    [tea_name] nvarchar(max)  NOT NULL,
    [tea_gender] nchar(15)  NOT NULL,
    [tea_dob] datetime  NOT NULL,
    [tea_pob] nvarchar(max)  NOT NULL,
    [tea_address] nvarchar(max)  NULL,
    [tea_phone] nvarchar(13)  NULL,
    [tea_picture] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_time'
CREATE TABLE [dbo].[tbl_time] (
    [time_id] int IDENTITY(1,1) NOT NULL,
    [times] nvarchar(50)  NULL
);
GO

-- Creating table 'tbl_user'
CREATE TABLE [dbo].[tbl_user] (
    [user_id] int  NOT NULL,
    [user_email] nvarchar(100)  NULL,
    [user_psw] nvarchar(50)  NOT NULL,
    [user_type] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'vw_schedule'
CREATE TABLE [dbo].[vw_schedule] (
    [sub_id] int  NOT NULL,
    [class_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [sch_time] time  NULL,
    [sch_day] nvarchar(50)  NULL,
    [sch_id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'vw_schedules'
CREATE TABLE [dbo].[vw_schedules] (
    [sub_id] int  NOT NULL,
    [class_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [sch_time] time  NULL,
    [sch_id] int IDENTITY(1,1) NOT NULL,
    [Monday] int  NULL,
    [Tuesday] int  NULL,
    [Wednesday] int  NULL,
    [Thursday] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [sub_id], [stu_id] in table 'tbl_attandance'
ALTER TABLE [dbo].[tbl_attandance]
ADD CONSTRAINT [PK_tbl_attandance]
    PRIMARY KEY CLUSTERED ([sub_id], [stu_id] ASC);
GO

-- Creating primary key on [chap_id] in table 'tbl_chapter'
ALTER TABLE [dbo].[tbl_chapter]
ADD CONSTRAINT [PK_tbl_chapter]
    PRIMARY KEY CLUSTERED ([chap_id] ASC);
GO

-- Creating primary key on [class_id] in table 'tbl_class'
ALTER TABLE [dbo].[tbl_class]
ADD CONSTRAINT [PK_tbl_class]
    PRIMARY KEY CLUSTERED ([class_id] ASC);
GO

-- Creating primary key on [day_id] in table 'tbl_day'
ALTER TABLE [dbo].[tbl_day]
ADD CONSTRAINT [PK_tbl_day]
    PRIMARY KEY CLUSTERED ([day_id] ASC);
GO

-- Creating primary key on [hom_id] in table 'tbl_homework'
ALTER TABLE [dbo].[tbl_homework]
ADD CONSTRAINT [PK_tbl_homework]
    PRIMARY KEY CLUSTERED ([hom_id] ASC);
GO

-- Creating primary key on [hom_id], [stu_id], [point] in table 'tbl_homework_detail'
ALTER TABLE [dbo].[tbl_homework_detail]
ADD CONSTRAINT [PK_tbl_homework_detail]
    PRIMARY KEY CLUSTERED ([hom_id], [stu_id], [point] ASC);
GO

-- Creating primary key on [les_id] in table 'tbl_lesson'
ALTER TABLE [dbo].[tbl_lesson]
ADD CONSTRAINT [PK_tbl_lesson]
    PRIMARY KEY CLUSTERED ([les_id] ASC);
GO

-- Creating primary key on [sch_id] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [PK_tbl_schdedule]
    PRIMARY KEY CLUSTERED ([sch_id] ASC);
GO

-- Creating primary key on [stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id] in table 'tbl_score'
ALTER TABLE [dbo].[tbl_score]
ADD CONSTRAINT [PK_tbl_score]
    PRIMARY KEY CLUSTERED ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam], [score_id] ASC);
GO

-- Creating primary key on [stu_id] in table 'tbl_student'
ALTER TABLE [dbo].[tbl_student]
ADD CONSTRAINT [PK_tbl_student]
    PRIMARY KEY CLUSTERED ([stu_id] ASC);
GO

-- Creating primary key on [sub_id] in table 'tbl_subject'
ALTER TABLE [dbo].[tbl_subject]
ADD CONSTRAINT [PK_tbl_subject]
    PRIMARY KEY CLUSTERED ([sub_id] ASC);
GO

-- Creating primary key on [tea_id] in table 'tbl_teacher'
ALTER TABLE [dbo].[tbl_teacher]
ADD CONSTRAINT [PK_tbl_teacher]
    PRIMARY KEY CLUSTERED ([tea_id] ASC);
GO

-- Creating primary key on [time_id] in table 'tbl_time'
ALTER TABLE [dbo].[tbl_time]
ADD CONSTRAINT [PK_tbl_time]
    PRIMARY KEY CLUSTERED ([time_id] ASC);
GO

-- Creating primary key on [user_id] in table 'tbl_user'
ALTER TABLE [dbo].[tbl_user]
ADD CONSTRAINT [PK_tbl_user]
    PRIMARY KEY CLUSTERED ([user_id] ASC);
GO

-- Creating primary key on [sub_id], [class_id], [tea_id], [sch_id] in table 'vw_schedule'
ALTER TABLE [dbo].[vw_schedule]
ADD CONSTRAINT [PK_vw_schedule]
    PRIMARY KEY CLUSTERED ([sub_id], [class_id], [tea_id], [sch_id] ASC);
GO

-- Creating primary key on [sub_id], [class_id], [tea_id], [sch_id] in table 'vw_schedules'
ALTER TABLE [dbo].[vw_schedules]
ADD CONSTRAINT [PK_vw_schedules]
    PRIMARY KEY CLUSTERED ([sub_id], [class_id], [tea_id], [sch_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [stu_id] in table 'tbl_attandance'
ALTER TABLE [dbo].[tbl_attandance]
ADD CONSTRAINT [FK__tbl_attan__stu_i__36B12243]
    FOREIGN KEY ([stu_id])
    REFERENCES [dbo].[tbl_student]
        ([stu_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_attan__stu_i__36B12243'
CREATE INDEX [IX_FK__tbl_attan__stu_i__36B12243]
ON [dbo].[tbl_attandance]
    ([stu_id]);
GO

-- Creating foreign key on [sub_id] in table 'tbl_attandance'
ALTER TABLE [dbo].[tbl_attandance]
ADD CONSTRAINT [FK__tbl_attan__sub_i__37A5467C]
    FOREIGN KEY ([sub_id])
    REFERENCES [dbo].[tbl_subject]
        ([sub_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tea_id] in table 'tbl_attandance'
ALTER TABLE [dbo].[tbl_attandance]
ADD CONSTRAINT [FK__tbl_attan__tea_i__38996AB5]
    FOREIGN KEY ([tea_id])
    REFERENCES [dbo].[tbl_teacher]
        ([tea_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_attan__tea_i__38996AB5'
CREATE INDEX [IX_FK__tbl_attan__tea_i__38996AB5]
ON [dbo].[tbl_attandance]
    ([tea_id]);
GO

-- Creating foreign key on [chap_id] in table 'tbl_lesson'
ALTER TABLE [dbo].[tbl_lesson]
ADD CONSTRAINT [FK__tbl_lesso__chap___4C6B5938]
    FOREIGN KEY ([chap_id])
    REFERENCES [dbo].[tbl_chapter]
        ([chap_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_lesso__chap___4C6B5938'
CREATE INDEX [IX_FK__tbl_lesso__chap___4C6B5938]
ON [dbo].[tbl_lesson]
    ([chap_id]);
GO

-- Creating foreign key on [sub_id] in table 'tbl_chapter'
ALTER TABLE [dbo].[tbl_chapter]
ADD CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395]
    FOREIGN KEY ([sub_id])
    REFERENCES [dbo].[tbl_subject]
        ([sub_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_lesso__sub_i__1A14E395'
CREATE INDEX [IX_FK__tbl_lesso__sub_i__1A14E395]
ON [dbo].[tbl_chapter]
    ([sub_id]);
GO

-- Creating foreign key on [tea_id] in table 'tbl_chapter'
ALTER TABLE [dbo].[tbl_chapter]
ADD CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE]
    FOREIGN KEY ([tea_id])
    REFERENCES [dbo].[tbl_teacher]
        ([tea_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_lesso__tea_i__1B0907CE'
CREATE INDEX [IX_FK__tbl_lesso__tea_i__1B0907CE]
ON [dbo].[tbl_chapter]
    ([tea_id]);
GO

-- Creating foreign key on [class_id] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [FK__tbl_schde__class__3E52440B]
    FOREIGN KEY ([class_id])
    REFERENCES [dbo].[tbl_class]
        ([class_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_schde__class__3E52440B'
CREATE INDEX [IX_FK__tbl_schde__class__3E52440B]
ON [dbo].[tbl_schdedule]
    ([class_id]);
GO

-- Creating foreign key on [class_id] in table 'tbl_student'
ALTER TABLE [dbo].[tbl_student]
ADD CONSTRAINT [FK__tbl_stude__class__4316F928]
    FOREIGN KEY ([class_id])
    REFERENCES [dbo].[tbl_class]
        ([class_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_stude__class__4316F928'
CREATE INDEX [IX_FK__tbl_stude__class__4316F928]
ON [dbo].[tbl_student]
    ([class_id]);
GO

-- Creating foreign key on [sch_days] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [FK__tbl_schde__sch_d__17036CC0]
    FOREIGN KEY ([sch_days])
    REFERENCES [dbo].[tbl_day]
        ([day_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_schde__sch_d__17036CC0'
CREATE INDEX [IX_FK__tbl_schde__sch_d__17036CC0]
ON [dbo].[tbl_schdedule]
    ([sch_days]);
GO

-- Creating foreign key on [hom_id] in table 'tbl_homework_detail'
ALTER TABLE [dbo].[tbl_homework_detail]
ADD CONSTRAINT [FK__tbl_homew__hom_i__3A81B327]
    FOREIGN KEY ([hom_id])
    REFERENCES [dbo].[tbl_homework]
        ([hom_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [sub_id] in table 'tbl_homework'
ALTER TABLE [dbo].[tbl_homework]
ADD CONSTRAINT [FK__tbl_homew__sub_i__398D8EEE]
    FOREIGN KEY ([sub_id])
    REFERENCES [dbo].[tbl_subject]
        ([sub_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_homew__sub_i__398D8EEE'
CREATE INDEX [IX_FK__tbl_homew__sub_i__398D8EEE]
ON [dbo].[tbl_homework]
    ([sub_id]);
GO

-- Creating foreign key on [stu_id] in table 'tbl_homework_detail'
ALTER TABLE [dbo].[tbl_homework_detail]
ADD CONSTRAINT [FK__tbl_homew__stu_i__3B75D760]
    FOREIGN KEY ([stu_id])
    REFERENCES [dbo].[tbl_student]
        ([stu_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_homew__stu_i__3B75D760'
CREATE INDEX [IX_FK__tbl_homew__stu_i__3B75D760]
ON [dbo].[tbl_homework_detail]
    ([stu_id]);
GO

-- Creating foreign key on [sch_times] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [FK__tbl_schde__sch_t__1F98B2C1]
    FOREIGN KEY ([sch_times])
    REFERENCES [dbo].[tbl_time]
        ([time_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_schde__sch_t__1F98B2C1'
CREATE INDEX [IX_FK__tbl_schde__sch_t__1F98B2C1]
ON [dbo].[tbl_schdedule]
    ([sch_times]);
GO

-- Creating foreign key on [sub_id] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [FK__tbl_schde__sub_i__3F466844]
    FOREIGN KEY ([sub_id])
    REFERENCES [dbo].[tbl_subject]
        ([sub_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_schde__sub_i__3F466844'
CREATE INDEX [IX_FK__tbl_schde__sub_i__3F466844]
ON [dbo].[tbl_schdedule]
    ([sub_id]);
GO

-- Creating foreign key on [tea_id] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [FK__tbl_schde__tea_i__403A8C7D]
    FOREIGN KEY ([tea_id])
    REFERENCES [dbo].[tbl_teacher]
        ([tea_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_schde__tea_i__403A8C7D'
CREATE INDEX [IX_FK__tbl_schde__tea_i__403A8C7D]
ON [dbo].[tbl_schdedule]
    ([tea_id]);
GO

-- Creating foreign key on [stu_id] in table 'tbl_score'
ALTER TABLE [dbo].[tbl_score]
ADD CONSTRAINT [FK__tbl_score__stu_i__412EB0B6]
    FOREIGN KEY ([stu_id])
    REFERENCES [dbo].[tbl_student]
        ([stu_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tea_id] in table 'tbl_score'
ALTER TABLE [dbo].[tbl_score]
ADD CONSTRAINT [FK__tbl_score__tea_i__4222D4EF]
    FOREIGN KEY ([tea_id])
    REFERENCES [dbo].[tbl_teacher]
        ([tea_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_score__tea_i__4222D4EF'
CREATE INDEX [IX_FK__tbl_score__tea_i__4222D4EF]
ON [dbo].[tbl_score]
    ([tea_id]);
GO

-- Creating foreign key on [user_id] in table 'tbl_user'
ALTER TABLE [dbo].[tbl_user]
ADD CONSTRAINT [FK_tbl_studenttbl_user]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[tbl_student]
        ([stu_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tea_id] in table 'tbl_teacher'
ALTER TABLE [dbo].[tbl_teacher]
ADD CONSTRAINT [FK__tbl_teach__tea_i__2645B050]
    FOREIGN KEY ([tea_id])
    REFERENCES [dbo].[tbl_teacher]
        ([tea_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------