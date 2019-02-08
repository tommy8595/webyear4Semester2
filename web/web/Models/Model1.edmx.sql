
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/07/2019 16:31:51
-- Generated from EDMX file: C:\Users\ridh\Desktop\Web_semester2\web\web\Models\Model1.edmx
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
IF OBJECT_ID(N'[dbo].[FK__tbl_attan__sub_i__74AE54BC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_attandance] DROP CONSTRAINT [FK__tbl_attan__sub_i__74AE54BC];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_attan__tea_i__76969D2E]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_attandance] DROP CONSTRAINT [FK__tbl_attan__tea_i__76969D2E];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_homew__hom_i__46E78A0C]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_homework_detail] DROP CONSTRAINT [FK__tbl_homew__hom_i__46E78A0C];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_homew__stu_i__47DBAE45]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_homework_detail] DROP CONSTRAINT [FK__tbl_homew__stu_i__47DBAE45];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_homew__sub_i__22AA2996]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_homework] DROP CONSTRAINT [FK__tbl_homew__sub_i__22AA2996];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_lesso__sub_i__1A14E395]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_lesson] DROP CONSTRAINT [FK__tbl_lesso__sub_i__1A14E395];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_lesso__tea_i__1B0907CE]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_lesson] DROP CONSTRAINT [FK__tbl_lesso__tea_i__1B0907CE];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_schde__class__70DDC3D8]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__class__70DDC3D8];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_schde__sub_i__6FE99F9F]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__sub_i__6FE99F9F];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_schde__tea_i__71D1E811]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_schdedule] DROP CONSTRAINT [FK__tbl_schde__tea_i__71D1E811];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_score__stu_i__787EE5A0]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_score] DROP CONSTRAINT [FK__tbl_score__stu_i__787EE5A0];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[FK__tbl_score__tea_i__797309D9]', 'F') IS NOT NULL
    ALTER TABLE [web_projectModelStoreContainer].[tbl_score] DROP CONSTRAINT [FK__tbl_score__tea_i__797309D9];
GO
IF OBJECT_ID(N'[dbo].[FK__tbl_stude__class__3B75D760]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[tbl_student] DROP CONSTRAINT [FK__tbl_stude__class__3B75D760];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[tbl_attandance]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_attandance];
GO
IF OBJECT_ID(N'[dbo].[tbl_class]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_class];
GO
IF OBJECT_ID(N'[dbo].[tbl_homework]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_homework];
GO
IF OBJECT_ID(N'[dbo].[tbl_lesson]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_lesson];
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
IF OBJECT_ID(N'[dbo].[tbl_user]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tbl_user];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[tbl_homework_detail]', 'U') IS NOT NULL
    DROP TABLE [web_projectModelStoreContainer].[tbl_homework_detail];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[tbl_schdedule]', 'U') IS NOT NULL
    DROP TABLE [web_projectModelStoreContainer].[tbl_schdedule];
GO
IF OBJECT_ID(N'[web_projectModelStoreContainer].[tbl_score]', 'U') IS NOT NULL
    DROP TABLE [web_projectModelStoreContainer].[tbl_score];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

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

-- Creating table 'tbl_class'
CREATE TABLE [dbo].[tbl_class] (
    [class_id] int IDENTITY(1,1) NOT NULL,
    [class_name] nvarchar(50)  NOT NULL,
    [class_department] nvarchar(50)  NULL
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

-- Creating table 'tbl_lesson'
CREATE TABLE [dbo].[tbl_lesson] (
    [sub_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [les_name] nvarchar(50)  NOT NULL,
    [les_desc] nvarchar(max)  NULL,
    [les_chapter] nvarchar(50)  NULL,
    [les_file_path] nvarchar(max)  NULL
);
GO

-- Creating table 'tbl_schdedule'
CREATE TABLE [dbo].[tbl_schdedule] (
    [sub_id] int  NOT NULL,
    [class_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [sch_time] time  NOT NULL,
    [sch_day] nvarchar(50)  NOT NULL
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
    [sub_description] nvarchar(max)  NULL
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
    [tea_phone] nvarchar(13)  NULL
);
GO

-- Creating table 'tbl_user'
CREATE TABLE [dbo].[tbl_user] (
    [user_id] int IDENTITY(1,1) NOT NULL,
    [user_email] nvarchar(100)  NULL,
    [user_psw] nvarchar(50)  NOT NULL,
    [user_type] nvarchar(50)  NOT NULL
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

-- Creating table 'tbl_score'
CREATE TABLE [dbo].[tbl_score] (
    [stu_id] int  NOT NULL,
    [tea_id] int  NOT NULL,
    [stu_name] nvarchar(max)  NULL,
    [attandance] float  NOT NULL,
    [homework] float  NOT NULL,
    [assignment] float  NOT NULL,
    [final_exam] float  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [sub_id], [stu_id] in table 'tbl_attandance'
ALTER TABLE [dbo].[tbl_attandance]
ADD CONSTRAINT [PK_tbl_attandance]
    PRIMARY KEY CLUSTERED ([sub_id], [stu_id] ASC);
GO

-- Creating primary key on [class_id] in table 'tbl_class'
ALTER TABLE [dbo].[tbl_class]
ADD CONSTRAINT [PK_tbl_class]
    PRIMARY KEY CLUSTERED ([class_id] ASC);
GO

-- Creating primary key on [hom_id] in table 'tbl_homework'
ALTER TABLE [dbo].[tbl_homework]
ADD CONSTRAINT [PK_tbl_homework]
    PRIMARY KEY CLUSTERED ([hom_id] ASC);
GO

-- Creating primary key on [sub_id], [tea_id] in table 'tbl_lesson'
ALTER TABLE [dbo].[tbl_lesson]
ADD CONSTRAINT [PK_tbl_lesson]
    PRIMARY KEY CLUSTERED ([sub_id], [tea_id] ASC);
GO

-- Creating primary key on [sub_id], [class_id], [sch_time], [sch_day] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [PK_tbl_schdedule]
    PRIMARY KEY CLUSTERED ([sub_id], [class_id], [sch_time], [sch_day] ASC);
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

-- Creating primary key on [user_id] in table 'tbl_user'
ALTER TABLE [dbo].[tbl_user]
ADD CONSTRAINT [PK_tbl_user]
    PRIMARY KEY CLUSTERED ([user_id] ASC);
GO

-- Creating primary key on [hom_id], [stu_id], [point] in table 'tbl_homework_detail'
ALTER TABLE [dbo].[tbl_homework_detail]
ADD CONSTRAINT [PK_tbl_homework_detail]
    PRIMARY KEY CLUSTERED ([hom_id], [stu_id], [point] ASC);
GO

-- Creating primary key on [stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam] in table 'tbl_score'
ALTER TABLE [dbo].[tbl_score]
ADD CONSTRAINT [PK_tbl_score]
    PRIMARY KEY CLUSTERED ([stu_id], [tea_id], [attandance], [homework], [assignment], [final_exam] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
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

-- Creating foreign key on [sub_id] in table 'tbl_lesson'
ALTER TABLE [dbo].[tbl_lesson]
ADD CONSTRAINT [FK__tbl_lesso__sub_i__3C69FB99]
    FOREIGN KEY ([sub_id])
    REFERENCES [dbo].[tbl_subject]
        ([sub_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [tea_id] in table 'tbl_lesson'
ALTER TABLE [dbo].[tbl_lesson]
ADD CONSTRAINT [FK__tbl_lesso__tea_i__3D5E1FD2]
    FOREIGN KEY ([tea_id])
    REFERENCES [dbo].[tbl_teacher]
        ([tea_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__tbl_lesso__tea_i__3D5E1FD2'
CREATE INDEX [IX_FK__tbl_lesso__tea_i__3D5E1FD2]
ON [dbo].[tbl_lesson]
    ([tea_id]);
GO

-- Creating foreign key on [sub_id] in table 'tbl_schdedule'
ALTER TABLE [dbo].[tbl_schdedule]
ADD CONSTRAINT [FK__tbl_schde__sub_i__3F466844]
    FOREIGN KEY ([sub_id])
    REFERENCES [dbo].[tbl_subject]
        ([sub_id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
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

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------