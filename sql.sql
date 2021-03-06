USE [master]
GO
/****** Object:  Database [NHAXE]    Script Date: 10/10/2018 11:16:04 PM ******/
CREATE DATABASE [NHAXE]
GO
ALTER DATABASE [NHAXE] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NHAXE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NHAXE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NHAXE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NHAXE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NHAXE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NHAXE] SET ARITHABORT OFF 
GO
ALTER DATABASE [NHAXE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NHAXE] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NHAXE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NHAXE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NHAXE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NHAXE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NHAXE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NHAXE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NHAXE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NHAXE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NHAXE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NHAXE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NHAXE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NHAXE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NHAXE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NHAXE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NHAXE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NHAXE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NHAXE] SET RECOVERY FULL 
GO
ALTER DATABASE [NHAXE] SET  MULTI_USER 
GO
ALTER DATABASE [NHAXE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NHAXE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NHAXE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NHAXE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NHAXE', N'ON'
GO
USE [NHAXE]
GO
/****** Object:  User [vominhquy@gmail.com]    Script Date: 10/10/2018 11:16:04 PM ******/
CREATE USER [vominhquy@gmail.com] FOR LOGIN [MinhQuy] WITH DEFAULT_SCHEMA=[vominhquy@gmail.com]
GO
/****** Object:  User [truongle123@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [truongle123@gmail.com] FOR LOGIN [TruongLe] WITH DEFAULT_SCHEMA=[truongle123@gmail.com]
GO
/****** Object:  User [thuy110994@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [thuy110994@gmail.com] FOR LOGIN [ThuyNT] WITH DEFAULT_SCHEMA=[thuy110994@gmail.com]
GO
/****** Object:  User [quangthanh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [quangthanh@gmail.com] FOR LOGIN [QuangThanh] WITH DEFAULT_SCHEMA=[quangthanh@gmail.com]
GO
/****** Object:  User [phuongthanh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [phuongthanh@gmail.com] FOR LOGIN [PhuongThanh] WITH DEFAULT_SCHEMA=[phuongthanh@gmail.com]
GO
/****** Object:  User [phamtuananh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [phamtuananh@gmail.com] FOR LOGIN [TuanAnh] WITH DEFAULT_SCHEMA=[phamtuananh@gmail.com]
GO
/****** Object:  User [nguyentrang091296@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [nguyentrang091296@gmail.com] FOR LOGIN [NguyenTrang] WITH DEFAULT_SCHEMA=[nguyentrang091296@gmail.com]
GO
/****** Object:  User [nguyenNga@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [nguyenNga@gmail.com] FOR LOGIN [NguyenNga] WITH DEFAULT_SCHEMA=[nguyenNga@gmail.com]
GO
/****** Object:  User [ngocthuybd@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [ngocthuybd@gmail.com] FOR LOGIN [NgocThuy] WITH DEFAULT_SCHEMA=[ngocthuybd@gmail.com]
GO
/****** Object:  User [ngocdungtathi@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [ngocdungtathi@gmail.com] FOR LOGIN [NgocDung] WITH DEFAULT_SCHEMA=[ngocdungtathi@gmail.com]
GO
/****** Object:  User [minhhieu99@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [minhhieu99@gmail.com] FOR LOGIN [MinhHieu] WITH DEFAULT_SCHEMA=[minhhieu99@gmail.com]
GO
/****** Object:  User [lethanhvinh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [lethanhvinh@gmail.com] FOR LOGIN [ThanhVinh] WITH DEFAULT_SCHEMA=[lethanhvinh@gmail.com]
GO
/****** Object:  User [hoangtuanhao@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [hoangtuanhao@gmail.com] FOR LOGIN [TuanHao] WITH DEFAULT_SCHEMA=[hoangtuanhao@gmail.com]
GO
/****** Object:  User [giaoLinh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [giaoLinh@gmail.com] FOR LOGIN [GiaoLinh] WITH DEFAULT_SCHEMA=[giaoLinh@gmail.com]
GO
/****** Object:  User [daothioanh123@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [daothioanh123@gmail.com] FOR LOGIN [OanhDao] WITH DEFAULT_SCHEMA=[daothioanh123@gmail.com]
GO
/****** Object:  User [binhtam0785@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE USER [binhtam0785@gmail.com] FOR LOGIN [BinhTam] WITH DEFAULT_SCHEMA=[binhtam0785@gmail.com]
GO
/****** Object:  DatabaseRole [USER]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE ROLE [USER]
GO
/****** Object:  DatabaseRole [QUANLI]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE ROLE [QUANLI]
GO
/****** Object:  DatabaseRole [NHANVIENNHAPLIEU]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE ROLE [NHANVIENNHAPLIEU]
GO
/****** Object:  DatabaseRole [NHANVIEN]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE ROLE [NHANVIEN]
GO
ALTER ROLE [NHANVIEN] ADD MEMBER [vominhquy@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vominhquy@gmail.com]
GO
ALTER ROLE [QUANLI] ADD MEMBER [truongle123@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [truongle123@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [truongle123@gmail.com]
GO
ALTER ROLE [USER] ADD MEMBER [thuy110994@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [thuy110994@gmail.com]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [thuy110994@gmail.com]
GO
ALTER ROLE [NHANVIEN] ADD MEMBER [quangthanh@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [quangthanh@gmail.com]
GO
ALTER ROLE [QUANLI] ADD MEMBER [phuongthanh@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [phuongthanh@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [phuongthanh@gmail.com]
GO
ALTER ROLE [NHANVIEN] ADD MEMBER [phamtuananh@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [phamtuananh@gmail.com]
GO
ALTER ROLE [QUANLI] ADD MEMBER [nguyentrang091296@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [nguyentrang091296@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nguyentrang091296@gmail.com]
GO
ALTER ROLE [QUANLI] ADD MEMBER [nguyenNga@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [nguyenNga@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [nguyenNga@gmail.com]
GO
ALTER ROLE [USER] ADD MEMBER [ngocthuybd@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ngocthuybd@gmail.com]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ngocthuybd@gmail.com]
GO
ALTER ROLE [NHANVIENNHAPLIEU] ADD MEMBER [ngocdungtathi@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [ngocdungtathi@gmail.com]
GO
ALTER ROLE [QUANLI] ADD MEMBER [minhhieu99@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [minhhieu99@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [minhhieu99@gmail.com]
GO
ALTER ROLE [NHANVIEN] ADD MEMBER [lethanhvinh@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [lethanhvinh@gmail.com]
GO
ALTER ROLE [NHANVIEN] ADD MEMBER [hoangtuanhao@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [hoangtuanhao@gmail.com]
GO
ALTER ROLE [NHANVIEN] ADD MEMBER [giaoLinh@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [giaoLinh@gmail.com]
GO
ALTER ROLE [NHANVIENNHAPLIEU] ADD MEMBER [daothioanh123@gmail.com]
GO
ALTER ROLE [db_owner] ADD MEMBER [daothioanh123@gmail.com]
GO
ALTER ROLE [USER] ADD MEMBER [binhtam0785@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [binhtam0785@gmail.com]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [binhtam0785@gmail.com]
GO
ALTER ROLE [db_datareader] ADD MEMBER [USER]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [USER]
GO
ALTER ROLE [db_owner] ADD MEMBER [QUANLI]
GO
ALTER ROLE [db_datareader] ADD MEMBER [QUANLI]
GO
ALTER ROLE [db_owner] ADD MEMBER [NHANVIENNHAPLIEU]
GO
ALTER ROLE [db_datareader] ADD MEMBER [NHANVIEN]
GO
/****** Object:  Schema [binhtam0785@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [binhtam0785@gmail.com]
GO
/****** Object:  Schema [daothioanh123@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [daothioanh123@gmail.com]
GO
/****** Object:  Schema [giaoLinh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [giaoLinh@gmail.com]
GO
/****** Object:  Schema [hoangtuanhao@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [hoangtuanhao@gmail.com]
GO
/****** Object:  Schema [lethanhvinh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [lethanhvinh@gmail.com]
GO
/****** Object:  Schema [minhhieu99@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [minhhieu99@gmail.com]
GO
/****** Object:  Schema [ngocdungtathi@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [ngocdungtathi@gmail.com]
GO
/****** Object:  Schema [ngocthuybd@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [ngocthuybd@gmail.com]
GO
/****** Object:  Schema [nguyenNga@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [nguyenNga@gmail.com]
GO
/****** Object:  Schema [nguyentrang091296@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [nguyentrang091296@gmail.com]
GO
/****** Object:  Schema [phamtuananh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [phamtuananh@gmail.com]
GO
/****** Object:  Schema [phuongthanh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [phuongthanh@gmail.com]
GO
/****** Object:  Schema [quangthanh@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [quangthanh@gmail.com]
GO
/****** Object:  Schema [thuy110994@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [thuy110994@gmail.com]
GO
/****** Object:  Schema [truongle123@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [truongle123@gmail.com]
GO
/****** Object:  Schema [vominhquy@gmail.com]    Script Date: 10/10/2018 11:16:05 PM ******/
CREATE SCHEMA [vominhquy@gmail.com]
GO
/****** Object:  StoredProcedure [dbo].[sp_DANGNHAP]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_DANGNHAP]
	@TENLOGIN NVARCHAR(50),
	@PASSWORD NVARCHAR(50)
as

declare @TENUSER NVARCHAR(50)
declare @ROLE NVARCHAR(10)
select @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
	  select @ROLE = NAME
	   FROM sys.sysusers
	   WHERE uid = (SELECT groupuid FROM sys.sysmembers
		WHERE memberuid = (SELECT uid FROM sys.sysusers WHERE name = @TENUSER ))
	if (@ROLE = 'USER' )
	Select  Quyen=@ROLE, Ten=TenHK,Email from HanhKhach  where EMAIL = @TENUSER and MatKhau = @PASSWORD
	if (@ROLE = 'QUANLI' OR @ROLE = 'NHANVIEN' )
	Select  Quyen=@ROLE, Ten=TenNV,Email from [dbo].[NhanVien] where EMAIL = @TENUSER  and MatKhau = @PASSWORD

GO
/****** Object:  StoredProcedure [dbo].[SP_GiaVe_Ngay]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_GiaVe_Ngay]
@Matuyen nvarchar(20),
@NgayBD datetime
as
BEGIN
   
  Select *from [dbo].[GiaVe] where MaTD = @Matuyen and NgayBD =@NgayBD
   
END





GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_PhanCongChuyenXe]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_Insert_PhanCongChuyenXe]
@MaTD nchar(20),
@BSX nchar(10),
@NgayKH date,
@GioKH time
as
BEGIN
   
   declare @SoveCL int
   declare @SoHang int
   declare @SoCot int 
   declare @tam1 int 
   declare @tam2 int 
   declare @dem int 
   declare @i int
   declare @id nchar(3)
    declare @res int
	select @dem = count(*) from [dbo].[PhanCongChuyen] where MaTD = @MaTD and BSX = @BSX and  NgayKH= @NgayKH and GioKH = @GioKH
	if(@dem = 0)
	begin
			 
			 select @SoHang =  SoHang from [dbo].[XeKhach] where BSX = @BSX	
			 select @SoCot =  SoCot from [dbo].[XeKhach] where BSX = @BSX	
			 set @SoveCL =  @SoHang * @SoCot
			insert into [dbo].[PhanCongChuyen](MaTD,BSX,NgayLap,NgayKH,GioKH,TrangThai,SoVeCL) 
			values (@MaTD,@BSX,GETDATE(),@NgayKH,@GioKH,0,@SoveCL)
			select @res = MaChuyen from [dbo].[PhanCongChuyen] where MaTD = @MaTD and BSX = @BSX and  NgayKH= @NgayKH and GioKH = @GioKH
	end
	else
	set @res = 0
	if(@res>0)
	begin
	
	 set @tam1 = 1;
	 set @tam2 = 1
	 WHILE @tam1 <=  @SoCot 
		BEGIN
		  WHILE @tam2 <=    @SoHang
		  BEGIN
		  if(@tam1 = 1)
		  begin 
		   SET @id = 'A' +Convert (char,@tam2,1);
		   
		 end
		 else  if(@tam1 = 2)
		 SET @id = 'B' + Convert (char,@tam2,1);
		  if(@tam1 = 3)
		  begin 
		   SET @id = 'C' +Convert (char,@tam2,1);
		 end
		 else  if(@tam1 = 4)
		 begin
		 SET @id = 'D' + Convert (char,@tam2,1);
		   end
		   else  if(@tam1 = 5)
		 begin
		 SET @id = 'E' + Convert (char,@tam2,1);
		   end
		   else  if(@tam1 = 6)
		 begin
		 SET @id = 'F' + Convert (char,@tam2,1);
		   end
		   set @tam2 = @tam2 +1;
		   insert into [dbo].[PhanCongGhe](ViTriNgoi,MaChuyen,TrangThai) 
			values (@id,@res,0)
		   END
		   set @tam2 = 1;
		   set @tam1 = @tam1 +1 ;
		END

	end
	else
	begin
	set @SoveCL = 0
	set @SoHang= 0
	set @SoCot = 0
	end
	select @Res
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Insert_PHANCONGXEKHACH]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[SP_Insert_PHANCONGXEKHACH]
@MaTD nchar(20),
@BSX nchar(10),
@NgayKH date,
@GioKH time
as
BEGIN
   
   declare @SoveCL int
   declare @SoHang int
   declare @SoCot int 
   declare @tam1 int 
   declare @tam2 int 
   declare @dem int 
   declare @i int
   declare @id nchar(3)
    declare @res int
	select @dem = count(*) from [dbo].[PhanCongXK] where MaTD = @MaTD and BSX = @BSX and  NgayKH= @NgayKH and GioKH = @GioKH
	if(@dem = 0)
	begin
			 select @SoveCL =  SoCho from [dbo].[XeKhach] where BSX = @BSX
			 select @SoHang =  SoHang from [dbo].[XeKhach] where BSX = @BSX	
			 select @SoCot =  SoCot from [dbo].[XeKhach] where BSX = @BSX	
			insert into [dbo].[PhanCongXK](MaTD,BSX,NgayKH,GioKH,TrangThai,SoVeCL) 
			values (@MaTD,@BSX,@NgayKH,@GioKH,0,@SoveCL)
			select @res = MaPC from [dbo].[PhanCongXK] where MaTD = @MaTD and BSX = @BSX and  NgayKH= @NgayKH and GioKH = @GioKH
	end
	else
	set @res = 0
	if(@res>0)
	begin
	
	 set @tam1 = 1;
	 set @tam2 = 1
	 WHILE @tam1 <=  @SoCot 
		BEGIN
		  WHILE @tam2 <=    @SoHang
		  BEGIN
		  if(@tam1 = 1)
		  begin 
		   SET @id = 'A' +Convert (char,@tam2,1);
		   
		 end
		 else  if(@tam1 = 2)
		 SET @id = 'B' + Convert (char,@tam2,1);
		  if(@tam1 = 3)
		  begin 
		   SET @id = 'C' +Convert (char,@tam2,1);
		 end
		 else  if(@tam1 = 4)
		 begin
		 SET @id = 'D' + Convert (char,@tam2,1);
		   end
		   else  if(@tam1 = 5)
		 begin
		 SET @id = 'E' + Convert (char,@tam2,1);
		   end
		   else  if(@tam1 = 6)
		 begin
		 SET @id = 'F' + Convert (char,@tam2,1);
		   end
		   set @tam2 = @tam2 +1;
		   insert into [dbo].[PhanCongGhe](IDGhe,MaPC,TrangThai) 
			values (@id,@res,0)
		   END
		   set @tam2 = 1;
		   set @tam1 = @tam1 +1 ;
		END

	end
	else
	begin
	set @SoveCL = 0
	set @SoHang= 0
	set @SoCot = 0
	end
	select @Res
END


GO
/****** Object:  StoredProcedure [dbo].[SP_ListALL_PHANCONGGHENGOI]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_ListALL_PHANCONGGHENGOI]
@MaPC int
as
BEGIN
   
  Select *from [dbo].[PhanCongGhe] Where MaChuyen = @MaPC
END





GO
/****** Object:  StoredProcedure [dbo].[SP_ListTD-GiaVe]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_ListTD-GiaVe]

as
BEGIN
   
  Select TuyenDuong.MaTD, BenDi, BenDen, ThoiGian, QuangDuong,GiaVe,NgayBD  from [dbo].[TuyenDuong],[dbo].[GiaVe] where TuyenDuong.MaTD = GiaVe.MaTD 
   
END





GO
/****** Object:  StoredProcedure [dbo].[sp_Login]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_Login]
	@TENLOGIN NVARCHAR(50),
	@PASSWORD NVARCHAR(50)
as

declare @TENUSER NVARCHAR(50)
declare @ROLE NVARCHAR(20)
declare @count int
declare @res int
select @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
	  select @ROLE = NAME
	   FROM sys.sysusers
	   WHERE uid = (SELECT groupuid FROM sys.sysmembers
		WHERE memberuid = (SELECT uid FROM sys.sysusers WHERE name = @TENUSER ))
	if (@ROLE = 'USER' )
	Select @count = count(*) from HanhKhach  where LGName = @TENLOGIN and MatKhau = @PASSWORD
	if (@ROLE = 'QUANLI' OR @ROLE = 'NHANVIEN' OR @ROLE ='NHANVIENNHAPLIEU')
	Select  @count = count(*) from [dbo].[NhanVien] where LGName = @TENLOGIN  and MatKhau = @PASSWORD
	if @count > 0
	set @res = 1
	else 
	set @res = 0
	select @res

GO
/****** Object:  StoredProcedure [dbo].[sp_quyen]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_quyen]
	@TENLOGIN NVARCHAR(50)
as

declare @TENUSER NVARCHAR(50)
declare @ROLE NVARCHAR(20)
select @TENUSER=NAME FROM sys.sysusers WHERE sid = SUSER_SID(@TENLOGIN)
	  select @ROLE = NAME
	   FROM sys.sysusers
	   WHERE uid = (SELECT groupuid FROM sys.sysmembers
		WHERE memberuid = (SELECT uid FROM sys.sysusers WHERE name = @TENUSER ))
	select @ROLE

GO
/****** Object:  StoredProcedure [dbo].[sp_TaoTaiKhoan]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_TaoTaiKhoan]
	@LGNAME VARCHAR(50),
	@ROLE VARCHAR(50),
	@TenNV nvarchar(50), 
	@Email nvarchar(100),
	@NgaySinh date,
	@GioiTinh nchar(3),
	@CMND nchar(9),
	@DIACHI nvarchar(200),
	@SDT nchar(11),
	@MaCV nchar(10),
	@MatKhau nchar(20)
AS
BEGIN
  DECLARE @RET INT
  DECLARE @USERNAME VARCHAR(50)
  set @USERNAME = @Email
  EXEC @RET= SP_ADDLOGIN @LGNAME, @MatKhau,'NHAXE'                     

  IF (@RET =1)  -- LOGIN NAME BI TRUNG
     set @RET =1

  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @USERNAME
  IF (@RET =1)  -- USER  NAME BI TRUNG
  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       set @RET =2
  END
  EXEC sp_addrolemember @ROLE, @USERNAME

  IF @ROLE= 'NHANVIEN' 
	BEGIN
		EXEC sp_addsrvrolemember @LGNAME, 'sysadmin'
		EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
		
		INSERT INTO NhanVien(TenNV,LGName,Email,NgaySinh,GioiTinh,CMND, DIACHI, SDT,MatKhau, MaChucVu) 
			VALUES( @TenNV,@LGNAME, @Email,@NgaySinh,@GioiTinh,@CMND, @DIACHI, @SDT,@MatKhau, @MaCV)
		set @RET =0
	END
	IF @ROLE= 'NHANVIENNHAPLIEU' 
	BEGIN
		EXEC sp_addsrvrolemember @LGNAME, 'sysadmin'
		EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
		
		INSERT INTO NhanVien(TenNV,LGName,Email,NgaySinh,GioiTinh,CMND, DIACHI, SDT,MatKhau, MaChucVu) 
			VALUES( @TenNV,@LGNAME, @Email,@NgaySinh,@GioiTinh,@CMND, @DIACHI, @SDT,@MatKhau, @MaCV)
		set @RET =0
	END
  IF @ROLE= 'QUANLI'
	BEGIN 
		EXEC sp_addsrvrolemember @LGNAME, 'sysadmin'
		EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
		
		INSERT INTO NhanVien(TenNV,LGName,Email, NgaySinh,GioiTinh,CMND,DIACHI, SDT,MatKhau, MaChucVu) 
			VALUES( @TenNV,@LGNAME, @Email,@NgaySinh,@GioiTinh,@CMND, @DIACHI, @SDT,@MatKhau, @MaCV)
			set @RET =0
	END
  IF @ROLE= 'USER'
	BEGIN  
	
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
		INSERT INTO [dbo].[HanhKhach](TenHK,LGName,Email,NgaySinh,GioiTinh,CMND, DIACHI, SDT,MatKhau) 
			VALUES( @TenNV,@LGNAME, @Email,@NgaySinh,@GioiTinh,@CMND, @DIACHI, @SDT,@MatKhau)
			set @RET =0
	END
	select @RET
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Update_GiaVe_Ngay]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[SP_Update_GiaVe_Ngay]
@Matuyen nvarchar(20),
@NgayBD datetime,
@Gia int

as
BEGIN
   
  UPDATE [dbo].[GiaVe]
SET Gia = @Gia
WHERE MaTD = @Matuyen and NgayBD = @NgayBD;
select @gia 
   
END





GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateGheNgoi]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_UpdateGheNgoi]
@IDGheNgoi int
as
BEGIN
   
  
  UPDATE PhanCongGhe
SET TrangThai = 3
WHERE IDGhe = @IDGheNgoi;
select @IDGheNgoi
END





GO
/****** Object:  StoredProcedure [dbo].[SP_UpdateGheNgoiForUSER]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[SP_UpdateGheNgoiForUSER]
@IDGheNgoi int
as
BEGIN
   
  
  UPDATE PhanCongGhe
SET TrangThai = 1
WHERE IDGhe = @IDGheNgoi;
select @IDGheNgoi
END





GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [nchar](10) NOT NULL,
	[TenChucVu] [nvarchar](20) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[Soluongve] [int] NULL,
	[TongTien] [int] NULL,
	[HinhThuc] [int] NULL,
	[TrangThai] [int] NULL,
	[NgayDH] [date] NULL,
	[MaHK] [int] NULL,
	[MaPC] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaVe]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaVe](
	[MaTD] [nchar](20) NOT NULL,
	[Gia] [int] NULL,
	[NgayBD] [date] NOT NULL,
 CONSTRAINT [PK_GiaVe] PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC,
	[NgayBD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HanhKhach]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HanhKhach](
	[MaHK] [int] IDENTITY(1,1) NOT NULL,
	[LGName] [nchar](100) NULL,
	[TenHK] [nvarchar](50) NULL,
	[CMND] [nchar](9) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nchar](3) NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[MatKhau] [nchar](20) NULL,
 CONSTRAINT [PK_HanhKhach] PRIMARY KEY CLUSTERED 
(
	[MaHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiXe]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiXe](
	[MaLoaiXe] [nvarchar](10) NOT NULL,
	[TenLoaiXe] [nvarchar](20) NULL,
 CONSTRAINT [PK_LoaiXe] PRIMARY KEY CLUSTERED 
(
	[MaLoaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[LGName] [nvarchar](100) NULL,
	[TenNV] [nvarchar](50) NULL,
	[CMND] [nchar](9) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nchar](3) NULL,
	[Email] [nvarchar](100) NULL,
	[SDT] [nchar](11) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[MatKhau] [nchar](50) NULL,
	[MaChucVu] [nchar](10) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCongChuyen]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCongChuyen](
	[MaChuyen] [int] IDENTITY(1,1) NOT NULL,
	[MaTD] [nchar](20) NULL,
	[BSX] [nchar](10) NULL,
	[NgayLap] [date] NULL,
	[NgayKH] [date] NULL,
	[GioKH] [time](2) NULL,
	[TrangThai] [int] NULL,
	[SoVeCL] [int] NULL,
 CONSTRAINT [PK_PhanCongXK] PRIMARY KEY CLUSTERED 
(
	[MaChuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCongCV]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCongCV](
	[MaCViec] [int] IDENTITY(1,1) NOT NULL,
	[NgayBD] [date] NULL,
	[TaiXe] [int] NULL,
	[TiepVien] [int] NULL,
	[BSX] [nchar](10) NULL,
 CONSTRAINT [PK_PhanCongCV] PRIMARY KEY CLUSTERED 
(
	[MaCViec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCongGhe]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCongGhe](
	[IDGhe] [int] IDENTITY(1,1) NOT NULL,
	[ViTriNgoi] [nchar](3) NOT NULL,
	[TrangThai] [int] NULL,
	[MaChuyen] [int] NOT NULL,
 CONSTRAINT [PK_PhanCongGhe] PRIMARY KEY CLUSTERED 
(
	[IDGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TuyenDuong]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenDuong](
	[MaTD] [nchar](20) NOT NULL,
	[BenDi] [nvarchar](50) NULL,
	[BenDen] [nvarchar](50) NULL,
	[ThoiGian] [float] NULL,
	[QuangDuong] [int] NULL,
 CONSTRAINT [PK_TuyenDuong] PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaDH] [int] NOT NULL,
	[MaHK] [int] NOT NULL,
	[IDGhe] [int] NOT NULL,
	[VitriNgoi] [nchar](3) NOT NULL,
 CONSTRAINT [PK_VeXe] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaHK] ASC,
	[IDGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[XeKhach]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeKhach](
	[BSX] [nchar](10) NOT NULL,
	[SoHang] [int] NULL,
	[SoCot] [int] NULL,
	[MaLoaiXe] [nvarchar](10) NULL,
 CONSTRAINT [PK_XeKhach] PRIMARY KEY CLUSTERED 
(
	[BSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_TuyenDuong]    Script Date: 10/10/2018 11:16:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_TuyenDuong]
AS
SELECT        dbo.TuyenDuong.MaTD, dbo.TuyenDuong.BenDi, dbo.TuyenDuong.BenDen, dbo.TuyenDuong.ThoiGian, dbo.TuyenDuong.QuangDuong, dbo.GiaVe.Gia, dbo.GiaVe.NgayBD
FROM            dbo.GiaVe INNER JOIN
                         dbo.TuyenDuong ON dbo.GiaVe.MaTD = dbo.TuyenDuong.MaTD


GO
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'NHANVIEN  ', N'Nhân Viên nhập liệu')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'QUANLI    ', N'Quản Lí')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'TAIXE     ', N'Tài Xế')
INSERT [dbo].[ChucVu] ([MaChucVu], [TenChucVu]) VALUES (N'TIEPVIEN  ', N'Tiếp Viên')
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [Soluongve], [TongTien], [HinhThuc], [TrangThai], [NgayDH], [MaHK], [MaPC]) VALUES (14005, 1, 300000, 0, 1, CAST(0x963E0B00 AS Date), 12, 4012)
INSERT [dbo].[DonHang] ([MaDH], [Soluongve], [TongTien], [HinhThuc], [TrangThai], [NgayDH], [MaHK], [MaPC]) VALUES (14006, 1, 300000, 1, 3, CAST(0x963E0B00 AS Date), 12, 4012)
INSERT [dbo].[DonHang] ([MaDH], [Soluongve], [TongTien], [HinhThuc], [TrangThai], [NgayDH], [MaHK], [MaPC]) VALUES (14007, 1, 250000, 0, 1, CAST(0x963E0B00 AS Date), 1012, 4014)
INSERT [dbo].[DonHang] ([MaDH], [Soluongve], [TongTien], [HinhThuc], [TrangThai], [NgayDH], [MaHK], [MaPC]) VALUES (15007, 10, 2500000, 0, 1, CAST(0x963E0B00 AS Date), 2012, 5014)
INSERT [dbo].[DonHang] ([MaDH], [Soluongve], [TongTien], [HinhThuc], [TrangThai], [NgayDH], [MaHK], [MaPC]) VALUES (15008, 5, 1250000, 1, 1, CAST(0x963E0B00 AS Date), 2012, 5014)
INSERT [dbo].[DonHang] ([MaDH], [Soluongve], [TongTien], [HinhThuc], [TrangThai], [NgayDH], [MaHK], [MaPC]) VALUES (16007, 2, 600000, 1, 1, CAST(0x973E0B00 AS Date), 2012, 4012)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
INSERT [dbo].[GiaVe] ([MaTD], [Gia], [NgayBD]) VALUES (N'3yyi                ', 100000, CAST(0x973E0B00 AS Date))
INSERT [dbo].[GiaVe] ([MaTD], [Gia], [NgayBD]) VALUES (N'3yyi                ', 50000, CAST(0x9D3E0B00 AS Date))
INSERT [dbo].[GiaVe] ([MaTD], [Gia], [NgayBD]) VALUES (N'DAKLAK-SAIGON       ', 300000, CAST(0x963E0B00 AS Date))
INSERT [dbo].[GiaVe] ([MaTD], [Gia], [NgayBD]) VALUES (N'SAIGON-DALAT        ', 250000, CAST(0x963E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[HanhKhach] ON 

INSERT [dbo].[HanhKhach] ([MaHK], [LGName], [TenHK], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau]) VALUES (12, N'NgocThuy                                                                                            ', N'Nguyễn Thị Ngọc Thúy', N'231611235', CAST(0x03140B00 AS Date), N'Nữ ', N'ngocthuybd@gmail.com', N'0974014724 ', N'Hoài Nhơn - Bình Định', N'123                 ')
INSERT [dbo].[HanhKhach] ([MaHK], [LGName], [TenHK], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau]) VALUES (1012, N'ThuyNT                                                                                              ', N'Nguyễn Thị Thùy', N'241403425', CAST(0x6B1C0B00 AS Date), N'Nam', N'thuy110994@gmail.com', N'0986234506 ', N'Quận 10, Tp.Hồ Chí Minh', N'123                 ')
INSERT [dbo].[HanhKhach] ([MaHK], [LGName], [TenHK], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau]) VALUES (2012, N'BinhTam                                                                                             ', N'Nguyễn Bình Tâm', N'241511325', CAST(0x2D210B00 AS Date), N'Nam', N'binhtam0785@gmail.com', N'01634110366', N'Cưsuê, Cưm''gar, Daklak', N'123                 ')
SET IDENTITY_INSERT [dbo].[HanhKhach] OFF
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (N'GHN', N'Ghế Ngồi')
INSERT [dbo].[LoaiXe] ([MaLoaiXe], [TenLoaiXe]) VALUES (N'GIN', N'Giường Nằm')
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (2010, N'NguyenTrang', N'Nguyễn Thị Trang', N'241511325', CAST(0xA91F0B00 AS Date), N'Nữ ', N'nguyentrang091296@gmail.com', N'01634110366', N'Quận 10, Hồ chí minh', N'123                                               ', N'QUANLI    ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (2011, N'QuangThanh', N'Phạm Huỳnh Quang Thành', N'241311325', CAST(0xC9120B00 AS Date), N'Nam', N'quangthanh@gmail.com', N'0966886838 ', N'Tân túc,Bình Chánh, Tp.Hồ Chí Minh', N'123                                               ', N'TAIXE     ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (2012, N'NguyenNga', N'Nguyễn Thị Nga', N'235632565', CAST(0x56120B00 AS Date), N'Nữ ', N'nguyenNga@gmail.com', N'0935120406 ', N'Bình Thạnh, Tp.Hồ Chí Minh', N'123                                               ', N'TIEPVIEN  ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (2013, N'OanhDao', N'Đào Thị Oanh', N'235632565', CAST(0x1C1E0B00 AS Date), N'Nữ ', N'daothioanh123@gmail.com', N'0984979588 ', N'Tân Bình, Tp.Hồ Chí Minh', N'123                                               ', N'NHANVIEN  ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3010, N'NgocDung', N'Tạ Thị Ngọc Dung', N'265423568', CAST(0xFE1A0B00 AS Date), N'Nữ ', N'ngocdungtathi@gmail.com', N'0984979589 ', N'Bình Tân , Tp.Hồ Chí Minh', N'123                                               ', N'NHANVIEN  ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3011, N'TuanHao', N'Hoàng Tuấn Hào', N'265423568', CAST(0x1B0F0B00 AS Date), N'Nam', N'hoangtuanhao@gmail.com', N'0984985632 ', N'Quận 9 , Tp.Hồ Chí Minh', N'123                                               ', N'TAIXE     ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3012, N'ThanhVinh', N'Lê Thanh Vinh', N'265423568', CAST(0x1B0F0B00 AS Date), N'Nam', N'lethanhvinh@gmail.com', N'0903485632 ', N'Quận 2 , Tp.Hồ Chí Minh', N'123                                               ', N'TAIXE     ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3013, N'MinhQuy', N'Võ Minh Quý', N'265423568', CAST(0x1B0F0B00 AS Date), N'Nam', N'vominhquy@gmail.com', N'0903632598 ', N'Quận 5 , Tp.Hồ Chí Minh', N'123                                               ', N'TAIXE     ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3014, N'TuanAnh', N'Phạm Tuấn Anh', N'182356478', CAST(0xD4140B00 AS Date), N'Nam', N'phamtuananh@gmail.com', N'0903631365 ', N'Quận 7 , Tp.Hồ Chí Minh', N'123                                               ', N'TAIXE     ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3015, N'PhuongThanh', N'Đỗ Thị Phương Thanh', N'182356478', CAST(0x0D190B00 AS Date), N'Nữ ', N'phuongthanh@gmail.com', N'0903687415 ', N'Quận 12, Tp.Hồ Chí Minh', N'123                                               ', N'TIEPVIEN  ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3016, N'MinhHieu', N'Lê Thị Minh Hiếu', N'261325648', CAST(0x09230B00 AS Date), N'Nữ ', N'minhhieu99@gmail.com', N'01659748145', N'Phù Cát - Bình Định', N'123                                               ', N'TIEPVIEN  ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3017, N'TruongLe', N'Lê Thị Trường', N'201513624', CAST(0xFDED0A00 AS Date), N'Nữ ', N'truongle123@gmail.com', N'01632564366', N'Cưsuê, Cưm''gar, Daklak', N'123                                               ', N'QUANLI    ')
INSERT [dbo].[NhanVien] ([MaNV], [LGName], [TenNV], [CMND], [NgaySinh], [GioiTinh], [Email], [SDT], [DiaChi], [MatKhau], [MaChucVu]) VALUES (3018, N'GiaoLinh', N'Âu Thị Giao Linh', N'265489723', CAST(0xD2180B00 AS Date), N'Nữ ', N'giaoLinh@gmail.com', N'0986325601 ', N'Quận 8, Tp.Hồ Chí Minh', N'123                                               ', N'TIEPVIEN  ')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
SET IDENTITY_INSERT [dbo].[PhanCongChuyen] ON 

INSERT [dbo].[PhanCongChuyen] ([MaChuyen], [MaTD], [BSX], [NgayLap], [NgayKH], [GioKH], [TrangThai], [SoVeCL]) VALUES (4012, N'DAKLAK-SAIGON       ', N'47A1-42140', CAST(0x963E0B00 AS Date), CAST(0x9C3E0B00 AS Date), CAST(0x0200F22B00000000 AS Time), 0, 29)
INSERT [dbo].[PhanCongChuyen] ([MaChuyen], [MaTD], [BSX], [NgayLap], [NgayKH], [GioKH], [TrangThai], [SoVeCL]) VALUES (4013, N'SAIGON-DALAT        ', N'51B-203698', CAST(0x963E0B00 AS Date), CAST(0x9A3E0B00 AS Date), CAST(0x0200F22B00000000 AS Time), 1, 30)
INSERT [dbo].[PhanCongChuyen] ([MaChuyen], [MaTD], [BSX], [NgayLap], [NgayKH], [GioKH], [TrangThai], [SoVeCL]) VALUES (4014, N'SAIGON-DALAT        ', N'55B-170296', CAST(0x963E0B00 AS Date), CAST(0x9D3E0B00 AS Date), CAST(0x0200F22B00000000 AS Time), 0, 29)
INSERT [dbo].[PhanCongChuyen] ([MaChuyen], [MaTD], [BSX], [NgayLap], [NgayKH], [GioKH], [TrangThai], [SoVeCL]) VALUES (5014, N'SAIGON-DALAT        ', N'51B-203698', CAST(0x963E0B00 AS Date), CAST(0x9D3E0B00 AS Date), CAST(0x0200F22B00000000 AS Time), 0, 20)
INSERT [dbo].[PhanCongChuyen] ([MaChuyen], [MaTD], [BSX], [NgayLap], [NgayKH], [GioKH], [TrangThai], [SoVeCL]) VALUES (6014, N'3yyi                ', N'47A1-42140', CAST(0x973E0B00 AS Date), CAST(0x9F3E0B00 AS Date), CAST(0x0200F22B00000000 AS Time), 0, 30)
SET IDENTITY_INSERT [dbo].[PhanCongChuyen] OFF
SET IDENTITY_INSERT [dbo].[PhanCongCV] ON 

INSERT [dbo].[PhanCongCV] ([MaCViec], [NgayBD], [TaiXe], [TiepVien], [BSX]) VALUES (1004, CAST(0x943E0B00 AS Date), 2011, 2012, N'47A1-42140')
INSERT [dbo].[PhanCongCV] ([MaCViec], [NgayBD], [TaiXe], [TiepVien], [BSX]) VALUES (1005, CAST(0x943E0B00 AS Date), 3011, 3015, N'51B-08949 ')
INSERT [dbo].[PhanCongCV] ([MaCViec], [NgayBD], [TaiXe], [TiepVien], [BSX]) VALUES (1006, CAST(0x943E0B00 AS Date), 3012, 3016, N'51B-203698')
INSERT [dbo].[PhanCongCV] ([MaCViec], [NgayBD], [TaiXe], [TiepVien], [BSX]) VALUES (1007, CAST(0x943E0B00 AS Date), 3013, 3018, N'51B-91196 ')
INSERT [dbo].[PhanCongCV] ([MaCViec], [NgayBD], [TaiXe], [TiepVien], [BSX]) VALUES (1008, CAST(0x963E0B00 AS Date), 3011, 2012, N'55B-170296')
INSERT [dbo].[PhanCongCV] ([MaCViec], [NgayBD], [TaiXe], [TiepVien], [BSX]) VALUES (1009, CAST(0x963E0B00 AS Date), 3012, 3016, N'51B-68975 ')
SET IDENTITY_INSERT [dbo].[PhanCongCV] OFF
SET IDENTITY_INSERT [dbo].[PhanCongGhe] ON 

INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3121, N'A1 ', 1, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3122, N'A2 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3123, N'A3 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3124, N'A4 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3125, N'A5 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3126, N'B1 ', 1, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3127, N'B2 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3128, N'B3 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3129, N'B4 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3130, N'B5 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3131, N'C1 ', 1, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3132, N'C2 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3133, N'C3 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3134, N'C4 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3135, N'C5 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3136, N'D1 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3137, N'D2 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3138, N'D3 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3139, N'D4 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3140, N'D5 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3141, N'E1 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3142, N'E2 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3143, N'E3 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3144, N'E4 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3145, N'E5 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3146, N'F1 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3147, N'F2 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3148, N'F3 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3149, N'F4 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3150, N'F5 ', 0, 4012)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3151, N'A1 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3152, N'A2 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3153, N'A3 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3154, N'A4 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3155, N'A5 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3156, N'B1 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3157, N'B2 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3158, N'B3 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3159, N'B4 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3160, N'B5 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3161, N'C1 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3162, N'C2 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3163, N'C3 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3164, N'C4 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3165, N'C5 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3166, N'D1 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3167, N'D2 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3168, N'D3 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3169, N'D4 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3170, N'D5 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3171, N'E1 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3172, N'E2 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3173, N'E3 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3174, N'E4 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3175, N'E5 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3176, N'F1 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3177, N'F2 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3178, N'F3 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3179, N'F4 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3180, N'F5 ', 0, 4013)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3181, N'A1 ', 1, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3182, N'A2 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3183, N'A3 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3184, N'A4 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3185, N'A5 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3186, N'B1 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3187, N'B2 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3188, N'B3 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3189, N'B4 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3190, N'B5 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3191, N'C1 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3192, N'C2 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3193, N'C3 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3194, N'C4 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3195, N'C5 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3196, N'D1 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3197, N'D2 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3198, N'D3 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3199, N'D4 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3200, N'D5 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3201, N'E1 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3202, N'E2 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3203, N'E3 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3204, N'E4 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3205, N'E5 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3206, N'F1 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3207, N'F2 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3208, N'F3 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3209, N'F4 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (3210, N'F5 ', 0, 4014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4181, N'A1 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4182, N'A2 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4183, N'A3 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4184, N'A4 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4185, N'A5 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4186, N'B1 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4187, N'B2 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4188, N'B3 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4189, N'B4 ', 1, 5014)
GO
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4190, N'B5 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4191, N'C1 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4192, N'C2 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4193, N'C3 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4194, N'C4 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4195, N'C5 ', 1, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4196, N'D1 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4197, N'D2 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4198, N'D3 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4199, N'D4 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4200, N'D5 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4201, N'E1 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4202, N'E2 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4203, N'E3 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4204, N'E4 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4205, N'E5 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4206, N'F1 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4207, N'F2 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4208, N'F3 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4209, N'F4 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (4210, N'F5 ', 0, 5014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5181, N'A1 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5182, N'A2 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5183, N'A3 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5184, N'A4 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5185, N'A5 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5186, N'B1 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5187, N'B2 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5188, N'B3 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5189, N'B4 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5190, N'B5 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5191, N'C1 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5192, N'C2 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5193, N'C3 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5194, N'C4 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5195, N'C5 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5196, N'D1 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5197, N'D2 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5198, N'D3 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5199, N'D4 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5200, N'D5 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5201, N'E1 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5202, N'E2 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5203, N'E3 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5204, N'E4 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5205, N'E5 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5206, N'F1 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5207, N'F2 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5208, N'F3 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5209, N'F4 ', 0, 6014)
INSERT [dbo].[PhanCongGhe] ([IDGhe], [ViTriNgoi], [TrangThai], [MaChuyen]) VALUES (5210, N'F5 ', 0, 6014)
SET IDENTITY_INSERT [dbo].[PhanCongGhe] OFF
INSERT [dbo].[TuyenDuong] ([MaTD], [BenDi], [BenDen], [ThoiGian], [QuangDuong]) VALUES (N'3yyi                ', N'ben dinh', N'th', 14, 223)
INSERT [dbo].[TuyenDuong] ([MaTD], [BenDi], [BenDen], [ThoiGian], [QuangDuong]) VALUES (N'DAKLAK-SAIGON       ', N'DakLak', N'Sai Gon', 8, 380)
INSERT [dbo].[TuyenDuong] ([MaTD], [BenDi], [BenDen], [ThoiGian], [QuangDuong]) VALUES (N'SAIGON-DALAT        ', N'Sai Gon', N'Da Lat', 8, 380)
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (14005, 12, 3121, N'A1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (14006, 12, 3126, N'B1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (14007, 1012, 3181, N'A1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4181, N'A1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4182, N'A2 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4183, N'A3 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4184, N'A4 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4185, N'A5 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4186, N'B1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4187, N'B2 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4188, N'B3 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4189, N'B4 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15007, 2012, 4190, N'B5 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15008, 2012, 4191, N'C1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15008, 2012, 4192, N'C2 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15008, 2012, 4193, N'C3 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15008, 2012, 4194, N'C4 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (15008, 2012, 4195, N'C5 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (16007, 2012, 3126, N'B1 ')
INSERT [dbo].[VeXe] ([MaDH], [MaHK], [IDGhe], [VitriNgoi]) VALUES (16007, 2012, 3131, N'C1 ')
INSERT [dbo].[XeKhach] ([BSX], [SoHang], [SoCot], [MaLoaiXe]) VALUES (N'47A1-42140', 5, 6, N'GIN')
INSERT [dbo].[XeKhach] ([BSX], [SoHang], [SoCot], [MaLoaiXe]) VALUES (N'51B-08949 ', 5, 4, N'GHN')
INSERT [dbo].[XeKhach] ([BSX], [SoHang], [SoCot], [MaLoaiXe]) VALUES (N'51B-203698', 5, 6, N'GIN')
INSERT [dbo].[XeKhach] ([BSX], [SoHang], [SoCot], [MaLoaiXe]) VALUES (N'51B-68975 ', 5, 6, N'GIN')
INSERT [dbo].[XeKhach] ([BSX], [SoHang], [SoCot], [MaLoaiXe]) VALUES (N'51B-91196 ', 5, 2, N'GIN')
INSERT [dbo].[XeKhach] ([BSX], [SoHang], [SoCot], [MaLoaiXe]) VALUES (N'55B-170296', 5, 6, N'GIN')
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_HanhKhach] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HanhKhach] ([MaHK])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_HanhKhach]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_PhanCongXK] FOREIGN KEY([MaPC])
REFERENCES [dbo].[PhanCongChuyen] ([MaChuyen])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_PhanCongXK]
GO
ALTER TABLE [dbo].[GiaVe]  WITH CHECK ADD  CONSTRAINT [FK_GiaVe_TuyenDuong] FOREIGN KEY([MaTD])
REFERENCES [dbo].[TuyenDuong] ([MaTD])
GO
ALTER TABLE [dbo].[GiaVe] CHECK CONSTRAINT [FK_GiaVe_TuyenDuong]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[PhanCongChuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongChuyen_TuyenDuong] FOREIGN KEY([MaTD])
REFERENCES [dbo].[TuyenDuong] ([MaTD])
GO
ALTER TABLE [dbo].[PhanCongChuyen] CHECK CONSTRAINT [FK_PhanCongChuyen_TuyenDuong]
GO
ALTER TABLE [dbo].[PhanCongChuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongXK_XeKhach] FOREIGN KEY([BSX])
REFERENCES [dbo].[XeKhach] ([BSX])
GO
ALTER TABLE [dbo].[PhanCongChuyen] CHECK CONSTRAINT [FK_PhanCongXK_XeKhach]
GO
ALTER TABLE [dbo].[PhanCongCV]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongCV_NhanVien] FOREIGN KEY([TaiXe])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCongCV] CHECK CONSTRAINT [FK_PhanCongCV_NhanVien]
GO
ALTER TABLE [dbo].[PhanCongCV]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongCV_NhanVien1] FOREIGN KEY([TiepVien])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCongCV] CHECK CONSTRAINT [FK_PhanCongCV_NhanVien1]
GO
ALTER TABLE [dbo].[PhanCongCV]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongCV_XeKhach] FOREIGN KEY([BSX])
REFERENCES [dbo].[XeKhach] ([BSX])
GO
ALTER TABLE [dbo].[PhanCongCV] CHECK CONSTRAINT [FK_PhanCongCV_XeKhach]
GO
ALTER TABLE [dbo].[PhanCongGhe]  WITH CHECK ADD  CONSTRAINT [FK_PhanCongGhe_PhanCongXK] FOREIGN KEY([MaChuyen])
REFERENCES [dbo].[PhanCongChuyen] ([MaChuyen])
GO
ALTER TABLE [dbo].[PhanCongGhe] CHECK CONSTRAINT [FK_PhanCongGhe_PhanCongXK]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_DonHang]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_HanhKhach] FOREIGN KEY([MaHK])
REFERENCES [dbo].[HanhKhach] ([MaHK])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_HanhKhach]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_PhanCongGhe] FOREIGN KEY([IDGhe])
REFERENCES [dbo].[PhanCongGhe] ([IDGhe])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_PhanCongGhe]
GO
ALTER TABLE [dbo].[XeKhach]  WITH CHECK ADD  CONSTRAINT [FK_XeKhach_LoaiXe] FOREIGN KEY([MaLoaiXe])
REFERENCES [dbo].[LoaiXe] ([MaLoaiXe])
GO
ALTER TABLE [dbo].[XeKhach] CHECK CONSTRAINT [FK_XeKhach_LoaiXe]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [DonHang_TrangThai_C] CHECK  (([TrangThai]=(0) OR [TrangThai]=(1) OR [TrangThai]=(2) OR [TrangThai]=(3)))
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [DonHang_TrangThai_C]
GO
ALTER TABLE [dbo].[HanhKhach]  WITH CHECK ADD  CONSTRAINT [HanhKhach_GioiTinh_C] CHECK  (([GioiTinh]=N'Nam' OR [GioiTinh]=N'Nữ'))
GO
ALTER TABLE [dbo].[HanhKhach] CHECK CONSTRAINT [HanhKhach_GioiTinh_C]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [NhanVien_GioiTinh_C] CHECK  (([GioiTinh]=N'Nam' OR [GioiTinh]=N'Nữ'))
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [NhanVien_GioiTinh_C]
GO
ALTER TABLE [dbo].[PhanCongGhe]  WITH CHECK ADD  CONSTRAINT [SinhVien_TrangThai_C] CHECK  (([TrangThai]=(0) OR [TrangThai]=(1) OR [TrangThai]=(2) OR [TrangThai]=(3)))
GO
ALTER TABLE [dbo].[PhanCongGhe] CHECK CONSTRAINT [SinhVien_TrangThai_C]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1: "Oline" , 0: "Trực Tiếp"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DonHang', @level2type=N'COLUMN',@level2name=N'HinhThuc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0: "Chưa Thanh Toán", 1 : "Đã Thanh Toán", 2: "Đã Hủy" ,3:"Bị Hủy"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DonHang', @level2type=N'COLUMN',@level2name=N'TrangThai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:"Đang bán vé", 1 : "Đã Hủy", 2 :"Hoàn tất"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhanCongChuyen', @level2type=N'COLUMN',@level2name=N'TrangThai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:"Còn trống" , 1: "Đã đặt", 2:"Bị Hỏng" , 3: "Đang chờ"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PhanCongGhe', @level2type=N'COLUMN',@level2name=N'TrangThai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GiaVe"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TuyenDuong"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_TuyenDuong'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_TuyenDuong'
GO
USE [master]
GO
ALTER DATABASE [NHAXE] SET  READ_WRITE 
GO
