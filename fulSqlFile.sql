USE [CsharpEksamenOpgabe]
GO

/****** Object: Table [dbo].[Koeber] Script Date: 28-05-2021 03:25:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Koeber] (
    [id]         INT          IDENTITY (1, 1) NOT NULL,
    [navn]       VARCHAR (50) NOT NULL,
    [email]      VARCHAR (50) NOT NULL,
    [tlf]        CHAR (8)     NOT NULL,
    [p_Password] VARCHAR (50) NOT NULL
);



USE [CsharpEksamenOpgabe]
GO

/****** Object: Table [dbo].[Saelger] Script Date: 28-05-2021 03:26:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Saelger] (
    [s_Id]     INT          IDENTITY (1, 1) NOT NULL,
    [navn]     VARCHAR (50) NOT NULL,
    [email]    VARCHAR (50) NOT NULL,
    [tlf]      CHAR (8)     NOT NULL,
    [password] VARCHAR (50) NOT NULL
);





USE [CsharpEksamenOpgabe]
GO

/****** Object: Table [dbo].[Salgsudbud] Script Date: 28-05-2021 03:26:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Salgsudbud] (
    [s_Id]       INT            IDENTITY (1, 1) NOT NULL,
    [MetalType]  VARCHAR (9)    NOT NULL,
    [gram]       DECIMAL (6, 2) NOT NULL,
    [deadline]   DATETIME       NOT NULL,
    [saelger_Id] INT            NOT NULL
);



USE [CsharpEksamenOpgabe]
GO

/****** Object: Table [dbo].[Koebstilbud] Script Date: 28-05-2021 03:26:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Koebstilbud] (
    [k_Id]          INT            IDENTITY (1, 1) NOT NULL,
    [navn]          VARCHAR (50)   NOT NULL,
    [email]         VARCHAR (50)   NOT NULL,
    [tlf]           CHAR (8)       NOT NULL,
    [pris]          DECIMAL (8, 2) NOT NULL,
    [koeber_Id]     INT            NOT NULL,
    [salgsudbud_Id] INT            NOT NULL
);


/* Inserts on Saelger*/
SET IDENTITY_INSERT [dbo].[Saelger] ON
INSERT INTO [dbo].[Saelger] ([s_Id], [navn], [email], [tlf], [password]) VALUES (1, N'Morten', N'm@gmail.dk', N'33333333', N'1234')
INSERT INTO [dbo].[Saelger] ([s_Id], [navn], [email], [tlf], [password]) VALUES (2, N'Per', N'p@gmail.dk', N'99999999', N'1234')
SET IDENTITY_INSERT [dbo].[Saelger] OFF

/* Inserts on Koeber*/
SET IDENTITY_INSERT [dbo].[Koeber] ON
INSERT INTO [dbo].[Koeber] ([id], [navn], [email], [tlf], [p_Password]) VALUES (1, N'Vitus', N'v@gmail.dk', N'22222222', N'1234')
INSERT INTO [dbo].[Koeber] ([id], [navn], [email], [tlf], [p_Password]) VALUES (2, N'Trine', N't@gmail.dk', N'88888888', N'4321')
SET IDENTITY_INSERT [dbo].[Koeber] OFF

/* Inserts on Salgsudbud*/
SET IDENTITY_INSERT [dbo].[Salgsudbud] ON
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (1, N'guld', CAST(1.00 AS Decimal(6, 2)), N'2021-07-05 00:00:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (2, N'Rhodium', CAST(1225.00 AS Decimal(6, 2)), N'2021-05-28 12:25:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (3, N'Sølv', CAST(11.00 AS Decimal(6, 2)), N'2021-07-10 00:00:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (4, N'Platin', CAST(11.00 AS Decimal(6, 2)), N'2021-07-10 00:00:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (5, N'Palladium', CAST(1000.00 AS Decimal(6, 2)), N'2021-05-27 00:00:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (6, N'Palladium', CAST(1000.00 AS Decimal(6, 2)), N'2021-05-29 11:11:11', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (7, N'Sølv', CAST(11.11 AS Decimal(6, 2)), N'2021-05-28 22:00:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (8, N'Platin', CAST(111.11 AS Decimal(6, 2)), N'2021-08-13 03:23:11', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (9, N'Platin', CAST(1022.00 AS Decimal(6, 2)), N'2021-05-30 13:22:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (10, N'Platin', CAST(10.22 AS Decimal(6, 2)), N'2021-05-30 13:22:00', 1)
INSERT INTO [dbo].[Salgsudbud] ([s_Id], [MetalType], [gram], [deadline], [saelger_Id]) VALUES (11, N'Guld', CAST(5.27 AS Decimal(6, 2)), N'2021-06-25 08:00:00', 2)
SET IDENTITY_INSERT [dbo].[Salgsudbud] OFF

/* Inserts on Koebstilbud*/
SET IDENTITY_INSERT [dbo].[Koebstilbud] ON
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1000.00 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (2, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1100.00 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (3, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1244.00 AS Decimal(8, 2)), 1, 2)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (4, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1300.00 AS Decimal(8, 2)), 1, 2)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (5, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1400.00 AS Decimal(8, 2)), 1, 2)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (6, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1400.00 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (7, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1400.00 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (8, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1450.00 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (9, N'Vitus', N'v@gmail.dk', N'22222222', CAST(100.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (10, N'Vitus', N'v@gmail.dk', N'22222222', CAST(150.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (11, N'Vitus', N'v@gmail.dk', N'22222222', CAST(180.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1003, N'Vitus', N'v@gmail.dk', N'22222222', CAST(200.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1004, N'Vitus', N'v@gmail.dk', N'22222222', CAST(220.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1005, N'Vitus', N'v@gmail.dk', N'22222222', CAST(230.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1006, N'Vitus', N'v@gmail.dk', N'22222222', CAST(250.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1007, N'Vitus', N'v@gmail.dk', N'22222222', CAST(260.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1008, N'Vitus', N'v@gmail.dk', N'22222222', CAST(270.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1009, N'Vitus', N'v@gmail.dk', N'22222222', CAST(280.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1010, N'Vitus', N'v@gmail.dk', N'22222222', CAST(300.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1011, N'Vitus', N'v@gmail.dk', N'22222222', CAST(330.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1012, N'Vitus', N'v@gmail.dk', N'22222222', CAST(350.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1013, N'Vitus', N'v@gmail.dk', N'22222222', CAST(370.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1014, N'Vitus', N'v@gmail.dk', N'22222222', CAST(390.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1015, N'Vitus', N'v@gmail.dk', N'22222222', CAST(500.00 AS Decimal(8, 2)), 1, 4)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1016, N'Vitus', N'v@gmail.dk', N'22222222', CAST(11222.25 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1017, N'Vitus', N'v@gmail.dk', N'22222222', CAST(13000.25 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1018, N'Vitus', N'v@gmail.dk', N'22222222', CAST(14000.25 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1019, N'Vitus', N'v@gmail.dk', N'22222222', CAST(15000.25 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1020, N'Vitus', N'v@gmail.dk', N'22222222', CAST(16000.25 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1021, N'Vitus', N'v@gmail.dk', N'22222222', CAST(17000.55 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1022, N'Vitus', N'v@gmail.dk', N'22222222', CAST(200.55 AS Decimal(8, 2)), 1, 8)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1023, N'Vitus', N'v@gmail.dk', N'22222222', CAST(250.55 AS Decimal(8, 2)), 2, 8)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1024, N'Trine', N't@gmail.dk', N'88888888', CAST(18000.55 AS Decimal(8, 2)), 2, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1025, N'Vitus', N'v@gmail.dk', N'22222222', CAST(11.00 AS Decimal(8, 2)), 1, 1)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1026, N'Vitus', N'v@gmail.dk', N'22222222', CAST(120.00 AS Decimal(8, 2)), 1, 7)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1027, N'Vitus', N'v@gmail.dk', N'22222222', CAST(100.00 AS Decimal(8, 2)), 1, 3)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1028, N'Vitus', N'v@gmail.dk', N'22222222', CAST(100.00 AS Decimal(8, 2)), 1, 6)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1029, N'Vitus', N'v@gmail.dk', N'22222222', CAST(222.00 AS Decimal(8, 2)), 1, 5)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1030, N'Vitus', N'v@gmail.dk', N'22222222', CAST(333.00 AS Decimal(8, 2)), 1, 5)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1031, N'Vitus', N'v@gmail.dk', N'22222222', CAST(555.00 AS Decimal(8, 2)), 1, 5)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1032, N'Vitus', N'v@gmail.dk', N'22222222', CAST(666.00 AS Decimal(8, 2)), 1, 5)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1033, N'Vitus', N'v@gmail.dk', N'22222222', CAST(101.00 AS Decimal(8, 2)), 1, 6)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1034, N'Vitus', N'v@gmail.dk', N'22222222', CAST(102.00 AS Decimal(8, 2)), 1, 6)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1035, N'Vitus', N'v@gmail.dk', N'22222222', CAST(1333.00 AS Decimal(8, 2)), 1, 3)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1036, N'Vitus', N'v@gmail.dk', N'22222222', CAST(10.00 AS Decimal(8, 2)), 1, 9)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1037, N'Vitus', N'v@gmail.dk', N'22222222', CAST(15.00 AS Decimal(8, 2)), 1, 11)
INSERT INTO [dbo].[Koebstilbud] ([k_Id], [navn], [email], [tlf], [pris], [koeber_Id], [salgsudbud_Id]) VALUES (1038, N'Vitus', N'v@gmail.dk', N'22222222', CAST(20.00 AS Decimal(8, 2)), 1, 9)
SET IDENTITY_INSERT [dbo].[Koebstilbud] OFF

