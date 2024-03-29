USE [master]
GO
/****** Object:  Database [Database_Empresas]    Script Date: 06/05/2019 11:30:23 ******/
CREATE DATABASE [Database_Empresas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Database_Empresas', FILENAME = N'C:\Users\arthu\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDBDatabase_Empresas_Primary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Database_Empresas_log', FILENAME = N'C:\Users\arthu\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDBDatabase_Empresas_Primary.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Database_Empresas] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Database_Empresas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Database_Empresas] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [Database_Empresas] SET ANSI_NULLS ON 
GO
ALTER DATABASE [Database_Empresas] SET ANSI_PADDING ON 
GO
ALTER DATABASE [Database_Empresas] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [Database_Empresas] SET ARITHABORT ON 
GO
ALTER DATABASE [Database_Empresas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Database_Empresas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Database_Empresas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Database_Empresas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Database_Empresas] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [Database_Empresas] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [Database_Empresas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Database_Empresas] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [Database_Empresas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Database_Empresas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Database_Empresas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Database_Empresas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Database_Empresas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Database_Empresas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Database_Empresas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Database_Empresas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Database_Empresas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Database_Empresas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Database_Empresas] SET  MULTI_USER 
GO
ALTER DATABASE [Database_Empresas] SET PAGE_VERIFY NONE  
GO
ALTER DATABASE [Database_Empresas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Database_Empresas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Database_Empresas] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Database_Empresas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Database_Empresas] SET QUERY_STORE = OFF
GO
USE [Database_Empresas]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Database_Empresas]
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 06/05/2019 11:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresas](
	[ID] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[NumberOfEmployees] [int] NOT NULL,
	[City] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos]    Script Date: 06/05/2019 11:30:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos](
	[ID] [int] NOT NULL,
	[TypeCode] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Tipos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (0, 1, N'Agro Public', N'09296295000160', 1000, N'São Paulo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (1, 2, N'Delta Aviões', N'10777066000146', 12000, N'Rio de Janeiro')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (2, 3, N'Micrologix Biotec', N'37076413000160', 18900, N'Salvador')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (3, 4, N'Ecologia', N'27954615000103', 14230, N'Piracicaba')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (4, 5, N'Americanas', N'83669576000173', 22000, N'São Paulo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (5, 6, N'UFLA', N'90138208000164', 145, N'Lavras')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (6, 7, N'Minas Modas', N'90138208000164', 200, N'Lavras')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (7, 8, N'Inova', N'79176196000120', 1333, N'Varginha')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (8, 9, N'Texas Burguer', N'06271000000102', 15, N'Lavras')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (9, 10, N'Masson Games', N'05731433000130', 1, N'São José dos Campos')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (10, 11, N'Saude e Cia', N'63307124000134', 20, N'Rio de Janeiro')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (11, 12, N'Analises', N'54342466000102', 521, N'Belo Horizonte')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (12, 13, N'Logistica Brasil', N'68783197000116', 10000, N'São José Dos Campos')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (13, 14, N'Rede Globo', N'52656126000112', 14, N'São Paulo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (14, 15, N'MineradoraSP', N'74710135000187', 25300, N'São Paulo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (15, 16, N'NovaProdutos', N'31534001000140', 1543, N'Belo Horizonte')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (16, 17, N'Piramide Imobiliaria', N'17137004000119', 30, N'São Paulo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (17, 18, N'ABC Serviços', N'84438612000150', 12, N'São Bernardo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (18, 19, N'CJ Soluções', N'97154262000142', 145, N'São josé dos Campos')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (19, 20, N'Midias Sociais', N'23518734000162', 24, N'Rio de Janeiro')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (20, 21, N'ACM Softwares', N'94406680000191', 2, N'Lavras')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (21, 22, N'ACM Tecnologias', N'39791836000197', 1, N'Lavras')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (22, 23, N'Voare Turismo', N'31444274000101', 13, N'São Paulo')
INSERT [dbo].[Empresas] ([ID], [Type], [Name], [CNPJ], [NumberOfEmployees], [City]) VALUES (23, 24, N'UTIL', N'65790421000109', 1256, N'Belo Horizonte')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (0, 1, N'Agro')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (1, 2, N'Aviation')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (2, 3, N'Biotech')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (3, 4, N'Eco')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (4, 5, N'Ecommerce')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (5, 6, N'Education')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (6, 7, N'Fashion')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (7, 8, N'Fintech')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (8, 9, N'Food')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (9, 10, N'Games')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (10, 11, N'Health')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (11, 12, N'IOT')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (12, 13, N'Logistics')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (13, 14, N'Media')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (14, 15, N'Mining')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (15, 16, N'Products')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (16, 17, N'Real Estate')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (17, 18, N'Service')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (18, 19, N'Smart City')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (19, 20, N'Social')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (20, 21, N'Software')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (21, 22, N'Technology')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (22, 23, N'Tourism')
INSERT [dbo].[Tipos] ([ID], [TypeCode], [Name]) VALUES (23, 24, N'Transport')
/****** Object:  Index [UQ__tmp_ms_x__8E762CB4911402AE]    Script Date: 06/05/2019 11:30:24 ******/
ALTER TABLE [dbo].[Tipos] ADD UNIQUE NONCLUSTERED 
(
	[TypeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empresas]  WITH CHECK ADD  CONSTRAINT [FK_Empresas_ToTable] FOREIGN KEY([Type])
REFERENCES [dbo].[Tipos] ([TypeCode])
GO
ALTER TABLE [dbo].[Empresas] CHECK CONSTRAINT [FK_Empresas_ToTable]
GO
USE [master]
GO
ALTER DATABASE [Database_Empresas] SET  READ_WRITE 
GO
