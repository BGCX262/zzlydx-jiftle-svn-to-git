
            
create database lydxDB
on 
(name = lydxDB,
filename = 'D:\wwwroot\zzlydx\zzlydx\App_Data\lydxDB.mdf')
log on 
(name = lydxDB_Log,
filename = 'D:\wwwroot\zzlydx\zzlydx\App_Data\lydxDB.ldf') 

--drop database lydxDB

use lydxDB

--[dsznfmjlb];
if exists (select 1 from sysobjects where id = object_id(N'[dsznfmjlb]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dsznfmjlb];
CREATE TABLE [dsznfmjlb] (
      [name] nchar(40) NULL,
      [idcode] nchar(20) NULL,
      [sex] smallint NULL,
      [birthday] datetime NULL,
      [location] nchar(80) NULL,
      [locationcode] nchar(14) NULL,
      [poname] nchar(40) NULL,
      [poldcode] nchar(20) NULL,
      [onechildcardcode] nchar(20) NULL,
      [childbirthday] datetime NULL,
      [childsex] smallint NULL,
      [paydate] datetime NULL,
      [paynum] float NULL,
      [isoldinsure] smallint NULL,
      [lushi] smallint NULL,
      [lushidate] datetime NULL,
      [shenghe] smallint NULL,
      [shengheren] nchar(40) NULL,
      [shenghedate] datetime NULL,
      [shenghenoreason] nchar(256) NULL,
      [familycode] nchar(8) NULL,
      [familystaticcode] nchar(36) NULL,
      [unitname] nchar(64) NULL,
      [unitxingzhi] smallint NULL,
      [username] nchar(40) NULL,
      [inputdate] datetime NULL)
      
      
      --[ncjlfz];
if exists (select 1 from sysobjects where id = object_id(N'[ncjlfz]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [ncjlfz];
CREATE TABLE [ncjlfz] (
      [name] nchar(40) NULL,
      [idcode] nchar(20) NULL,
      [sex] smallint NULL,
      [birthday] datetime NULL,
      [location] nchar(80) NULL,
      [locationcode] nchar(14) NULL,
      [hukoutype] smallint NULL,
      [childtype] smallint NULL,
      [poname] nchar(40) NULL,
      [poldcode] nchar(20) NULL,
      [pobirthday] datetime NULL,
      [paydate] datetime NULL,
      [paynum] float NULL,
      [lushi] smallint NULL,
      [lushidate] datetime NULL,
      [shenghe] smallint NULL,
      [shengheren] nchar(40) NULL,
      [shenghedate] datetime NULL,
      [shenghenoreason] nchar(256) NULL,
      [familycode] nchar(8) NULL,
      [username] nchar(40) NULL,
      [inputdate] datetime NULL)
      
--[Users];
if exists (select 1 from sysobjects where id = object_id(N'[Users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [Users];
CREATE TABLE [Users] (
      [UID] int IDENTITY(1, 1) NOT NULL,
      [Name] varchar(50) NOT NULL,
      [UserName] varchar(64) NULL,
      [Password] varchar(50) NOT NULL);
ALTER TABLE [Users] WITH NOCHECK ADD CONSTRAINT [PK_User] PRIMARY KEY  CLUSTERED ([UID])  ON [PRIMARY]

--[xingqucode];
if exists (select 1 from sysobjects where id = object_id(N'[xingqucode]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [xingqucode];
CREATE TABLE [xingqucode] (
      [level] smallint NULL,
      [name] nchar(32) NULL,
      [code] nchar(4) NULL)
      
--[xuhao];
if exists (select 1 from sysobjects where id = object_id(N'[xuhao]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [xuhao];
CREATE TABLE [xuhao] (
      [familycode] bigint NULL)
      
      