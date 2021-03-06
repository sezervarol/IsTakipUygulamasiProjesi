USE [master]
GO
/****** Object:  Database [IsTakip]    Script Date: 24.06.2022 11:41:55 ******/
CREATE DATABASE [IsTakip]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'IsTakip', FILENAME = N'C:\Data\IsTakip.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'IsTakip_log', FILENAME = N'C:\Data\IsTakip_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [IsTakip] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [IsTakip].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [IsTakip] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [IsTakip] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [IsTakip] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [IsTakip] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [IsTakip] SET ARITHABORT OFF 
GO
ALTER DATABASE [IsTakip] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [IsTakip] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [IsTakip] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [IsTakip] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [IsTakip] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [IsTakip] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [IsTakip] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [IsTakip] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [IsTakip] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [IsTakip] SET  ENABLE_BROKER 
GO
ALTER DATABASE [IsTakip] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [IsTakip] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [IsTakip] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [IsTakip] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [IsTakip] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [IsTakip] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [IsTakip] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [IsTakip] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [IsTakip] SET  MULTI_USER 
GO
ALTER DATABASE [IsTakip] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [IsTakip] SET DB_CHAINING OFF 
GO
ALTER DATABASE [IsTakip] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [IsTakip] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [IsTakip] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [IsTakip] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [IsTakip] SET QUERY_STORE = OFF
GO
USE [IsTakip]
GO
/****** Object:  Table [dbo].[Bolumler]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolumler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BolumAd] [nvarchar](200) NULL,
	[PersonelId] [int] NULL,
	[ProjeId] [int] NULL,
	[Oran] [int] NULL,
	[Sure] [int] NULL,
	[Aciklama] [nvarchar](1000) NULL,
	[Durum] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[Aciklama] [nvarchar](1000) NULL,
	[Durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](100) NULL,
	[Soyad] [nvarchar](100) NULL,
	[Email] [nvarchar](200) NULL,
	[Telefon] [nvarchar](11) NULL,
	[YetkiId] [int] NULL,
	[Sifre] [nvarchar](50) NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK__Personne__3214EC07CC9D5F74] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proje]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proje](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProjeAd] [nvarchar](200) NULL,
	[FirmaId] [int] NULL,
	[Aciklama] [nvarchar](1000) NULL,
	[CalisanSayisi] [int] NULL,
	[Sure] [int] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK__Proje__3214EC075F162A7B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetki]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetki](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Yetki] [nvarchar](20) NULL,
	[Durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bolumler] ON 

INSERT [dbo].[Bolumler] ([Id], [BolumAd], [PersonelId], [ProjeId], [Oran], [Sure], [Aciklama], [Durum]) VALUES (1, N'gokhan', 2, 1, 25, 5, N'denizler', 1)
INSERT [dbo].[Bolumler] ([Id], [BolumAd], [PersonelId], [ProjeId], [Oran], [Sure], [Aciklama], [Durum]) VALUES (2, N'natro', 3, 1, 25, 5, N'havuzlar', 1)
INSERT [dbo].[Bolumler] ([Id], [BolumAd], [PersonelId], [ProjeId], [Oran], [Sure], [Aciklama], [Durum]) VALUES (3, N'masa', 4, 1, 25, 5, N'goller', 1)
INSERT [dbo].[Bolumler] ([Id], [BolumAd], [PersonelId], [ProjeId], [Oran], [Sure], [Aciklama], [Durum]) VALUES (4, N'', 1, 1, 25, 0, N'33', 1)
SET IDENTITY_INSERT [dbo].[Bolumler] OFF
GO
SET IDENTITY_INSERT [dbo].[Firma] ON 

INSERT [dbo].[Firma] ([Id], [Ad], [Aciklama], [Durum]) VALUES (1, N'C#', N'Yazılım Projesi', 1)
INSERT [dbo].[Firma] ([Id], [Ad], [Aciklama], [Durum]) VALUES (2, N'Pyhton', N'Yazılım Projesi', 1)
INSERT [dbo].[Firma] ([Id], [Ad], [Aciklama], [Durum]) VALUES (3, N'Ruby', N'Yazılım Projesi', 1)
INSERT [dbo].[Firma] ([Id], [Ad], [Aciklama], [Durum]) VALUES (4, N'C++', N'Yazılım Projesi', 1)
SET IDENTITY_INSERT [dbo].[Firma] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([Id], [Ad], [Soyad], [Email], [Telefon], [YetkiId], [Sifre], [Durum]) VALUES (1, N'ERHAN', N'KAYA', N'erhankaya@gmail.com', N'5727727272', 1, N'erhan', 1)
INSERT [dbo].[Personel] ([Id], [Ad], [Soyad], [Email], [Telefon], [YetkiId], [Sifre], [Durum]) VALUES (2, N'Sezer', N'Varol', N'sezervarol78@gmail.com', N'5355023602', 2, N'123', 1)
INSERT [dbo].[Personel] ([Id], [Ad], [Soyad], [Email], [Telefon], [YetkiId], [Sifre], [Durum]) VALUES (3, N'Salman', N'Kaplan', N'kaplansalman46@gmail.com', N'5355023601', 2, N'123', 1)
INSERT [dbo].[Personel] ([Id], [Ad], [Soyad], [Email], [Telefon], [YetkiId], [Sifre], [Durum]) VALUES (4, N'Onur', N'Şen', N'onursen55@gmail.com', N'5355023600', 2, N'123', 1)
INSERT [dbo].[Personel] ([Id], [Ad], [Soyad], [Email], [Telefon], [YetkiId], [Sifre], [Durum]) VALUES (5, N'Gökay ', N'Ürenç', N'gokayurenc01@gmail.com', N'5355023603', 2, N'123', 1)
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
SET IDENTITY_INSERT [dbo].[Proje] ON 

INSERT [dbo].[Proje] ([Id], [ProjeAd], [FirmaId], [Aciklama], [CalisanSayisi], [Sure], [Durum]) VALUES (1, N'sezer a.ş.', 1, N'sezer', 4, 5, 1)
SET IDENTITY_INSERT [dbo].[Proje] OFF
GO
SET IDENTITY_INSERT [dbo].[Yetki] ON 

INSERT [dbo].[Yetki] ([Id], [Yetki], [Durum]) VALUES (1, N'Müdür', 1)
INSERT [dbo].[Yetki] ([Id], [Yetki], [Durum]) VALUES (2, N'Personel', 1)
SET IDENTITY_INSERT [dbo].[Yetki] OFF
GO
ALTER TABLE [dbo].[Bolumler]  WITH CHECK ADD  CONSTRAINT [FK_Bolumler_Personel] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[Personel] ([Id])
GO
ALTER TABLE [dbo].[Bolumler] CHECK CONSTRAINT [FK_Bolumler_Personel]
GO
ALTER TABLE [dbo].[Bolumler]  WITH CHECK ADD  CONSTRAINT [FK_Bolumler_Proje] FOREIGN KEY([ProjeId])
REFERENCES [dbo].[Proje] ([Id])
GO
ALTER TABLE [dbo].[Bolumler] CHECK CONSTRAINT [FK_Bolumler_Proje]
GO
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_Yetki] FOREIGN KEY([YetkiId])
REFERENCES [dbo].[Yetki] ([Id])
GO
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_Yetki]
GO
ALTER TABLE [dbo].[Proje]  WITH CHECK ADD  CONSTRAINT [FK_Proje_Firma] FOREIGN KEY([FirmaId])
REFERENCES [dbo].[Firma] ([Id])
GO
ALTER TABLE [dbo].[Proje] CHECK CONSTRAINT [FK_Proje_Firma]
GO
/****** Object:  StoredProcedure [dbo].[ADDBOLUM]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[ADDBOLUM]
@YetkiId int,
@ProjeId int,
@BolumAd nvarchar(200),
@PersonelId int,
@Oran int,
@Aciklama nvarchar(250),
@Sure int
as
declare @Toplam int
declare @adet int
begin
	
	select @adet=count(Oran) from Bolumler where ProjeId=@ProjeId
	if @adet>0 begin
		select @Toplam=sum(Oran) from Bolumler where ProjeId=@ProjeId
	end
	else begin
		set @Toplam=0
	end
	if @YetkiId=1 begin
		if @Toplam+@Oran<=100  begin 
			insert into Bolumler(BolumAd,PersonelId,ProjeId,Oran,Sure,Aciklama,Durum)
		    values(@BolumAd,@PersonelId,@ProjeId,@Oran,@Sure,@Aciklama,1)
			print 'Projeye Bölüm Eklendi'
		end
		else begin
		print 'PROJEYE BÖLÜM EKLEME ARTIK YETER'
		end
	end
	else begin
		print 'Projeye Sadece Müdür Proje Ekleyebilir'
	end
end

GO
/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddEmployee]
@Ad nvarchar(100), 
@Soyad nvarchar(100), 
@Email nvarchar(50), 
@Telefon nvarchar(11), 
@YetkiId int, 
@Sifre nvarchar(50),
@PersonelYetkiId int
as
begin

		if @YetkiId=1 
		begin
		insert into Personel(Ad, Soyad, Email, Telefon, YetkiId, Sifre, Durum)
		values(@Ad, @Soyad, @Email, @Telefon, @PersonelYetkiId, @Sifre,1)
		Print 'Personel Ekleme İşlemi Tamamlandı'
		end
		else begin
		print 'Projeye Sadece Müdür Personel Ekleyebilir'
		end

end
GO
/****** Object:  StoredProcedure [dbo].[BOLUMLERİEKLE]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[BOLUMLERİEKLE]
@YetkiId int,
@ProjeId int,
@BolumAd nvarchar(200),
@PersonelId int,
@Oran int,
@Aciklama nvarchar(250),
@Sure int
AS
declare @Toplam int
begin
	if @YetkiId=1 begin
		select @Toplam=sum(oran) from Bolumler where ProjeId=@ProjeId
		if @Toplam<=100 begin 
			insert into Bolumler(BolumAd,PersonelId,ProjeId,Oran,Sure,Aciklama,Durum)
			values(@BolumAd,@PersonelId,@ProjeId,@Oran,@Sure,@Aciklama,1)
			print 'Projeye Bölüm Eklendi'
		end
		else begin
		print @toplam 
	end
	end
	else begin
		print 'Projeye Sadece Müdür Proje Ekleyebilir'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[BOLUMVER]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[BOLUMVER]

@YetkiId int,
@ProjeId int,
@BolumAd nvarchar(200),
@PersonelId int,
@Oran int,
@Aciklama nvarchar(250),
@Sure int
as
begin
		if @YetkiId=1 begin
		insert into Bolumler(BolumAd,PersonelId,ProjeId,Oran,Sure,Aciklama,Durum)
		values(@BolumAd,@PersonelId,@ProjeId,@Oran,@Sure,@Aciklama,1)
		print 'Projeye Bölüm Eklendi'
		end
		else begin
		print 'Projeye Sadece Müdür Proje Ekleyebilir'
		end
end
GO
/****** Object:  StoredProcedure [dbo].[CompanyAdd]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[CompanyAdd]
@Ad nvarchar(100),
@Aciklama nvarchar(1000),
@YetkiId int
as 
begin
	if @YetkiId=1  
	begin
	insert into Firma(Ad,Aciklama,Durum) 
	values (@Ad,@Aciklama,1)
	Print 'Firma Ekleme İşlemi Yapıldı'
	end
	else
	begin
	print 'Firma Ekleme İşlemi İptal Edildi'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Project]    Script Date: 24.06.2022 11:41:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[Project]
@YetkiId int,
@ProjeAd nvarchar(200),
@FirmaId int,
@Aciklama nvarchar(550),
@CalisanSayisi int,
@Sure int
as
begin
		if @YetkiId=1 begin
		insert into Proje(ProjeAd,FirmaId,Aciklama,CalisanSayisi,Sure,Durum)
		values(@ProjeAd,@FirmaId,@Aciklama,@CalisanSayisi,@Sure, 1)
		print 'Proje Oluşturuldu'
		end
		else begin
		print 'Sadece Müdür Proje Ekleyebilir'
		end
end
GO
USE [master]
GO
ALTER DATABASE [IsTakip] SET  READ_WRITE 
GO
