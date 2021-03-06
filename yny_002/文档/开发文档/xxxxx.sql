USE [master]
GO
/****** Object:  Database [yny_002]    Script Date: 11/25/2017 17:40:09 ******/
CREATE DATABASE [yny_002] ON  PRIMARY 
( NAME = N'yny_002', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\yny_002.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yny_002_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\yny_002_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yny_002] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yny_002].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yny_002] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [yny_002] SET ANSI_NULLS OFF
GO
ALTER DATABASE [yny_002] SET ANSI_PADDING OFF
GO
ALTER DATABASE [yny_002] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [yny_002] SET ARITHABORT OFF
GO
ALTER DATABASE [yny_002] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [yny_002] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [yny_002] SET AUTO_SHRINK ON
GO
ALTER DATABASE [yny_002] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [yny_002] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [yny_002] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [yny_002] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [yny_002] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [yny_002] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [yny_002] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [yny_002] SET  DISABLE_BROKER
GO
ALTER DATABASE [yny_002] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [yny_002] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [yny_002] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [yny_002] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [yny_002] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [yny_002] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [yny_002] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [yny_002] SET  READ_WRITE
GO
ALTER DATABASE [yny_002] SET RECOVERY FULL
GO
ALTER DATABASE [yny_002] SET  MULTI_USER
GO
ALTER DATABASE [yny_002] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [yny_002] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'yny_002', N'ON'
GO
USE [yny_002]
GO
/****** Object:  Table [dbo].[Reward]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reward](
	[RewardType] [varchar](50) NOT NULL,
	[RewardName] [varchar](50) NULL,
	[RewardState] [bit] NULL,
	[NeedProcess] [bit] NULL,
	[RewardIndex] [int] NULL,
 CONSTRAINT [PK_RewradType] PRIMARY KEY CLUSTERED 
(
	[RewardType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'CZ', N'充值', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'DH', N'兑换', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'MCW', N'', 0, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'MGP', N'', 0, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'MHB', N'奖金币', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'MJB', N'现金币', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_BFWZ', N'备份网站', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_CZ', N'充值', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_JTFH', N'静态分红', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_SHTX', N'审核提现', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_SHXXHK', N'审核线下汇款', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_SJHY', N'升级会员', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_XGHYZL', N'修改会员资料', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_XGJJCS', N'修改奖金参数', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'O_XGZL', N'修改资料', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'R_LD', N'领导奖', 1, 1, 3)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'R_RFH', N'日分红', 1, 1, 1)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'R_TJ', N'推荐奖', 1, 1, 2)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'SH', N'激活', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'SJ', N'升级', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'TX', N'提现', 1, 0, NULL)
INSERT [dbo].[Reward] ([RewardType], [RewardName], [RewardState], [NeedProcess], [RewardIndex]) VALUES (N'ZZ', N'转账', 1, 0, NULL)
/****** Object:  Table [dbo].[ReceiveInfo]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReceiveInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Zone] [nvarchar](50) NULL,
	[Tel] [varchar](20) NULL,
	[Receiver] [varchar](20) NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
	[IsMain] [bit] NULL,
	[ZipCode] [nchar](10) NULL,
 CONSTRAINT [PK_ReceiveInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ZFHTable]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ZFHTable](
	[AllRewardStr] [varchar](max) NOT NULL,
	[E_JQFHFloat] [decimal](18, 4) NOT NULL,
	[beginTime] [datetime] NOT NULL,
	[FHMoney] [decimal](18, 4) NOT NULL,
	[FHState] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ZFHTable] ([AllRewardStr], [E_JQFHFloat], [beginTime], [FHMoney], [FHState]) VALUES (N'R_CP(层奖),R_LP(量碰),R_LD(领导奖),R_JQFH(加权分红)', CAST(1.5000 AS Decimal(18, 4)), CAST(0x0000A70400000000 AS DateTime), CAST(100.0000 AS Decimal(18, 4)), 0)
/****** Object:  Table [dbo].[WebSetInfo]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebSetInfo](
	[WebState] [bit] NULL,
	[WebTitle] [nvarchar](255) NULL,
	[WKeyword] [nvarchar](255) NULL,
	[WDescription] [nvarchar](255) NULL,
	[WCopyright] [nvarchar](255) NULL,
	[OpenTimeStr] [varchar](100) NULL,
	[CloseInfo] [nvarchar](255) NULL,
	[TXInfo] [nvarchar](255) NULL,
	[HKInfo] [nvarchar](2550) NULL,
	[PageSize] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WebSetInfo] ([WebState], [WebTitle], [WKeyword], [WDescription], [WCopyright], [OpenTimeStr], [CloseInfo], [TXInfo], [HKInfo], [PageSize]) VALUES (1, N'鼎盛资本', N'鼎盛资本', N'鼎盛资本', N'Copyright © 2011 - 2025AMT  鼎盛资本', N'00:00-23:59;', N'尊敬的会员，现在是平台例行维护时间（1分钟），请稍候...', N'注：为保证个人资金安全，提现需提供二级密码。 提现48小时内到账，每日可进行一次提现操作！', N'', 20)
/****** Object:  Table [dbo].[WebBase]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WebBase](
	[SMSState] [bit] NULL,
	[SMSName] [varchar](50) NULL,
	[SMSPassword] [varchar](50) NULL,
	[TelVerify] [bit] NULL,
	[SMSTitle] [varchar](50) NULL,
	[MonitorTel] [varchar](50) NULL,
	[SMSMinCount] [int] NULL,
	[EmailSmtp] [varchar](50) NULL,
	[EmailName] [varchar](50) NULL,
	[EmailPassword] [varchar](50) NULL,
	[EmailTitle] [varchar](50) NULL,
	[EmailVerify] [bit] NULL,
	[EmailState] [bit] NULL,
	[DaySMSCount] [int] NULL,
	[RandPassword] [bit] NULL,
	[MonitorEmail] [varchar](50) NULL,
	[AutoID] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[WebBase] ([SMSState], [SMSName], [SMSPassword], [TelVerify], [SMSTitle], [MonitorTel], [SMSMinCount], [EmailSmtp], [EmailName], [EmailPassword], [EmailTitle], [EmailVerify], [EmailState], [DaySMSCount], [RandPassword], [MonitorEmail], [AutoID]) VALUES (1, N'zx326', N'123yangliu', 0, N'', N'', 100, N'mail.vdoms.com', N'notice@vdoms.com', N'a1b1c1d1', N'您在Vinci上的用户密码重置邮件！', 0, 1, 100, 0, N'@qq.com', 1)
/****** Object:  Table [dbo].[QuitRecord]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuitRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[EnterTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[TXMoney] [decimal](18, 2) NOT NULL,
	[InvestMoney] [decimal](18, 2) NOT NULL,
	[CompleteTime] [datetime] NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_QuitRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[P_AspNetPage]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[P_AspNetPage]
/*
nzperfect [no_mIss] 高效通用分页存储过程(双向检索) 2007.5.7   QQ:34813284
敬告：适用于单一主键或存在唯一值列的表或视图
ps:Sql语句为8000字节,调用时请注意传入参数及sql总长度不要超过指定范围
*/
@TableName VARCHAR(200),      --表名
@FieldList VARCHAR(2000),     --显示列名，如果是全部字段则为*
@PrimaryKey VARCHAR(100),     --单一主键或唯一值键
@Where VARCHAR(2000),         --查询条件 不含'where'字符，如id>10 and len(userid)>9
@Order VARCHAR(1000),         --排序 不含'order by'字符，如id asc,userid desc，必须指定asc或desc
--注意当@SortType=3时生效，记住一定要在最后加上主键，否则会让你比较郁闷
@SortType INT,                --排序规则 1:正序asc 2:倒序desc 3:多列排序方法
@RecorderCount INT,           --记录总数 0:会返回总记录
@PageSize INT,                --每页输出的记录数
@PageIndex INT,               --当前页数
@TotalCount INT OUTPUT,       --记返回总记录
@TotalPageCount INT OUTPUT    --返回总页数
AS
SET NOCOUNT ON
IF ISNULL(@TotalCount,'') = '' SET @TotalCount = 0
SET @Order = RTRIM(LTRIM(@Order))
SET @PrimaryKey = RTRIM(LTRIM(@PrimaryKey))
SET @FieldList = REPLACE(RTRIM(LTRIM(@FieldList)),' ','')
WHILE CHARINDEX(', ',@Order) > 0 OR CHARINDEX(' ,',@Order) > 0
BEGIN
SET @Order = REPLACE(@Order,', ',',')
SET @Order = REPLACE(@Order,' ,',',')
END
IF ISNULL(@TableName,'') = '' OR ISNULL(@FieldList,'') = ''
OR ISNULL(@PrimaryKey,'') = ''
OR @SortType < 1 OR @SortType >3
OR @RecorderCount   < 0 OR @PageSize < 0 OR @PageIndex < 0
BEGIN
PRINT('ERR_00')
RETURN
END
IF @SortType = 3
BEGIN
IF (UPPER(RIGHT(@Order,4))!=' ASC' AND UPPER(RIGHT(@Order,5))!=' DESC')
BEGIN PRINT('ERR_02') RETURN END
END
DECLARE @new_where1 VARCHAR(1000)
DECLARE @new_where2 VARCHAR(1000)
DECLARE @new_order1 VARCHAR(1000)
DECLARE @new_order2 VARCHAR(1000)
DECLARE @new_order3 VARCHAR(1000)
DECLARE @Sql VARCHAR(8000)
DECLARE @SqlCount NVARCHAR(4000)
IF ISNULL(@where,'') = ''
BEGIN
SET @new_where1 = ' '
SET @new_where2 = ' WHERE   '
END
ELSE
BEGIN
SET @new_where1 = ' WHERE ' + @where
SET @new_where2 = ' WHERE ' + @where + ' AND '
END
IF ISNULL(@order,'') = '' OR @SortType = 1   OR @SortType = 2
BEGIN
IF @SortType = 1
BEGIN
SET @new_order1 = ' ORDER BY ' + @PrimaryKey + ' ASC'
SET @new_order2 = ' ORDER BY ' + @PrimaryKey + ' DESC'
END
IF @SortType = 2
BEGIN
SET @new_order1 = ' ORDER BY ' + @PrimaryKey + ' DESC'
SET @new_order2 = ' ORDER BY ' + @PrimaryKey + ' ASC'
END
END
ELSE
BEGIN
SET @new_order1 = ' ORDER BY ' + @Order
END
IF @SortType = 3 AND   CHARINDEX(','+@PrimaryKey+' ',','+@Order)>0
BEGIN
SET @new_order1 = ' ORDER BY ' + @Order
SET @new_order2 = @Order + ','
SET @new_order2 = REPLACE(REPLACE(@new_order2,'ASC,','{ASC},'),'DESC,','{DESC},')
SET @new_order2 = REPLACE(REPLACE(@new_order2,'{ASC},','DESC,'),'{DESC},','ASC,')
SET @new_order2 = ' ORDER BY ' + SUBSTRING(@new_order2,1,LEN(@new_order2)-1)
IF @FieldList <> '*'
BEGIN
SET @new_order3 = REPLACE(REPLACE(@Order + ',','ASC,',','),'DESC,',',')
SET @FieldList = ',' + @FieldList
WHILE CHARINDEX(',',@new_order3)>0
BEGIN
IF CHARINDEX(SUBSTRING(','+@new_order3,1,CHARINDEX(',',@new_order3)),','+@FieldList+',')>0
BEGIN
SET @FieldList =
@FieldList + ',' + SUBSTRING(@new_order3,1,CHARINDEX(',',@new_order3))
END
SET @new_order3 =
SUBSTRING(@new_order3,CHARINDEX(',',@new_order3)+1,LEN(@new_order3))
END
SET @FieldList = SUBSTRING(@FieldList,2,LEN(@FieldList))
END
END
SET @SqlCount = 'SELECT @TotalCount=COUNT(*),@TotalPageCount=CEILING((COUNT(*)+0.0)/'
+ CAST(@PageSize AS VARCHAR)+') FROM ' + @TableName + @new_where1
IF @RecorderCount   = 0
BEGIN
EXEC SP_EXECUTESQL @SqlCount,N'@TotalCount INT OUTPUT,@TotalPageCount INT OUTPUT',
@TotalCount OUTPUT,@TotalPageCount OUTPUT
END
ELSE
BEGIN
SELECT @TotalCount = @RecorderCount
END
IF @PageIndex > CEILING((@TotalCount+0.0)/@PageSize)
BEGIN
SET @PageIndex =   CEILING((@TotalCount+0.0)/@PageSize)
END
IF @PageIndex = 1 OR @PageIndex >= CEILING((@TotalCount+0.0)/@PageSize)
BEGIN
IF @PageIndex = 1 --返回第一页数据
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM '
+ @TableName + @new_where1 + @new_order1
END
IF @PageIndex >= CEILING((@TotalCount+0.0)/@PageSize)   --返回最后一页数据
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ('
+ 'SELECT TOP ' + STR(ABS(@PageSize*@PageIndex-@TotalCount-@PageSize))
+ ' ' + @FieldList + ' FROM '
+ @TableName + @new_where1 + @new_order2 + ' ) AS TMP '
+ @new_order1
END
END
ELSE
BEGIN
IF @SortType = 1   --仅主键正序排序
BEGIN
IF @PageIndex <= CEILING((@TotalCount+0.0)/@PageSize)/2   --正向检索
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM '
+ @TableName + @new_where2 + @PrimaryKey + ' > '
+ '(SELECT MAX(' + @PrimaryKey + ') FROM (SELECT TOP '
+ STR(@PageSize*(@PageIndex-1)) + ' ' + @PrimaryKey
+ ' FROM ' + @TableName
+ @new_where1 + @new_order1 +' ) AS TMP) '+ @new_order1
END
ELSE   --反向检索
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ('
+ 'SELECT TOP ' + STR(@PageSize) + ' '
+ @FieldList + ' FROM '
+ @TableName + @new_where2 + @PrimaryKey + ' < '
+ '(SELECT MIN(' + @PrimaryKey + ') FROM (SELECT TOP '
+ STR(@TotalCount-@PageSize*@PageIndex) + ' ' + @PrimaryKey
+ ' FROM ' + @TableName
+ @new_where1 + @new_order2 +' ) AS TMP) '+ @new_order2
+ ' ) AS TMP ' + @new_order1
END
END
IF @SortType = 2   --仅主键反序排序
BEGIN
IF @PageIndex <= CEILING((@TotalCount+0.0)/@PageSize)/2   --正向检索
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM '
+ @TableName + @new_where2 + @PrimaryKey + ' < '
+ '(SELECT MIN(' + @PrimaryKey + ') FROM (SELECT TOP '
+ STR(@PageSize*(@PageIndex-1)) + ' ' + @PrimaryKey
+' FROM '+ @TableName
+ @new_where1 + @new_order1 + ') AS TMP) '+ @new_order1
END
ELSE   --反向检索
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ('
+ 'SELECT TOP ' + STR(@PageSize) + ' '
+ @FieldList + ' FROM '
+ @TableName + @new_where2 + @PrimaryKey + ' > '
+ '(SELECT MAX(' + @PrimaryKey + ') FROM (SELECT TOP '
+ STR(@TotalCount-@PageSize*@PageIndex) + ' ' + @PrimaryKey
+ ' FROM ' + @TableName
+ @new_where1 + @new_order2 +' ) AS TMP) '+ @new_order2
+ ' ) AS TMP ' + @new_order1
END
END
IF @SortType = 3   --多列排序，必须包含主键，且放置最后，否则不处理
BEGIN
IF CHARINDEX(',' + @PrimaryKey + ' ',',' + @Order) = 0
BEGIN PRINT('ERR_02') RETURN END
IF @PageIndex <= CEILING((@TotalCount+0.0)/@PageSize)/2   --正向检索
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ( '
+ 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ( '
+ ' SELECT TOP ' + STR(@PageSize*@PageIndex) + ' ' + @FieldList
+ ' FROM ' + @TableName + @new_where1 + @new_order1 + ' ) AS TMP '
+ @new_order2 + ' ) AS TMP ' + @new_order1
END
ELSE   --反向检索
BEGIN
SET @Sql = 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ( '
+ 'SELECT TOP ' + STR(@PageSize) + ' ' + @FieldList + ' FROM ( '
+ ' SELECT TOP ' + STR(@TotalCount-@PageSize *@PageIndex+@PageSize) + ' ' + @FieldList
+ ' FROM ' + @TableName + @new_where1 + @new_order2 + ' ) AS TMP '
+ @new_order1 + ' ) AS TMP ' + @new_order1
END
END
END
print(@sql)
EXEC(@Sql)
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[OrderCode] [varchar](50) NULL,
	[GId] [int] NULL,
	[GCount] [int] NULL,
	[BuyPrice] [decimal](18, 2) NULL,
	[TotalMoney] [decimal](18, 2) NULL,
	[CreatedTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[GoodCount] [int] NULL,
	[OrderTime] [datetime] NULL,
	[MID] [varchar](50) NULL,
	[PayTime] [datetime] NULL,
	[SendTime] [datetime] NULL,
	[ReceiveTime] [datetime] NULL,
	[Status] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ReceiveId] [int] NULL,
	[ExpressCompany] [nvarchar](50) NULL,
	[ExpressCode] [varchar](50) NULL,
	[Remarks] [varchar](100) NULL,
	[DisCountTotalPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Order_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ObjSubType]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjSubType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Remark] [varchar](150) NULL,
 CONSTRAINT [PK_ObjType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ObjSubType] ON
INSERT [dbo].[ObjSubType] ([ID], [Name], [Remark]) VALUES (1, N'冠生园', N'')
INSERT [dbo].[ObjSubType] ([ID], [Name], [Remark]) VALUES (2, N'火锅店', N'')
INSERT [dbo].[ObjSubType] ([ID], [Name], [Remark]) VALUES (5, N'冠生园', N'对对对222')
SET IDENTITY_INSERT [dbo].[ObjSubType] OFF
/****** Object:  Table [dbo].[ObjSub]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ObjSub](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Person] [varchar](50) NULL,
	[SubType] [int] NULL,
	[Money] [decimal](18, 4) NULL,
	[CreateDate] [datetime] NULL,
	[CZFloat] [decimal](18, 4) NULL,
	[IsDelete] [int] NULL,
	[Remark] [text] NULL,
	[Spare] [varchar](50) NULL,
	[Spare1] [varchar](50) NULL,
	[ReMoney] [decimal](18, 4) NULL,
	[ObjID] [int] NULL,
 CONSTRAINT [PK_ObjSub] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子项类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ObjSub', @level2type=N'COLUMN',@level2name=N'SubType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ObjSub', @level2type=N'COLUMN',@level2name=N'ReMoney'
GO
SET IDENTITY_INSERT [dbo].[ObjSub] ON
INSERT [dbo].[ObjSub] ([ID], [Name], [Person], [SubType], [Money], [CreateDate], [CZFloat], [IsDelete], [Remark], [Spare], [Spare1], [ReMoney], [ObjID]) VALUES (1, N'rgr11', N'yny', 1, CAST(100000.0000 AS Decimal(18, 4)), CAST(0x0000A7DA01048818 AS DateTime), CAST(0.0500 AS Decimal(18, 4)), 0, N'ddddd2254t454ffff2222', N'', N'', CAST(100010.0000 AS Decimal(18, 4)), 3)
INSERT [dbo].[ObjSub] ([ID], [Name], [Person], [SubType], [Money], [CreateDate], [CZFloat], [IsDelete], [Remark], [Spare], [Spare1], [ReMoney], [ObjID]) VALUES (2, N'冠生园', N'yny', 1, CAST(99000.0000 AS Decimal(18, 4)), CAST(0x0000A7DA011EC1C4 AS DateTime), CAST(0.0500 AS Decimal(18, 4)), 0, N'fr', N'', N'', CAST(11100.0000 AS Decimal(18, 4)), 3)
INSERT [dbo].[ObjSub] ([ID], [Name], [Person], [SubType], [Money], [CreateDate], [CZFloat], [IsDelete], [Remark], [Spare], [Spare1], [ReMoney], [ObjID]) VALUES (3, N'1', N'yny', 1, CAST(100.0000 AS Decimal(18, 4)), CAST(0x0000A7DB01292010 AS DateTime), CAST(0.0500 AS Decimal(18, 4)), 0, N'fr', N'', N'', CAST(2.0000 AS Decimal(18, 4)), 5)
INSERT [dbo].[ObjSub] ([ID], [Name], [Person], [SubType], [Money], [CreateDate], [CZFloat], [IsDelete], [Remark], [Spare], [Spare1], [ReMoney], [ObjID]) VALUES (4, N'1', N'杨宁远', 1, CAST(100.0000 AS Decimal(18, 4)), CAST(0x0000A7DB012A5156 AS DateTime), CAST(0.0500 AS Decimal(18, 4)), 0, N'fr', NULL, NULL, CAST(1.0000 AS Decimal(18, 4)), 4)
SET IDENTITY_INSERT [dbo].[ObjSub] OFF
/****** Object:  Table [dbo].[Obj]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obj](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Person] [varchar](50) NULL,
	[StateDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ImpUnit] [varchar](100) NULL,
	[FundID] [int] NULL,
	[TheNumID] [varchar](100) NULL,
	[DepartID] [int] NULL,
	[Money] [decimal](18, 4) NULL,
	[Remark] [text] NULL,
	[Spart] [varchar](150) NULL,
	[Spart1] [varchar](150) NULL,
	[State] [int] NULL,
	[IsDelete] [int] NULL,
 CONSTRAINT [PK_Obj] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项目名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'StateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实施单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'ImpUnit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经费来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'FundID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复文号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'TheNumID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批复部门' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'DepartID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0未完成1已完成' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0未删除1删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Obj', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
SET IDENTITY_INSERT [dbo].[Obj] ON
INSERT [dbo].[Obj] ([ID], [Name], [Person], [StateDate], [EndDate], [ImpUnit], [FundID], [TheNumID], [DepartID], [Money], [Remark], [Spart], [Spart1], [State], [IsDelete]) VALUES (3, N'冠生园', N'yny2', CAST(0x0000A7DA012B8170 AS DateTime), CAST(0x0000A7DB01143AD1 AS DateTime), N'2', 1, N'00001', 2, CAST(200000.0000 AS Decimal(18, 4)), N'', N'', N'', 1, 0)
INSERT [dbo].[Obj] ([ID], [Name], [Person], [StateDate], [EndDate], [ImpUnit], [FundID], [TheNumID], [DepartID], [Money], [Remark], [Spart], [Spart1], [State], [IsDelete]) VALUES (4, N'冠生园', N'yny', CAST(0x0000A7DB010614D2 AS DateTime), CAST(0x002D247F018B81FF AS DateTime), NULL, 1, N'00001', 2, CAST(100.0000 AS Decimal(18, 4)), N'对对对2', NULL, NULL, 0, 0)
INSERT [dbo].[Obj] ([ID], [Name], [Person], [StateDate], [EndDate], [ImpUnit], [FundID], [TheNumID], [DepartID], [Money], [Remark], [Spart], [Spart1], [State], [IsDelete]) VALUES (5, N'冠生园', N'yny', CAST(0x0000A7DB01146E04 AS DateTime), CAST(0x002D247F018B81FF AS DateTime), N'2,3', 1, N'00001', 2, CAST(100.0000 AS Decimal(18, 4)), N'fr', N'', N'', 0, 0)
SET IDENTITY_INSERT [dbo].[Obj] OFF
/****** Object:  Table [dbo].[Notice]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NTitle] [nvarchar](100) NULL,
	[NContent] [text] NULL,
	[NCreateTime] [datetime] NULL,
	[NClicks] [int] NOT NULL,
	[NState] [bit] NOT NULL,
	[IsFixed] [bit] NULL,
 CONSTRAINT [PK_Notice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewSHMoney]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewSHMoney](
	[NType] [varchar](10) NOT NULL,
	[NName] [varchar](20) NULL,
	[NJCFloat] [decimal](18, 4) NULL,
	[NTotalYJ] [decimal](18, 4) NULL,
	[NSmallSumYJ] [decimal](18, 4) NULL,
	[NDCount] [int] NULL,
	[NMinYJ] [decimal](18, 4) NULL,
 CONSTRAINT [PK_NewSHMoney] PRIMARY KEY CLUSTERED 
(
	[NType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NewSHMoney] ([NType], [NName], [NJCFloat], [NTotalYJ], [NSmallSumYJ], [NDCount], [NMinYJ]) VALUES (N'001', N'经销商', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[NewSHMoney] ([NType], [NName], [NJCFloat], [NTotalYJ], [NSmallSumYJ], [NDCount], [NMinYJ]) VALUES (N'002', N'银级会员', CAST(0.0200 AS Decimal(18, 4)), CAST(600000.0000 AS Decimal(18, 4)), CAST(200000.0000 AS Decimal(18, 4)), 3, CAST(70000.0000 AS Decimal(18, 4)))
INSERT [dbo].[NewSHMoney] ([NType], [NName], [NJCFloat], [NTotalYJ], [NSmallSumYJ], [NDCount], [NMinYJ]) VALUES (N'003', N'金级会员', CAST(0.0400 AS Decimal(18, 4)), CAST(1200000.0000 AS Decimal(18, 4)), CAST(300000.0000 AS Decimal(18, 4)), 4, CAST(100000.0000 AS Decimal(18, 4)))
INSERT [dbo].[NewSHMoney] ([NType], [NName], [NJCFloat], [NTotalYJ], [NSmallSumYJ], [NDCount], [NMinYJ]) VALUES (N'004', N'白金会员', CAST(0.0600 AS Decimal(18, 4)), CAST(3600000.0000 AS Decimal(18, 4)), CAST(1200000.0000 AS Decimal(18, 4)), 5, CAST(200000.0000 AS Decimal(18, 4)))
INSERT [dbo].[NewSHMoney] ([NType], [NName], [NJCFloat], [NTotalYJ], [NSmallSumYJ], [NDCount], [NMinYJ]) VALUES (N'005', N'钻石会员', CAST(0.0800 AS Decimal(18, 4)), CAST(7200000.0000 AS Decimal(18, 4)), CAST(2400000.0000 AS Decimal(18, 4)), 6, CAST(400000.0000 AS Decimal(18, 4)))
INSERT [dbo].[NewSHMoney] ([NType], [NName], [NJCFloat], [NTotalYJ], [NSmallSumYJ], [NDCount], [NMinYJ]) VALUES (N'006', N'董事会员', CAST(0.1000 AS Decimal(18, 4)), CAST(10000000.0000 AS Decimal(18, 4)), CAST(3000000.0000 AS Decimal(18, 4)), 7, CAST(500000.0000 AS Decimal(18, 4)))
/****** Object:  Table [dbo].[NConfigDictionary]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NConfigDictionary](
	[NDTpye] [varchar](50) NOT NULL,
	[DKey] [varchar](10) NOT NULL,
	[StartLevel] [int] NOT NULL,
	[EndLevel] [int] NULL,
	[StartRec] [int] NOT NULL,
	[EndRec] [int] NULL,
	[DValue] [varchar](10) NULL,
	[Remark] [varchar](100) NULL,
 CONSTRAINT [PK_NConfigDictionary] PRIMARY KEY CLUSTERED 
(
	[NDTpye] ASC,
	[DKey] ASC,
	[StartLevel] ASC,
	[StartRec] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Proc_CountForIndexChart]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
--  exec Proc_CountForIndexChart '2015-05-10','2015-05-22'
CREATE PROCEDURE [dbo].[Proc_CountForIndexChart] 
	-- Add the parameters for the stored procedure here
	@BeginDate varchar(40), --2015-05-20
	@EndDate  varchar(40)   --2015-05-22
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 CREATE table #tempCount
	 (
		CountDate datetime,	--日期
		SumCount varchar(10),--数量
		CountType int		--统计类型：1-每天最后成交价;2-每天成交总量
	)
	 
	declare @dayAdd int,@countTime datetime,@count int,@i int,@isHasCount int
	select @isHasCount=COUNT(1) from MGP_BuyRecord t1 left join MGP_Publish t2 on t1.PublishId=t2.Id where datediff(DD,t1.BuyTime,@BeginDate)=0  
	if @isHasCount=0
	begin
		insert #tempCount(CountDate,SumCount,CountType)
		 values(@BeginDate,'0.10',1)
	end
	set @i=0
	select @count=datediff(dd,@BeginDate,@EndDate)
	while @i<=@count
	begin
		set @countTime=DATEADD(DD,@i,@BeginDate)
		--从开始时间开始统计,统计每天的成交单价
		--如果今天没有成交，就取前一天的成交价格
	select @isHasCount=COUNT(1) from MGP_BuyRecord t1 left join MGP_Publish t2 on t1.PublishId=t2.Id where datediff(DD,t1.BuyTime,@countTime)=0  
	if @isHasCount=0
	begin
		insert #tempCount(CountDate,SumCount,CountType)
		 select @countTime,SumCount,1 from #tempCount where CountDate=DATEADD(DD,-1,@countTime) and CountType=1 
	end
	else
	begin
		insert #tempCount(CountDate,SumCount,CountType)
	      select top 1  CONVERT(varchar(100),  t1.BuyTime, 23),CONVERT(varchar(10),t1.BuyPrice),1 from MGP_BuyRecord t1 left join MGP_Publish t2 on t1.PublishId=t2.Id where datediff(DD,t1.BuyTime,@countTime)=0  order by Sort desc 
	   
	end
	 
	    
		--从开始时间开始统计,统计每天的成交量
		insert #tempCount(CountDate,SumCount,CountType)
		   select @countTime,SUM(BuyCount),2 from MGP_BuyRecord t1 left join MGP_Publish t2 on t1.PublishId=t2.Id where datediff(DD,t1.BuyTime,@countTime)=0
		set @i=@i+1
	end
	 
	 select CONVERT(varchar(100),CountDate,23) CountDate,SumCount,CountType from #tempCount order by CountDate
	 drop table #tempCount
END
GO
/****** Object:  Table [dbo].[Message]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Message](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MContent] [varchar](500) NULL,
	[MDate] [datetime] NULL,
	[MDx] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MemberConfig]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberConfig](
	[MID] [varchar](20) NOT NULL,
	[SHMoney] [int] NULL,
	[YJCount] [int] NULL,
	[YJMoney] [int] NULL,
	[TJCount] [int] NULL,
	[TJMoney] [int] NULL,
	[UpSumMoney] [int] NULL,
	[TotalMoney] [decimal](18, 4) NULL,
	[RealMoney] [decimal](18, 4) NULL,
	[TakeOffMoney] [decimal](18, 4) NULL,
	[ReBuyMoney] [decimal](18, 4) NULL,
	[TotalTXMoney] [decimal](18, 4) NULL,
	[JJTypeList] [varchar](300) NULL,
	[MHB] [decimal](18, 4) NULL,
	[MJB] [decimal](18, 4) NULL,
	[MCW] [decimal](18, 4) NULL,
	[MGP] [decimal](18, 4) NULL,
	[DTFHState] [bit] NULL,
	[JTFHState] [bit] NULL,
	[TotalDFHMoney] [decimal](18, 4) NULL,
	[TotalZFHMoney] [decimal](18, 4) NULL,
	[TotalYFHMoney] [decimal](18, 4) NULL,
	[GQCount] [int] NULL,
	[TXStatus] [bit] NULL,
	[ZZStatus] [bit] NULL,
	[HLGQCount] [int] NULL,
	[EPXingCount] [int] NULL,
	[EPTimeOutCount] [int] NULL,
	[TJFloat] [decimal](18, 4) NULL,
 CONSTRAINT [PK_MemberConfig] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投资额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'SHMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'YJCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场业绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'YJMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'TJCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'双轨用到对碰用到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'UpSumMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人所得毛收益' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'TotalMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人所得净收益' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MemberConfig', @level2type=N'COLUMN',@level2name=N'RealMoney'
GO
INSERT [dbo].[MemberConfig] ([MID], [SHMoney], [YJCount], [YJMoney], [TJCount], [TJMoney], [UpSumMoney], [TotalMoney], [RealMoney], [TakeOffMoney], [ReBuyMoney], [TotalTXMoney], [JJTypeList], [MHB], [MJB], [MCW], [MGP], [DTFHState], [JTFHState], [TotalDFHMoney], [TotalZFHMoney], [TotalYFHMoney], [GQCount], [TXStatus], [ZZStatus], [HLGQCount], [EPXingCount], [EPTimeOutCount], [TJFloat]) VALUES (N'15617926640', 2000, 1, 0, 0, 0, 0, CAST(106.5000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'R_RFH(日分红),R_TJ(推荐奖),R_LD(领导奖),', CAST(7130.5000 AS Decimal(18, 4)), CAST(90900.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 1, CAST(106.5000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 1, 1, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)))
INSERT [dbo].[MemberConfig] ([MID], [SHMoney], [YJCount], [YJMoney], [TJCount], [TJMoney], [UpSumMoney], [TotalMoney], [RealMoney], [TakeOffMoney], [ReBuyMoney], [TotalTXMoney], [JJTypeList], [MHB], [MJB], [MCW], [MGP], [DTFHState], [JTFHState], [TotalDFHMoney], [TotalZFHMoney], [TotalYFHMoney], [GQCount], [TXStatus], [ZZStatus], [HLGQCount], [EPXingCount], [EPTimeOutCount], [TJFloat]) VALUES (N'admin', 0, 1, 2000, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 1, 1, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0, 1, 1, 0, 0, 0, CAST(0.0000 AS Decimal(18, 4)))
/****** Object:  Table [dbo].[MemberBonus]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MemberBonus](
	[MID] [varchar](20) NOT NULL,
	[TotalPoints] [int] NULL,
	[ValidPoints] [int] NULL,
	[TotalBonus] [int] NULL,
	[ValidBonus] [int] NULL,
 CONSTRAINT [PK_MemberBonus] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MemberBonus] ([MID], [TotalPoints], [ValidPoints], [TotalBonus], [ValidBonus]) VALUES (N'admin', 0, 0, 0, 0)
INSERT [dbo].[MemberBonus] ([MID], [TotalPoints], [ValidPoints], [TotalBonus], [ValidBonus]) VALUES (N'admin1', 0, 0, 0, 0)
/****** Object:  Table [dbo].[Member_OperationRecord]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_OperationRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [nvarchar](50) NOT NULL,
	[LevelCode] [nvarchar](50) NOT NULL,
	[RoleCode] [nvarchar](50) NOT NULL,
	[Time] [datetime] NOT NULL,
	[TypeCode] [nvarchar](50) NOT NULL,
	[Operation] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_OperationRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member_OperationRecord] ON
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (417, N'caifu888', N'002', N'Manage', CAST(0x0000A7CA00B53674 AS DateTime), N'O_CZ', N'充值[15617926640][MJB][100000]')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (418, N'15617926640', N'001', N'Notactive', CAST(0x0000A7CA00B559B0 AS DateTime), N'O_XGZL', N'修改资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (419, N'caifu888', N'002', N'Manage', CAST(0x0000A7CA00B5CB50 AS DateTime), N'O_JTFH', N'静态分红')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (420, N'15617926640', N'002', N'Nomal', CAST(0x0000A7CA00E4378D AS DateTime), N'O_XGZL', N'修改资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (421, N'15617926640', N'002', N'Nomal', CAST(0x0000A7CA00E44672 AS DateTime), N'O_XGZL', N'修改资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (422, N'caifu888', N'002', N'Manage', CAST(0x0000A7CB00E28E5A AS DateTime), N'O_XGHYZL', N'修改15617926640的资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (423, N'caifu888', N'002', N'Manage', CAST(0x0000A7CB00E2C270 AS DateTime), N'O_XGHYZL', N'修改15617926640的资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (424, N'caifu888', N'002', N'Manage', CAST(0x0000A7CB0120193A AS DateTime), N'O_XGHYZL', N'修改15617926640的资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (425, N'caifu888', N'002', N'Manage', CAST(0x0000A7D200E50093 AS DateTime), N'O_XGHYZL', N'修改15617926640的资料')
INSERT [dbo].[Member_OperationRecord] ([ID], [MID], [LevelCode], [RoleCode], [Time], [TypeCode], [Operation]) VALUES (426, N'caifu888', N'002', N'Manage', CAST(0x0000A7D200E78744 AS DateTime), N'O_XGJJCS', N'修改奖金参数')
SET IDENTITY_INSERT [dbo].[Member_OperationRecord] OFF
/****** Object:  Table [dbo].[Member]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Member](
	[ID] [int] IDENTITY(692828,9) NOT NULL,
	[MID] [varchar](20) NOT NULL,
	[FMID] [varchar](20) NULL,
	[MName] [nvarchar](50) NULL,
	[Country] [varchar](20) NULL,
	[Province] [varchar](20) NULL,
	[City] [varchar](20) NULL,
	[Zone] [varchar](20) NULL,
	[Tel] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Address] [text] NULL,
	[Bank] [varchar](50) NULL,
	[Branch] [varchar](50) NULL,
	[BankNumber] [varchar](30) NULL,
	[BankCardName] [nvarchar](50) NULL,
	[Password] [varchar](32) NULL,
	[SecPsd] [varchar](32) NULL,
	[MTJ] [varchar](20) NULL,
	[MSH] [varchar](20) NULL,
	[MBD] [varchar](20) NULL,
	[MBDIndex] [int] NULL,
	[MCreateDate] [datetime] NULL,
	[MDate] [datetime] NULL,
	[MState] [bit] NOT NULL,
	[IsClose] [bit] NULL,
	[IsClock] [bit] NULL,
	[RoleCode] [varchar](10) NULL,
	[AgencyCode] [varchar](10) NULL,
	[Salt] [varchar](10) NULL,
	[ThrPsd] [varchar](50) NULL,
	[SHMoney] [int] NULL,
	[NumID] [varchar](50) NULL,
	[QQ] [varchar](20) NULL,
	[NAgencyCode] [varchar](10) NULL,
	[RegistAgency] [varchar](50) NULL,
	[FHState] [bit] NULL,
	[validtime] [datetime] NULL,
	[Alipay] [varchar](20) NULL,
	[WeChat] [varchar](20) NULL,
	[QRCode] [varchar](200) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置点位：1（左），2（中），3（右）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Member', @level2type=N'COLUMN',@level2name=N'MBDIndex'
GO
SET IDENTITY_INSERT [dbo].[Member] ON
INSERT [dbo].[Member] ([ID], [MID], [FMID], [MName], [Country], [Province], [City], [Zone], [Tel], [Email], [Address], [Bank], [Branch], [BankNumber], [BankCardName], [Password], [SecPsd], [MTJ], [MSH], [MBD], [MBDIndex], [MCreateDate], [MDate], [MState], [IsClose], [IsClock], [RoleCode], [AgencyCode], [Salt], [ThrPsd], [SHMoney], [NumID], [QQ], [NAgencyCode], [RegistAgency], [FHState], [validtime], [Alipay], [WeChat], [QRCode]) VALUES (696545, N'15617926640', NULL, N'订单', N'', N'湖南省', N'衡阳市', N'', N'15617926640', N'', N'', N'支付宝', N'支行2', N'6226334564564443', N'杨宁远', N'6A57A51FD566324686C89775ADD79C0C', N'6A57A51FD566324686C89775ADD79C0C', N'admin', N'', N'admin', 0, CAST(0x0000A7CA00B52B4C AS DateTime), CAST(0x0000A7CA00B564B8 AS DateTime), 1, 0, 0, N'Nomal', N'002', N'21199', N'6aa838787aebe007a87f4a5e12ac661d', 2000, N'', N'', N'001', N'', 0, CAST(0x0000A7CA00B564B8 AS DateTime), N'', N'', N'')
INSERT [dbo].[Member] ([ID], [MID], [FMID], [MName], [Country], [Province], [City], [Zone], [Tel], [Email], [Address], [Bank], [Branch], [BankNumber], [BankCardName], [Password], [SecPsd], [MTJ], [MSH], [MBD], [MBDIndex], [MCreateDate], [MDate], [MState], [IsClose], [IsClock], [RoleCode], [AgencyCode], [Salt], [ThrPsd], [SHMoney], [NumID], [QQ], [NAgencyCode], [RegistAgency], [FHState], [validtime], [Alipay], [WeChat], [QRCode]) VALUES (692837, N'admin', NULL, N'管理员', N'', N'河北省', N'唐山市', N'东城区', N'15617926641', N'3@qq.com', N'/plugin/kindeditor/attached/image/20161201/20161201172025_5176.png', N'中国工商银行', N'公司', N'123123123123123123123', N'张三', N'1BD903DC13AA9A0A5D91E7A875D1D3C3', N'5517A00C29B8133C6DD721621A0092EF', N'', N'', N'', 3, CAST(0x0000A7CA00B50F2C AS DateTime), CAST(0x0000A7CA00B50F2C AS DateTime), 1, 0, 0, N'Manage', N'002', N'78078', N'f6144ef3fb6e922b5cf3636117c7add5', 12607, N'5', N'1', N'001', N'002', 0, CAST(0x0000A6D201839450 AS DateTime), N'13666666666', N'5', N'张三')
SET IDENTITY_INSERT [dbo].[Member] OFF
/****** Object:  Table [dbo].[MConfigChange]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MConfigChange](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](20) NOT NULL,
	[SHMID] [varchar](20) NULL,
	[ChangeDate] [datetime] NULL,
	[ConfigName] [varchar](20) NULL,
	[ConfigValue] [varchar](20) NULL,
	[DataType] [varchar](20) NULL,
	[IsValue] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LuckyMoney]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LuckyMoney](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[FHTimes] [int] NULL,
	[FHMoney] [decimal](18, 4) NULL,
	[isValid] [int] NULL,
	[TotalMoney] [decimal](18, 4) NULL,
	[EditTime] [datetime] NULL,
	[ApplyMoney] [decimal](18, 4) NULL,
	[TakeOffmoney] [decimal](18, 4) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_LuckyMoney] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[LuckyMoney] ON
INSERT [dbo].[LuckyMoney] ([ID], [MID], [CreateTime], [FHTimes], [FHMoney], [isValid], [TotalMoney], [EditTime], [ApplyMoney], [TakeOffmoney], [Type]) VALUES (52, N'15617926640', CAST(0x0000A7CA00B564B8 AS DateTime), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(1.5000 AS Decimal(18, 4)), CAST(0x0000A7D200E4EC4C AS DateTime), CAST(100.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[LuckyMoney] ([ID], [MID], [CreateTime], [FHTimes], [FHMoney], [isValid], [TotalMoney], [EditTime], [ApplyMoney], [TakeOffmoney], [Type]) VALUES (53, N'15617926640', CAST(0x0000A7CA00B58B64 AS DateTime), 1, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(75.0000 AS Decimal(18, 4)), CAST(0x0000A7D200E55498 AS DateTime), CAST(5000.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[LuckyMoney] ([ID], [MID], [CreateTime], [FHTimes], [FHMoney], [isValid], [TotalMoney], [EditTime], [ApplyMoney], [TakeOffmoney], [Type]) VALUES (54, N'15617926640', CAST(0x0000A7D200E8704C AS DateTime), 0, CAST(0.0000 AS Decimal(18, 4)), 2, CAST(0.0000 AS Decimal(18, 4)), CAST(0x0000A7D200EB8174 AS DateTime), CAST(2000.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[LuckyMoney] ([ID], [MID], [CreateTime], [FHTimes], [FHMoney], [isValid], [TotalMoney], [EditTime], [ApplyMoney], [TakeOffmoney], [Type]) VALUES (55, N'15617926640', CAST(0x0000A7D200EB98DA AS DateTime), 1, CAST(0.0000 AS Decimal(18, 4)), 0, CAST(30.0000 AS Decimal(18, 4)), CAST(0x0000A7D200EB98DA AS DateTime), CAST(2000.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), 0)
SET IDENTITY_INSERT [dbo].[LuckyMoney] OFF
/****** Object:  Table [dbo].[LotteryDraw]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LotteryDraw](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[LMoney] [decimal](18, 2) NOT NULL,
	[State] [bit] NOT NULL,
	[GetMID] [varchar](50) NULL,
	[PointMID] [varchar](50) NULL,
	[CostMoney] [decimal](18, 2) NULL,
	[GetTime] [datetime] NULL,
 CONSTRAINT [PK_LotteryDraw] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Language]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[Id] [bigint] NULL,
	[Zh_Name] [nvarchar](150) NULL,
	[En_Name] [varchar](150) NULL,
	[State] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JoggleLogin]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[JoggleLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](20) NULL,
	[Code] [varchar](32) NULL,
	[Createtime] [datetime] NULL,
	[isValid] [bit] NOT NULL,
 CONSTRAINT [PK_JoggleLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[JoggleLogin] ON
INSERT [dbo].[JoggleLogin] ([ID], [MID], [Code], [Createtime], [isValid]) VALUES (1, N'qqq111', N'2797298F6AC8498AA0AA8ACE58493E70', CAST(0x0000A63B011BBB28 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[JoggleLogin] OFF
/****** Object:  Table [dbo].[IPClick]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IPClick](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](50) NULL,
	[IP] [varchar](20) NULL,
	[ClickTime] [datetime] NULL,
	[Money] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[IPClick] ON
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (1, N'weika', N'127.0.0.1', CAST(0x0000A75300AE15FC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (2, N'weika', N'127.0.0.1', CAST(0x0000A75300AF0002 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (3, N'weika', N'127.0.0.1', CAST(0x0000A75300AF2A62 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (4, N'weika', N'127.0.0.1', CAST(0x0000A75300AFD52A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (9, N'weika', N'192.168.1.101', CAST(0x0000A75301098138 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (10, N'weika', N'::1', CAST(0x0000A75301109BE8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (11, N'weika', N'::1', CAST(0x0000A75500B5E8C2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (12, N'weika', N'::1', CAST(0x0000A75500BA74B7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (13, N'weika', N'::1', CAST(0x0000A75500BD7E0E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (14, N'weika', N'::1', CAST(0x0000A75500BDB9A6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (15, N'weika', N'::1', CAST(0x0000A75B00E08242 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (16, N'admin', N'::1', CAST(0x0000A75B00E1CAE5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (17, N'admin', N'::1', CAST(0x0000A75B00E1EA1D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (18, N'admin', N'::1', CAST(0x0000A75B00E2245D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (19, N'admin', N'::1', CAST(0x0000A75B00E2B9DB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (20, N'admin', N'::1', CAST(0x0000A75B00E34A13 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (21, N'admin', N'::1', CAST(0x0000A75B00E3AE3A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (22, N'admin', N'::1', CAST(0x0000A75B00E40E08 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (23, N'admin', N'::1', CAST(0x0000A75B00E4410C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (24, N'admin', N'::1', CAST(0x0000A75B00E46589 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (25, N'admin', N'::1', CAST(0x0000A75B00E4C9B1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (26, N'admin', N'::1', CAST(0x0000A75B00E5A539 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (27, N'admin', N'::1', CAST(0x0000A75B00E713D5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (28, N'weika', N'::1', CAST(0x0000A75B00E8B171 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (29, N'weika', N'192.168.1.40', CAST(0x0000A75C00BA768A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (30, N'weika', N'192.168.1.40', CAST(0x0000A75C00D3A8E7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (33, N'weika', N'192.168.1.40', CAST(0x0000A75C00F0490D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (36, N'weika', N'192.168.1.40', CAST(0x0000A75E015A3894 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (38, N'weika', N'::1', CAST(0x0000A76100E42467 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (40, N'weika', N'192.168.1.40', CAST(0x0000A76100FE739C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (41, N'weika', N'192.168.1.24', CAST(0x0000A76800D0D8F1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (42, N'weika', N'192.168.1.18', CAST(0x0000A76800E02FA6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (43, N'weika', N'192.168.1.18', CAST(0x0000A76800F9FDF7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (44, N'weika', N'192.168.1.18', CAST(0x0000A768010C8A75 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (45, N'weika', N'192.168.1.18', CAST(0x0000A7690116987B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (46, N'weika', N'192.168.1.18', CAST(0x0000A769011B425E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (52, N'weika', N'192.168.1.26', CAST(0x0000A785009B2133 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (53, N'weika', N'192.168.1.19', CAST(0x0000A78500B270F5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (5, N'15012345678', N'127.0.0.1', CAST(0x0000A75300AFF9C7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (6, N'weika', N'::1', CAST(0x0000A75300D5270C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (7, N'weika', N'192.168.1.15', CAST(0x0000A75300E0255A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (8, N'weika', N'::1', CAST(0x0000A75301091DB0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (31, N'weika', N'192.168.1.40', CAST(0x0000A75C00D4B91F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (32, N'weika', N'192.168.1.40', CAST(0x0000A75C00DA4277 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (34, N'weika', N'192.168.1.40', CAST(0x0000A75C0114904B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (37, N'weika', N'::1', CAST(0x0000A76000AC0395 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (50, N'weika', N'192.168.1.26', CAST(0x0000A78400DD7D21 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (54, N'weika', N'::1', CAST(0x0000A7860095B8D8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (35, N'weika', N'192.168.1.40', CAST(0x0000A75D009380F2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (39, N'weika', N'192.168.1.40', CAST(0x0000A76100F7EB97 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (47, N'weika', N'192.168.1.101', CAST(0x0000A76A00C0A626 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (49, N'weika', N'192.168.1.26', CAST(0x0000A76E00C71881 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (51, N'weika', N'192.168.1.26', CAST(0x0000A78400EC14B6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (48, N'weika', N'192.168.1.101', CAST(0x0000A76A00E6C652 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (55, N'admin', N'::1', CAST(0x0000A78600B95D63 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (56, N'admin', N'::1', CAST(0x0000A78600F68965 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (57, N'admin', N'::1', CAST(0x0000A786010042C1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (58, N'admin', N'::1', CAST(0x0000A7860104FAF9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (59, N'admin', N'::1', CAST(0x0000A787009457DB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (60, N'admin', N'::1', CAST(0x0000A7870103AC2C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (63, N'admin', N'::1', CAST(0x0000A78A00B86EBD AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (64, N'admin', N'::1', CAST(0x0000A78A00E33A9B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (65, N'admin', N'::1', CAST(0x0000A78A011ABEA5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (69, N'admin', N'::1', CAST(0x0000A78B00A7C9C7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (70, N'admin', N'::1', CAST(0x0000A78B00A7E630 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (75, N'15617926640', N'::1', CAST(0x0000A78B00BA232D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (76, N'admin', N'::1', CAST(0x0000A78B00BC712A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (77, N'15617926640', N'::1', CAST(0x0000A78B00BD192B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (79, N'admin', N'::1', CAST(0x0000A78B00CED47D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (80, N'admin', N'::1', CAST(0x0000A78B00CEE28F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (81, N'admin', N'::1', CAST(0x0000A78B00CEF465 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (82, N'admin', N'::1', CAST(0x0000A78B00E11E8D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (83, N'admin', N'::1', CAST(0x0000A78B00E1D032 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (84, N'admin', N'::1', CAST(0x0000A78B00E1D6E2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (85, N'15617926640', N'::1', CAST(0x0000A78B00E3A119 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (86, N'15617926640', N'::1', CAST(0x0000A78B00E3F862 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (87, N'15617926640', N'::1', CAST(0x0000A78B00E4B1D5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (88, N'admin', N'::1', CAST(0x0000A78B00E6BBE6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (89, N'15617926640', N'::1', CAST(0x0000A78B00EF99F6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (90, N'admin', N'::1', CAST(0x0000A78B00EF92CD AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (93, N'15617926640', N'::1', CAST(0x0000A78B011B8114 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (94, N'15617926640', N'::1', CAST(0x0000A78B011BAD67 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (97, N'admin', N'192.168.1.26', CAST(0x0000A78B0130B683 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (98, N'admin', N'192.168.1.26', CAST(0x0000A78B013138A3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (99, N'admin', N'192.168.1.26', CAST(0x0000A78B0131532A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (100, N'admin', N'192.168.1.26', CAST(0x0000A78B013162C9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (101, N'15617926640', N'::1', CAST(0x0000A78C0095F7B0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (110, N'15617926640', N'::1', CAST(0x0000A78C0101492A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (112, N'15617926640', N'::1', CAST(0x0000A78C011280B7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (113, N'15617926640', N'::1', CAST(0x0000A78C0114DBB6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (114, N'15617926640', N'::1', CAST(0x0000A78C011B561F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (115, N'admin', N'::1', CAST(0x0000A78C011EC310 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (120, N'admin', N'::1', CAST(0x0000A78D00953AF5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (121, N'15617926640', N'::1', CAST(0x0000A78D009A70C6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (126, N'admin', N'192.168.1.26', CAST(0x0000A78D01050C1E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (127, N'admin', N'::1', CAST(0x0000A78D01056C73 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (129, N'18555555555', N'::1', CAST(0x0000A78D010766A0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (130, N'18555555555', N'::1', CAST(0x0000A78D010F45FC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (131, N'18555555555', N'::1', CAST(0x0000A78D010FD290 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (133, N'admin', N'192.168.1.26', CAST(0x0000A79000FE0388 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
GO
print 'Processed 100 total records'
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (134, N'15617926640', N'::1', CAST(0x0000A79200E8650C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (135, N'admin', N'::1', CAST(0x0000A79200F81914 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (138, N'admin', N'::1', CAST(0x0000A79200FD1BA8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (139, N'15617926640', N'::1', CAST(0x0000A792010126F7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (140, N'admin', N'::1', CAST(0x0000A792010B590A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (141, N'admin', N'::1', CAST(0x0000A792010B8AD7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (144, N'admin', N'192.168.1.27', CAST(0x0000A7920115924F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (145, N'admin', N'::1', CAST(0x0000A79201179E15 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (146, N'admin', N'::1', CAST(0x0000A7920117E5D1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (147, N'18555555555', N'::1', CAST(0x0000A79201196B73 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (151, N'18555555555', N'192.168.1.27', CAST(0x0000A7920129B41B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (152, N'admin', N'::1', CAST(0x0000A792012EA0BD AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (154, N'18555555555', N'192.168.1.27', CAST(0x0000A7920146394A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (155, N'18555555555', N'192.168.1.27', CAST(0x0000A7920147EE9B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (156, N'18555555555', N'192.168.1.15', CAST(0x0000A792014808F3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (157, N'18555555555', N'192.168.1.15', CAST(0x0000A792014A313A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (158, N'18555555555', N'192.168.1.27', CAST(0x0000A79201548F1A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (159, N'18555555555', N'192.168.1.27', CAST(0x0000A79201549C69 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (160, N'18555555555', N'192.168.1.27', CAST(0x0000A7920154C2E5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (161, N'admin', N'192.168.1.27', CAST(0x0000A7920158A8B5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (162, N'admin', N'::1', CAST(0x0000A79400E74155 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (165, N'admin', N'::1', CAST(0x0000A79400EFE906 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (185, N'18555555555', N'::1', CAST(0x0000A795010B6EDC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (187, N'18555555555', N'::1', CAST(0x0000A795010C46E2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (188, N'18555555555', N'::1', CAST(0x0000A795010C5EE8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (192, N'18555555555', N'::1', CAST(0x0000A795010D7307 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (193, N'18555555555', N'::1', CAST(0x0000A7950110D3CE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (194, N'18555555555', N'::1', CAST(0x0000A79501113327 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (195, N'18555555555', N'::1', CAST(0x0000A79501122C17 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (196, N'18555555555', N'::1', CAST(0x0000A7950113CD8C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (197, N'18555555555', N'::1', CAST(0x0000A795011462C5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (198, N'18555555555', N'::1', CAST(0x0000A7950114D6F4 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (199, N'admin', N'::1', CAST(0x0000A7950114F182 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (200, N'18555555555', N'::1', CAST(0x0000A79700A5B866 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (202, N'admin', N'::1', CAST(0x0000A79800A8755B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (203, N'18555555555', N'::1', CAST(0x0000A79800A89A55 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (204, N'admin', N'::1', CAST(0x0000A79800B1BAA6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (206, N'18555555555', N'::1', CAST(0x0000A79800BBF00A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (207, N'18555555555', N'::1', CAST(0x0000A79800E16A6B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (208, N'13777777777', N'::1', CAST(0x0000A79800E65EC9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (210, N'18555555555', N'::1', CAST(0x0000A79801006D14 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (211, N'admin', N'::1', CAST(0x0000A7980100A635 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (221, N'admin', N'::1', CAST(0x0000A7A20105FC81 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (223, N'15617985852', N'::1', CAST(0x0000A7A2010FC17D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (228, N'15617926642', N'192.168.1.26', CAST(0x0000A7A300930261 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (236, N'admin', N'::1', CAST(0x0000A7A500EE8E5B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (237, N'18555555555', N'::1', CAST(0x0000A7A500EEEFC1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (238, N'admin', N'::1', CAST(0x0000A7A800F4C8F4 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (239, N'admin', N'::1', CAST(0x0000A7A80104BFC1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (242, N'18555555555', N'192.168.1.20', CAST(0x0000A7A8010FD8A4 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (244, N'admin', N'192.168.1.20', CAST(0x0000A7A80113C65B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (245, N'18555555555', N'192.168.1.20', CAST(0x0000A7A801142568 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (246, N'18555555555', N'192.168.1.20', CAST(0x0000A7A801152B3C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (247, N'18555555555', N'192.168.1.20', CAST(0x0000A7A801159AA0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (248, N'18555555555', N'192.168.1.20', CAST(0x0000A7A80115C504 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (249, N'18555555555', N'192.168.1.20', CAST(0x0000A7A801162B60 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (250, N'admin', N'192.168.1.20', CAST(0x0000A7A8011710FC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (61, N'admin', N'::1', CAST(0x0000A78A00AEDF07 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (62, N'admin', N'::1', CAST(0x0000A78A00AEE16E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (66, N'admin', N'::1', CAST(0x0000A78B00A5A01C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (67, N'admin', N'::1', CAST(0x0000A78B00A5B250 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (68, N'admin', N'::1', CAST(0x0000A78B00A63665 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (71, N'admin', N'::1', CAST(0x0000A78B00A8306A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (72, N'admin', N'::1', CAST(0x0000A78B00A8D704 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (73, N'15617926640', N'::1', CAST(0x0000A78B00A90CFA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (74, N'admin', N'::1', CAST(0x0000A78B00B7087F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (78, N'admin', N'::1', CAST(0x0000A78B00CC303C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (91, N'admin', N'::1', CAST(0x0000A78B00F383C2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (92, N'15617926640', N'::1', CAST(0x0000A78B00FF7CCC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (95, N'15617926640', N'::1', CAST(0x0000A78B01291859 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (96, N'15617926640', N'::1', CAST(0x0000A78B01299DC4 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (102, N'admin', N'192.168.1.26', CAST(0x0000A78C00A518D3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (103, N'admin', N'192.168.1.26', CAST(0x0000A78C00E209E7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (104, N'admin', N'::1', CAST(0x0000A78C00E3A501 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (105, N'15617926640', N'::1', CAST(0x0000A78C00E3FB60 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (106, N'15617926640', N'::1', CAST(0x0000A78C00EC080A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (107, N'admin', N'::1', CAST(0x0000A78C00ED895A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (108, N'15617926640', N'192.168.1.14', CAST(0x0000A78C00F94D9E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (109, N'15617926640', N'192.168.1.14', CAST(0x0000A78C00F98854 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (111, N'admin', N'::1', CAST(0x0000A78C0103BA3B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (116, N'admin', N'192.168.1.26', CAST(0x0000A78C0161B341 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (117, N'admin', N'192.168.1.26', CAST(0x0000A78C0161BF28 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (118, N'admin', N'192.168.1.26', CAST(0x0000A78C016DBE6F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (119, N'15617926640', N'::1', CAST(0x0000A78D00930087 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (122, N'15617926640', N'::1', CAST(0x0000A78D009B12D9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (123, N'15617926640', N'::1', CAST(0x0000A78D009B33CA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (125, N'15617926640', N'::1', CAST(0x0000A78D00A388E2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (136, N'15617926640', N'::1', CAST(0x0000A79200FA0CF7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (137, N'15617926640', N'::1', CAST(0x0000A79200FCF873 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (142, N'admin', N'::1', CAST(0x0000A79201121C94 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (143, N'admin', N'::1', CAST(0x0000A7920114A35C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (164, N'18555555555', N'::1', CAST(0x0000A79400E8A359 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (201, N'admin', N'::1', CAST(0x0000A79800A72123 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (209, N'18555555555', N'::1', CAST(0x0000A79800F41691 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (225, N'18555555555', N'::1', CAST(0x0000A7A2011B6E20 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (253, N'18555555555', N'192.168.1.20', CAST(0x0000A7A8012376F1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (254, N'18555555555', N'::1', CAST(0x0000A7A80123F97C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (258, N'admin', N'::1', CAST(0x0000A7AC00E54EFF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (259, N'admin', N'::1', CAST(0x0000A7AC00E6BB45 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (260, N'15617926640', N'::1', CAST(0x0000A7AC011A9270 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (261, N'admin', N'::1', CAST(0x0000A7AD00A73CCA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
GO
print 'Processed 200 total records'
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (263, N'15617926640', N'::1', CAST(0x0000A7AD00E710F6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (265, N'admin', N'::1', CAST(0x0000A7B300EC868A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (269, N'18555555555', N'::1', CAST(0x0000A7B400BE7501 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (270, N'18555555555', N'::1', CAST(0x0000A7B400BEAE73 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (271, N'18555555555', N'::1', CAST(0x0000A7B400BED6AA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (272, N'18555555555', N'::1', CAST(0x0000A7B400BEF903 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (273, N'18555555555', N'::1', CAST(0x0000A7B400BF2603 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (274, N'admin', N'::1', CAST(0x0000A7B400FA9C56 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (276, N'18555555555', N'::1', CAST(0x0000A7B4010DD7B4 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (277, N'18555555555', N'::1', CAST(0x0000A7B40112CE70 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (278, N'admin', N'::1', CAST(0x0000A7B40113A7BC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (282, N'18555555555', N'::1', CAST(0x0000A7B401172E7B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (284, N'admin', N'::1', CAST(0x0000A7B5010E2B50 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (287, N'13666666666', N'192.168.1.40', CAST(0x0000A7B5011044F6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (288, N'baoma888', N'::1', CAST(0x0000A7B70098A46C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (289, N'baoma888', N'::1', CAST(0x0000A7B70098A502 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (294, N'baoma888', N'::1', CAST(0x0000A7B700A5067E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (295, N'18595536556', N'::1', CAST(0x0000A7B700A6EDAB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (296, N'baoma888', N'::1', CAST(0x0000A7B700A86BE8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (297, N'baoma888', N'192.168.1.20', CAST(0x0000A7B700B91F6A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (298, N'baoma888', N'::1', CAST(0x0000A7B700BC0487 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (299, N'baoma888', N'::1', CAST(0x0000A7B700BC05B0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (300, N'18595536556', N'192.168.1.20', CAST(0x0000A7B700BE1802 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (301, N'18595536556', N'192.168.1.40', CAST(0x0000A7B700BE7EEF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (306, N'baoma888', N'192.168.1.20', CAST(0x0000A7B70101793E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (307, N'baoma888', N'192.168.1.20', CAST(0x0000A7B70112400D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (308, N'18530079591', N'192.168.1.20', CAST(0x0000A7B70112F4DE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (309, N'baoma888', N'::1', CAST(0x0000A7B701134CE7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (313, N'baoma888', N'192.168.1.20', CAST(0x0000A7B7012550EE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (316, N'15617926640', N'::1', CAST(0x0000A7BA00A9F2B1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (322, N'18530079591', N'::1', CAST(0x0000A7BA013412AA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (327, N'baoma888', N'192.168.1.20', CAST(0x0000A7BB00E45C6D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (328, N'baoma888', N'::1', CAST(0x0000A7BB00E49C98 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (329, N'baoma888', N'::1', CAST(0x0000A7BB00E66D90 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (330, N'13783840432', N'::1', CAST(0x0000A7BB00E8563B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (334, N'13783840432', N'192.168.1.20', CAST(0x0000A7BB00F20BEE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (335, N'baoma888', N'192.168.1.20', CAST(0x0000A7BB00F34911 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (336, N'13783840432', N'192.168.1.20', CAST(0x0000A7BB00F4DC89 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (337, N'13783840432', N'::1', CAST(0x0000A7BB01047B05 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (339, N'baoma888', N'::1', CAST(0x0000A7BB010C3741 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (340, N'baoma888', N'::1', CAST(0x0000A7BB010C3843 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (343, N'baoma888', N'192.168.1.20', CAST(0x0000A7BB01182F6B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (346, N'baoma888', N'192.168.1.20', CAST(0x0000A7BB0121AE41 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (347, N'18530079591', N'::1', CAST(0x0000A7BB01253020 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (348, N'18530079591', N'192.168.1.20', CAST(0x0000A7BB012B849D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (353, N'baoma888', N'::1', CAST(0x0000A7BC0112B1AE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (357, N'baoma888', N'::1', CAST(0x0000A7BD013512A0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (358, N'baoma888', N'::1', CAST(0x0000A7BD013513CB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (359, N'18530079591', N'::1', CAST(0x0000A7BD01353FF7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (361, N'18530079591', N'192.168.1.20', CAST(0x0000A7BD0138C07A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (362, N'baoma888', N'192.168.1.20', CAST(0x0000A7BF00997A8D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (366, N'baoma888', N'::1', CAST(0x0000A7C400EC8F0B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (124, N'15617926640', N'::1', CAST(0x0000A78D00A344DB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (128, N'admin', N'::1', CAST(0x0000A78D01062915 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (132, N'18555555555', N'::1', CAST(0x0000A78D0113CC22 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (149, N'15617926640', N'::1', CAST(0x0000A7920121E7F5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (183, N'18555555555', N'::1', CAST(0x0000A795010AAB5A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (184, N'18555555555', N'::1', CAST(0x0000A795010AD013 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (205, N'18555555555', N'::1', CAST(0x0000A79800B3D9CA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (285, N'13666666666', N'192.168.1.40', CAST(0x0000A7B5010EF2FF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (286, N'13666666666', N'192.168.1.40', CAST(0x0000A7B5010F2019 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (318, N'baoma888', N'192.168.1.20', CAST(0x0000A7BA00BE801D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (323, N'13783840432', N'192.168.1.20', CAST(0x0000A7BB00B88072 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (324, N'13783840432', N'192.168.1.20', CAST(0x0000A7BB00B8A202 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (354, N'18530079591', N'::1', CAST(0x0000A7BC01174A29 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (360, N'baoma888', N'192.168.1.20', CAST(0x0000A7BD0137A36F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (148, N'admin', N'::1', CAST(0x0000A792011C01C1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (150, N'15617926640', N'::1', CAST(0x0000A79201222DCE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (153, N'admin', N'192.168.1.27', CAST(0x0000A7920144B1F1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (163, N'admin', N'192.168.1.26', CAST(0x0000A79400E866F2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (167, N'admin', N'::1', CAST(0x0000A79500F8969C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (168, N'18555555555', N'::1', CAST(0x0000A79500F8B58A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (170, N'18555555555', N'::1', CAST(0x0000A79501028497 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (171, N'admin', N'::1', CAST(0x0000A7950106CA74 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (172, N'18555555555', N'::1', CAST(0x0000A79501075A32 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (173, N'18555555555', N'::1', CAST(0x0000A79501076261 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (174, N'18555555555', N'::1', CAST(0x0000A7950107B9D7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (175, N'18555555555', N'::1', CAST(0x0000A79501080472 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (176, N'18555555555', N'::1', CAST(0x0000A79501081792 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (177, N'18555555555', N'::1', CAST(0x0000A79501087A67 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (178, N'18555555555', N'::1', CAST(0x0000A7950108B1A1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (179, N'18555555555', N'::1', CAST(0x0000A7950109AFD6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (180, N'18555555555', N'::1', CAST(0x0000A7950109DA57 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (181, N'18555555555', N'::1', CAST(0x0000A7950109E49F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (182, N'18555555555', N'::1', CAST(0x0000A7950109FC76 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (186, N'18555555555', N'::1', CAST(0x0000A795010BA165 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (189, N'18555555555', N'::1', CAST(0x0000A795010CBD4E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (190, N'18555555555', N'::1', CAST(0x0000A795010CDA1D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (191, N'18555555555', N'::1', CAST(0x0000A795010D0305 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (212, N'18555555555', N'::1', CAST(0x0000A798011CF87C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (213, N'18555555555', N'::1', CAST(0x0000A7980122BB69 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (214, N'admin', N'192.168.1.26', CAST(0x0000A79801274B70 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (215, N'18555555555', N'192.168.1.26', CAST(0x0000A79801286C9A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (216, N'13888888888', N'192.168.1.26', CAST(0x0000A7980128BFA8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (220, N'13666666666', N'192.168.1.26', CAST(0x0000A7990094A7D7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (222, N'18555555555', N'::1', CAST(0x0000A7A20106C5D5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (226, N'admin', N'192.168.1.26', CAST(0x0000A7A3008F5C38 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (227, N'admin', N'192.168.1.26', CAST(0x0000A7A300901E22 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (229, N'admin', N'::1', CAST(0x0000A7A30094554C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (230, N'18595536556', N'192.168.1.16', CAST(0x0000A7A3009A1405 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (232, N'18555555555', N'::1', CAST(0x0000A7A30119C6A8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
GO
print 'Processed 300 total records'
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (234, N'admin', N'192.168.1.26', CAST(0x0000A7A3011A64F3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (235, N'18555555555', N'192.168.1.26', CAST(0x0000A7A3011AC052 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (240, N'admin', N'::1', CAST(0x0000A7A8010AAEA9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (241, N'admin', N'192.168.1.20', CAST(0x0000A7A8010F1612 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (243, N'18555555555', N'::1', CAST(0x0000A7A801107A81 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (251, N'admin', N'::1', CAST(0x0000A7A8011F01FE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (255, N'admin', N'192.168.1.20', CAST(0x0000A7A80127FB84 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (256, N'18555555555', N'192.168.1.20', CAST(0x0000A7A801283C75 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (279, N'13666666666', N'192.168.1.20', CAST(0x0000A7B401144030 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (291, N'baoma888', N'192.168.1.20', CAST(0x0000A7B700A1B939 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (333, N'baoma888', N'192.168.1.20', CAST(0x0000A7BB00EF5E2A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (364, N'baoma888', N'192.168.1.20', CAST(0x0000A7BF00B8A68D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (365, N'baoma888', N'192.168.1.20', CAST(0x0000A7C30123F057 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (166, N'18555555555', N'::1', CAST(0x0000A79400F0C432 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (169, N'18555555555', N'::1', CAST(0x0000A79500FBBC18 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (217, N'admin', N'192.168.1.26', CAST(0x0000A799009017EC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (218, N'admin', N'192.168.1.26', CAST(0x0000A79900904651 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (219, N'18555555555', N'192.168.1.26', CAST(0x0000A7990090A331 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (224, N'18555555555', N'::1', CAST(0x0000A7A2011136CB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (231, N'admin', N'::1', CAST(0x0000A7A30118EABF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (233, N'18555555555', N'::1', CAST(0x0000A7A301191F44 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (252, N'admin', N'::1', CAST(0x0000A7A80123058B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (262, N'15617926640', N'::1', CAST(0x0000A7AD00AE6A6A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (331, N'baoma888', N'::1', CAST(0x0000A7BB00E94B00 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (349, N'18530079591', N'192.168.1.20', CAST(0x0000A7BB012D2D0D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (363, N'baoma888', N'::1', CAST(0x0000A7BF009A4868 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (257, N'admin', N'::1', CAST(0x0000A7A801317B1E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (264, N'15617926640', N'::1', CAST(0x0000A7AD00E7A18A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (266, N'18555555555', N'::1', CAST(0x0000A7B300EDC6D3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (280, N'18555555555', N'::1', CAST(0x0000A7B40115C9B7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (283, N'18555555555', N'::1', CAST(0x0000A7B401179E9F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (290, N'baoma888', N'::1', CAST(0x0000A7B700A047ED AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (321, N'baoma888', N'::1', CAST(0x0000A7BA013149C0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (325, N'baoma888', N'192.168.1.20', CAST(0x0000A7BB00B95A30 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (352, N'baoma888', N'::1', CAST(0x0000A7BC0102E32B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (355, N'baoma888', N'::1', CAST(0x0000A7BD009C23ED AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (267, N'18555555555', N'::1', CAST(0x0000A7B300FA8CFF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (275, N'18555555555', N'::1', CAST(0x0000A7B4010DC8D6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (281, N'13666666666', N'192.168.1.20', CAST(0x0000A7B401170E8F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (292, N'18595536556', N'192.168.1.20', CAST(0x0000A7B700A2B93B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (293, N'baoma888', N'::1', CAST(0x0000A7B700A35160 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (302, N'baoma888', N'::1', CAST(0x0000A7B700BF2185 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (304, N'baoma888', N'::1', CAST(0x0000A7B700E1CC63 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (305, N'18530079591', N'::1', CAST(0x0000A7B700E5145C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (310, N'baoma888', N'::1', CAST(0x0000A7B701218038 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (311, N'baoma888', N'::1', CAST(0x0000A7B7012180C2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (312, N'18530079591', N'::1', CAST(0x0000A7B70121B71C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (317, N'18595536556', N'::1', CAST(0x0000A7BA00AAD6BD AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (319, N'baoma888', N'192.168.1.20', CAST(0x0000A7BA00CC9C7E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (320, N'15617926642', N'192.168.1.20', CAST(0x0000A7BA00CF9A59 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (326, N'baoma888', N'::1', CAST(0x0000A7BB00E17DBC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (332, N'13783840432', N'::1', CAST(0x0000A7BB00EA448A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (338, N'18595536556', N'192.168.1.20', CAST(0x0000A7BB0105C1A3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (341, N'baoma888', N'::1', CAST(0x0000A7BB010F9145 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (342, N'baoma888', N'::1', CAST(0x0000A7BB010F91DF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (344, N'baoma888', N'::1', CAST(0x0000A7BB0119D864 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (345, N'baoma888', N'::1', CAST(0x0000A7BB0119D98C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (350, N'baoma888', N'::1', CAST(0x0000A7BB01329A4F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (351, N'18530079591', N'::1', CAST(0x0000A7BB013334CE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (356, N'baoma888', N'::1', CAST(0x0000A7BD0126AA5E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (268, N'admin', N'192.168.1.20', CAST(0x0000A7B400BE1E4A AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (303, N'baoma888', N'192.168.1.20', CAST(0x0000A7B700CF810D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (314, N'baoma888', N'::1', CAST(0x0000A7BA009F00C2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (315, N'baoma888', N'::1', CAST(0x0000A7BA009F01E6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (371, N'18530079591', N'::1', CAST(0x0000A7C500F379B1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (372, N'13783840432', N'::1', CAST(0x0000A7C800A686B2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (374, N'13783840432', N'::1', CAST(0x0000A7C800AAEEFC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (376, N'baoma888', N'::1', CAST(0x0000A7C900AA208D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (377, N'15617926640', N'::1', CAST(0x0000A7C900AA5115 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (378, N'15617926640', N'::1', CAST(0x0000A7C900B9B8D0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (379, N'baoma888', N'::1', CAST(0x0000A7C900BDE921 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (380, N'15617926640', N'::1', CAST(0x0000A7C900ECA704 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (385, N'baoma888', N'::1', CAST(0x0000A7C90102F24B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (386, N'baoma888', N'::1', CAST(0x0000A7C90102F2E3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (387, N'baoma888', N'::1', CAST(0x0000A7C901048FF8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (389, N'baoma888', N'192.168.1.20', CAST(0x0000A7C9011083D7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (394, N'18530079591', N'192.168.1.20', CAST(0x0000A7C901196A5F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (396, N'18530079591', N'192.168.1.20', CAST(0x0000A7C9011EEE41 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (397, N'18530079591', N'::1', CAST(0x0000A7C9011F0347 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (399, N'baoma888', N'::1', CAST(0x0000A7C90125AA21 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (400, N'18530079591', N'::1', CAST(0x0000A7C901269D98 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (406, N'baoma888', N'::1', CAST(0x0000A7C9012DEFA5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (407, N'baoma888', N'::1', CAST(0x0000A7CA0097662F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (410, N'baoma888', N'::1', CAST(0x0000A7CA009BEE82 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (414, N'baoma888', N'::1', CAST(0x0000A7CA00A0FED9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (415, N'baoma888', N'::1', CAST(0x0000A7CA00A0FFFC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (416, N'baoma888', N'::1', CAST(0x0000A7CA00A1672F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (420, N'18530079591', N'::1', CAST(0x0000A7CA00AB6EB6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (421, N'caifu888', N'192.168.1.20', CAST(0x0000A7CA00ADC437 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (422, N'caifu888', N'::1', CAST(0x0000A7CA00B4C203 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (424, N'caifu888', N'::1', CAST(0x0000A7CA00E32ACB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (425, N'15617926640', N'::1', CAST(0x0000A7CA00E42341 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (426, N'caifu888', N'::1', CAST(0x0000A7CB00C0C797 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (428, N'caifu888', N'::1', CAST(0x0000A7CB00E35EC7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (429, N'15617926640', N'::1', CAST(0x0000A7CB00E5ADD8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (430, N'caifu888', N'::1', CAST(0x0000A7CB0119BE59 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (431, N'caifu888', N'::1', CAST(0x0000A7CB011E9927 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (432, N'caifu888', N'192.168.1.20', CAST(0x0000A7CB01200215 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (439, N'caifu888', N'::1', CAST(0x0000A7D200E357B6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (367, N'baoma888', N'::1', CAST(0x0000A7C5009BC50B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (368, N'18530079591', N'::1', CAST(0x0000A7C500EA608D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
GO
print 'Processed 400 total records'
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (369, N'18530079591', N'::1', CAST(0x0000A7C500EF6F3C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (370, N'18530079591', N'::1', CAST(0x0000A7C500EF8AA9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (373, N'13783840432', N'::1', CAST(0x0000A7C800AA6946 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (375, N'baoma888', N'::1', CAST(0x0000A7C9009BD6B0 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (381, N'baoma888', N'::1', CAST(0x0000A7C900ED4A10 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (382, N'baoma888', N'::1', CAST(0x0000A7C900ED4AA6 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (383, N'baoma888', N'::1', CAST(0x0000A7C900FA5CAC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (384, N'baoma888', N'::1', CAST(0x0000A7C9010228EC AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (390, N'baoma888', N'::1', CAST(0x0000A7C90110F113 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (391, N'baoma888', N'192.168.1.20', CAST(0x0000A7C90112A5C2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (395, N'15617926640', N'::1', CAST(0x0000A7C9011A85BA AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (398, N'18530079591', N'192.168.1.20', CAST(0x0000A7C901231706 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (401, N'18530079591', N'192.168.1.20', CAST(0x0000A7C901271B66 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (402, N'baoma888', N'192.168.1.20', CAST(0x0000A7C901277C65 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (403, N'18530079591', N'192.168.1.20', CAST(0x0000A7C9012B4AA2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (404, N'baoma888', N'192.168.1.20', CAST(0x0000A7C9012B81CE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (405, N'18530079591', N'::1', CAST(0x0000A7C9012B8B04 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (411, N'baoma888', N'::1', CAST(0x0000A7CA009D59BD AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (412, N'18530079591', N'::1', CAST(0x0000A7CA009FD578 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (413, N'baoma888', N'192.168.1.20', CAST(0x0000A7CA00A097E9 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (423, N'caifu888', N'::1', CAST(0x0000A7CA00BFC001 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (427, N'caifu888', N'192.168.1.20', CAST(0x0000A7CB00E26CF8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (433, N'caifu888', N'::1', CAST(0x0000A7CB01208246 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (434, N'15617926640', N'::1', CAST(0x0000A7CB012151CD AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (435, N'caifu888', N'192.168.1.20', CAST(0x0000A7CC0113B64C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (436, N'caifu888', N'::1', CAST(0x0000A7CC011E413B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (437, N'caifu888', N'::1', CAST(0x0000A7CD0108865D AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (438, N'caifu888', N'::1', CAST(0x0000A7CD010886E2 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (388, N'baoma888', N'::1', CAST(0x0000A7C9010A0777 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (393, N'18530079591', N'192.168.1.40', CAST(0x0000A7C90117F00F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (408, N'baoma888', N'::1', CAST(0x0000A7CA009A8F91 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (409, N'baoma888', N'::1', CAST(0x0000A7CA009ABDD4 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (417, N'caifu888', N'::1', CAST(0x0000A7CA00A2EEF8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (418, N'caifu888', N'::1', CAST(0x0000A7CA00A2F09B AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (419, N'caifu888', N'192.168.1.20', CAST(0x0000A7CA00A69705 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (392, N'15617926640', N'::1', CAST(0x0000A7C90117B058 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (440, N'caifu888', N'::1', CAST(0x0000A7D8009AE956 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (441, N'caifu888', N'::1', CAST(0x0000A7D8011A03DF AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (442, N'caifu888', N'::1', CAST(0x0000A7D801231ADE AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (443, N'caifu888', N'::1', CAST(0x0000A7D801484329 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (444, N'caifu888', N'::1', CAST(0x0000A7D8015190E7 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (446, N'admin', N'::1', CAST(0x0000A7D8016C7BC1 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (447, N'admin', N'::1', CAST(0x0000A7D8016C7C58 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (448, N'admin', N'::1', CAST(0x0000A7D900977756 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (451, N'admin', N'::1', CAST(0x0000A7D901275D84 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (452, N'admin', N'::1', CAST(0x0000A7DA00A65CF5 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (453, N'admin', N'::1', CAST(0x0000A7DA00B40881 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (454, N'admin', N'::1', CAST(0x0000A7DA00F5BA3E AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (455, N'admin', N'::1', CAST(0x0000A7DA00FE792F AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (458, N'admin', N'::1', CAST(0x0000A7DB00F66B18 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (459, N'admin', N'::1', CAST(0x0000A7DB00F6BA48 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (460, N'admin', N'::1', CAST(0x0000A7DB01035FE8 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (461, N'admin', N'::1', CAST(0x0000A7DB010368CB AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (445, N'caifu888', N'::1', CAST(0x0000A7D8016C5198 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (449, N'admin', N'::1', CAST(0x0000A7D900BF23A3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (450, N'admin', N'::1', CAST(0x0000A7D900E51AF3 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (456, N'admin', N'::1', CAST(0x0000A7DA01041098 AS DateTime), CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[IPClick] ([Id], [MID], [IP], [ClickTime], [Money]) VALUES (457, N'admin', N'::1', CAST(0x0000A7DA011B0B9C AS DateTime), CAST(0.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[IPClick] OFF
/****** Object:  Table [dbo].[ImpType]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImpType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Remark] [varchar](150) NULL,
 CONSTRAINT [PK_ImpType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ImpType] ON
INSERT [dbo].[ImpType] ([ID], [Name], [Remark]) VALUES (2, N'frvvv', N'1111')
INSERT [dbo].[ImpType] ([ID], [Name], [Remark]) VALUES (3, N'Dwadwa', N'wdawdad')
SET IDENTITY_INSERT [dbo].[ImpType] OFF
/****** Object:  Table [dbo].[HKModel]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HKModel](
	[HKCode] [varchar](36) NOT NULL,
	[HKCreateDate] [datetime] NULL,
	[HKDate] [datetime] NULL,
	[MID] [varchar](30) NULL,
	[HKType] [int] NULL,
	[RealMoney] [decimal](18, 2) NULL,
	[ValidMoney] [decimal](18, 2) NULL,
	[FromBank] [varchar](50) NULL,
	[BankName] [varchar](20) NULL,
	[ToBank] [varchar](50) NULL,
	[HKState] [bit] NULL,
	[IsAuto] [bit] NULL,
	[Sign] [bit] NULL,
	[Remark] [varchar](max) NULL,
	[MajorKey] [varchar](50) NULL,
 CONSTRAINT [PK_HKModel] PRIMARY KEY CLUSTERED 
(
	[HKCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[HKModel] ([HKCode], [HKCreateDate], [HKDate], [MID], [HKType], [RealMoney], [ValidMoney], [FromBank], [BankName], [ToBank], [HKState], [IsAuto], [Sign], [Remark], [MajorKey]) VALUES (N'201708121636240287', CAST(0x0000A7CD01119C47 AS DateTime), CAST(0x0000A7CD01119C47 AS DateTime), N'15617926640', 1, CAST(998.60 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, NULL, NULL, 0, 0, 0, NULL, N'15617926640')
/****** Object:  Table [dbo].[GoodsPic]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoodsPic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GId] [varchar](50) NULL,
	[Code] [varchar](50) NULL,
	[PicURL] [varchar](500) NULL,
	[PicSize] [int] NULL,
	[IsMain] [bit] NULL,
	[Decription] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_GoodsPic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GoodsOrder]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoodsOrder](
	[OID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [varchar](50) NOT NULL,
	[GCount] [int] NULL,
	[GPrice] [int] NULL,
	[GPV] [int] NULL,
	[BuyDate] [datetime] NULL,
	[SendDate] [datetime] NULL,
	[OrderMID] [varchar](50) NULL,
	[MailingAddress] [varchar](255) NULL,
	[MemberName] [varchar](50) NULL,
	[MemberTel] [varchar](50) NULL,
	[Remark] [text] NULL,
	[IfPay] [bit] NULL,
	[IfSendGoods] [bit] NULL,
	[Sign] [bit] NULL,
	[MoneyType] [varchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Goods](
	[GID] [int] IDENTITY(1,1) NOT NULL,
	[GoodsCode] [varchar](50) NOT NULL,
	[GParentCode] [varchar](50) NULL,
	[GParentName] [varchar](50) NULL,
	[GName] [varchar](50) NULL,
	[CostPrice] [decimal](18, 2) NULL,
	[CostPV] [decimal](18, 2) NULL,
	[MemberPrice] [decimal](18, 2) NULL,
	[MemberPV] [decimal](18, 2) NULL,
	[GroupPrice] [decimal](18, 2) NULL,
	[GroupPV] [decimal](18, 2) NULL,
	[ImageAddr] [varchar](255) NULL,
	[SelledCount] [int] NULL,
	[SellingCount] [int] NULL,
	[Unit] [varchar](10) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
	[Remark] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GoodCategory]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GoodCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[ParentCode] [varchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_GoodCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FundType]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FundType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Remark] [varchar](150) NULL,
 CONSTRAINT [PK_FundType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经费来源ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FundType', @level2type=N'COLUMN',@level2name=N'ID'
GO
SET IDENTITY_INSERT [dbo].[FundType] ON
INSERT [dbo].[FundType] ([ID], [Name], [Remark]) VALUES (1, N'经费来源1', N'对对对2222')
SET IDENTITY_INSERT [dbo].[FundType] OFF
/****** Object:  Table [dbo].[FHList]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FHList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SumFHMoney] [int] NULL,
	[FHFloat] [decimal](18, 4) NULL,
	[FHTotal] [int] NULL,
	[FHDate] [datetime] NULL,
	[FHType] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EPList]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EPList](
	[EPID] [int] IDENTITY(1,1) NOT NULL,
	[SellMID] [varchar](50) NULL,
	[SellDate] [datetime] NULL,
	[MoneyType] [varchar](20) NULL,
	[Money] [int] NULL,
	[SellState] [int] NULL,
	[BuyMID] [varchar](50) NULL,
	[BuyDate] [datetime] NULL,
	[LastBuyDate] [datetime] NULL,
	[LastSellDate] [datetime] NULL,
	[TakeOffMoney] [decimal](18, 2) NULL,
	[SellType] [varchar](50) NULL,
	[epPwd] [varchar](50) NULL,
	[MHGMoney] [int] NULL,
	[EPImg] [varchar](100) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_EPList] PRIMARY KEY CLUSTERED 
(
	[EPID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EPJX]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EPJX](
	[EPJXTime] [datetime] NULL,
	[JXID] [int] IDENTITY(1,1) NOT NULL,
	[EPJXRemark] [varchar](200) NULL,
	[EPJXMID] [varchar](50) NULL,
 CONSTRAINT [PK_EPJX_1] PRIMARY KEY CLUSTERED 
(
	[JXID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EPConfig]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EPConfig](
	[EPState] [bit] NULL,
	[EPStartTime] [datetime] NULL,
	[EPEndTime] [datetime] NULL,
	[EPJYType] [int] NULL,
	[EPJYMinMoney] [int] NULL,
	[EPJYBaseMoney] [int] NULL,
	[EPMoneyStr] [varchar](100) NULL,
	[EPProtocol] [text] NULL,
	[EPMoneyType] [varchar](50) NULL,
	[EPTimeOut] [int] NULL,
	[EPTimeOutCount] [int] NULL,
	[EPTimeOutJXCount] [int] NULL,
	[EPJYMAgencyTypeStr] [varchar](100) NULL,
	[EPTakeOff] [decimal](18, 4) NULL,
	[EPMHGFloat] [decimal](18, 4) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[EPConfig] ([EPState], [EPStartTime], [EPEndTime], [EPJYType], [EPJYMinMoney], [EPJYBaseMoney], [EPMoneyStr], [EPProtocol], [EPMoneyType], [EPTimeOut], [EPTimeOutCount], [EPTimeOutJXCount], [EPJYMAgencyTypeStr], [EPTakeOff], [EPMHGFloat]) VALUES (1, CAST(0x0000A55000000000 AS DateTime), CAST(0x0000A550018B3BB0 AS DateTime), 1, 20, 1, N'', N'<p><strong><span style="color:#ff0000">1.玩家已阅读及明白富达亚洲网EP交易平台协议书。</span></strong></p><p><strong><span style="color:#ff0000">2.玩家使用EP交易平台进行交易时，确认订单后，交易双方线下汇款交易或当面交易时出现的错误（例如：汇错金额，汇错卡号，假货币等）与本公司无关，并且本公司不承担任何法律责任。</span></strong></p><p><strong><span style="color:#ff0000">3.玩家使用EP交易平台进行交易时，因个人原因而导致的错误交易（例如：买卖倒置，订单选择错误等），公司不予进行数据恢复。</span></strong></p><p><strong><span style="color:#ff0000">4.在此交易过程中，本公司工作人员不会向任何玩家索要会员账号的密码和银行卡的密码，若出现个人账户货币丢失、存款丢失、或在30天内不提交咨询逾期等情况，与本公司无关，并且本公司不承担任何法律责任。</span></strong></p><p><strong><span style="color:#ff0000">注：玩家如需向本公司客服人员提供银行汇款回执单作为汇款证明时，请将银行回执单（彩色扫描件）发送邮件至本公司客服邮箱，复印件、传真件均属无效。 </span></strong></p><p><strong><span style="color:#ff0000">客服QQ：3024661164</span></strong></p><p><strong><span style="color:#ff0000">客服邮箱：3024661164@qq.com</span></strong></p><p><strong><span style="color:#ff0000">此协议最终解释权归本系统所有</span></strong></p><p><br /></p>', N'MHB', 60, 10, 1, N'', CAST(0.0500 AS Decimal(18, 4)), CAST(0.5000 AS Decimal(18, 4)))
/****** Object:  Table [dbo].[DepartType]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DepartType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Remark] [varchar](150) NULL,
 CONSTRAINT [PK_DepartType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DepartType] ON
INSERT [dbo].[DepartType] ([ID], [Name], [Remark]) VALUES (2, N'批复部门', N'frVVV')
SET IDENTITY_INSERT [dbo].[DepartType] OFF
/****** Object:  Table [dbo].[Contents]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contents](
	[CID] [varchar](10) NOT NULL,
	[CTitle] [varchar](20) NULL,
	[CLevel] [int] NOT NULL,
	[CAddress] [varchar](100) NULL,
	[CFID] [varchar](10) NOT NULL,
	[CState] [bit] NOT NULL,
	[CIndex] [int] NOT NULL,
	[CImage] [varchar](100) NULL,
	[VState] [bit] NULL,
	[IsQuickMenu] [bit] NULL,
	[Remark] [varchar](150) NULL,
	[IsOuterLink] [bit] NULL,
	[OuterAddress] [varchar](100) NULL,
 CONSTRAINT [PK_Contents] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'000', N'系统', 1, N'/Default.aspx', N'0', 1, 0, NULL, 0, 0, NULL, 0, N'/Default.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001', N'信息管理', 1, N'', N'0', 0, 1, N'icon-book', 1, 0, NULL, 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001001', N'个人资料', 2, N'/Member/View.aspx', N'001', 0, 1, N'', 1, 1, N'Attachment/2015619171511700.png', 0, N'/mobile/html/View.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001002', N'完善资料', 2, N'/Member/Modify.aspx', N'001', 0, 2, N'', 1, 1, N'Attachment/20156191788889.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001003', N'分红统计', 2, N'/Member/MemberYJList.aspx', N'001', 0, 3, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001004', N'银行卡管理', 2, N'/SecurityCenter/BankList.aspx', N'001', 0, 4, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001005', N'添加银行卡', 2, N'/SecurityCenter/AddBankInfo.aspx', N'001', 0, 5, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001006', N'修改银行卡', 2, N'/SecurityCenter/ModifyBankInfo.aspx', N'001', 0, 6, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001007', N'自助激活', 2, N'/Member/SHMember.aspx', N'001', 0, 7, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001008', N'帐号复投', 2, N'/Member/SHMemberFT.aspx', N'001', 0, 8, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001009', N'我的红包', 2, N'/Member/LuckyMoneyList.aspx', N'001', 0, 9, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001010', N'我要投资', 2, N'/Member/AddUp.aspx', N'001', 0, 10, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001011', N'我的链接', 2, N'/Member/MyLink.aspx', N'001', 0, 11, N'', 1, 0, N'', 0, N'/mobile/html/Code.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001012', N'我要升级', 2, N'/Member/UpMemberSJ.aspx', N'001', 0, 12, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'001013', N'我要投资', 2, N'/Member/AddUpActive.aspx', N'001', 0, 10, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002', N'财务管理', 1, N'', N'0', 1, 2, N'icon-tasks', 1, 0, N'', 0, N'/mobile/html/CW.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002001', N'会员充值', 2, N'/ChangeMoney/HBGM.aspx', N'002', 1, 1, N'', 0, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002002', N'充值查询', 2, N'/ChangeMoney/GMList.aspx', N'002', 1, 2, N'', 1, 0, N'', 0, N'/mobile/html/GMList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002003', N'提现申请', 2, N'/ChangeMoney/TXChange.aspx', N'002', 0, 3, N'', 0, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002004', N'提现管理', 2, N'/ChangeMoney/TXList.aspx', N'002', 0, 4, N'', 1, 1, N'', 0, N'/mobile/html/TXList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002005', N'我要转账', 2, N'/ChangeMoney/HBChange.aspx', N'002', 0, 5, N'', 0, 1, N'Attachment/20156192069700.png', 0, N'/mobile/html/HBChange.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002006', N'转账查询', 2, N'/ChangeMoney/HBList.aspx', N'002', 0, 6, N'', 1, 1, N'Attachment/2015619205227773.png', 0, N'/mobile/html/HBList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002007', N'奖金明细', 2, N'/ChangeMoney/JJList.aspx', N'002', 0, 7, N'', 1, 1, N'Attachment/201561920511216.png', 0, N'/mobile/html/JJList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002008', N'奖金查询', 2, N'/ChangeMoney/JJJLList.aspx', N'002', 0, 8, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002010', N'升级记录', 2, N'/ChangeMoney/HTSJList.aspx', N'002', 0, 9, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002011', N'财务总账', 2, N'/Welcome.aspx', N'002', 0, 15, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002012', N'拨比流水', 2, N'/ChangeMoney/Finance.aspx', N'002', 0, 14, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002013', N'汇款管理', 2, N'/ChangeMoney/HKList.aspx', N'002', 1, 12, N'', 1, 0, N'Attachment/2015619204611239.png', 0, N'/mobile/html/HKList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002014', N'支付宝快速入金', 2, N'/ChangeMoney/HKChangeFlow.aspx', N'002', 0, 13, N'', 1, 0, N'', 0, N'/mobile/html/HKChangeFlow.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002015', N'网银支付', 2, N'/ChangeMoney/PayHB.aspx', N'002', 0, 14, N'', 1, 1, N'Attachment/2015619202211727.png', 0, N'/mobile/html/PayHB.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002016', N'收支流水', 2, N'/ChangeMoney/DayLiuShui.aspx', N'002', 0, 15, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002018', N'奖励会员', 2, N'/ChangeMoney/HBJL.aspx', N'002', 0, 18, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002020', N'在线充值', 2, N'/ChangeMoney/KLTPay.aspx', N'002', 0, 19, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002021', N'货币转换', 2, N'/ChangeMoney/HBToJBChange.aspx', N'002', 0, 20, N'', 0, 1, N'Attachment/2015619205210873.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002022', N'扣费记录', 2, N'/ChangeMoney/KFList.aspx', N'002', 0, 21, N'', 1, 1, N'Attachment/2015619205210873.png', 0, N'/mobile/html/KFList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002023', N'会员扣费', 2, N'/ChangeMoney/KFChange.aspx', N'002', 0, 22, N'', 0, 1, N'Attachment/2015619205210873.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002024', N'公益基金', 2, N'/ChangeMoney/GYJJ.aspx', N'002', 0, 23, N'', 1, 1, N'Attachment/2015619205210873.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002025', N'退出平台', 2, N'/ChangeMoney/QuitSys.aspx', N'002', 0, 25, N'', 1, 1, N'Attachment/2015619205210873.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002026', N'退出审核', 2, N'/ChangeMoney/QuitRecord.aspx', N'002', 0, 26, N'', 1, 1, N'Attachment/2015619205210873.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002027', N'审核操作', 2, N'/ChangeMoney/QuitSH.aspx', N'002', 0, 27, N'', 0, 1, N'Attachment/2015619205210873.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002028', N'网银汇款', 2, N'/ChangeMoney/HKChangeWY.aspx', N'002', 0, 13, N'', 1, 0, N'', 0, N'/mobile/html/HKChangeWY.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'002029', N'在线充值', 2, N'/ChangeMoney/AdminPayHB.aspx', N'002', 0, 14, N'', 1, 1, N'Attachment/2015619202211727.png', 0, N'/mobile/html/PayHB.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'003', N'奖金结算', 1, N'', N'0', 0, 3, N'icon-glass', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'003001', N'结算明细', 2, N'/PrizePool/AccountsList.aspx', N'003', 0, 1, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'003002', N'日分红结算', 2, N'/PrizePool/JTFHAccounts.aspx', N'003', 0, 2, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'003003', N'季度分红结算', 3, N'/PrizePool/DTFHAccounts.aspx', N'003', 0, 3, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004', N'团队管理', 1, N'', N'0', 1, 4, N'icon-user', 1, 0, N'', 0, N'/mobile/html/TD.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004001', N'注册会员', 2, N'/Member/Add.aspx', N'004', 0, 1, N'', 1, 1, N'', 0, N'/mobile/html/ADD.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004002', N'审核资料', 2, N'/Member/SHList.aspx', N'004', 0, 2, N'', 1, 0, N'Attachment/2015619203715193.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004003', N'会员列表', 2, N'/Member/List.aspx', N'004', 1, 0, N'', 1, 1, N'Attachment/2015619202814372.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004005', N'收入统计', 2, N'/Member/MemberYJList.aspx', N'004', 0, 4, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004006', N'团队图谱', 2, N'/Member/Structure.aspx', N'004', 0, 5, N'', 1, 1, N'Attachment/2015619205315562.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004007', N'推荐列表', 2, N'/Member/TJList.aspx', N'004', 0, 6, N'', 1, 0, NULL, 0, N'/mobile/html/TJList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004008', N'快捷设置', 2, N'/Member/ShortcutSet.aspx', N'004', 0, 7, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004009', N'推荐图谱', 2, N'/Member/TJNet.aspx', N'004', 0, 8, N'', 1, 1, N'', 0, N'/mobile/html/TJTree.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004010', N'修改资料', 2, N'/Member/ModifyMember.aspx', N'004', 0, 9, N'', 0, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004011', N'推荐图谱', 2, N'/Member/TJTree.aspx', N'004', 0, 10, N'', 0, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004014', N'我的市场', 2, N'/Member/MyTJBDList.aspx', N'004', 0, 11, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004015', N'申请代理', 0, N'/Member/BCenterAdd.aspx', N'004', 0, 12, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004019', N'审批代理', 0, N'/Member/BCenterList.aspx', N'004', 0, 13, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004020', N'激活金种子', 2, N'/Member/SHJZZList.aspx', N'004', 0, 14, N'', 1, 1, N'Attachment/2015619203715193.png', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004021', N'发送短信', 2, N'/Member/SMSSend.aspx', N'004', 0, 15, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004022', N'升级会员', 2, N'/Member/SHListSJ.aspx', N'004', 0, 16, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004023', N'升级会员', 2, N'/Member/UpMemberSJ.aspx', N'004', 0, 17, N'', 0, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'004024', N'报单中心图谱', 2, N'/Member/StructureMSH.aspx', N'004', 0, 10, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006', N'购物专区', 1, N'', N'0', 0, 6, N'icon-money', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006001', N'商品发布', 2, N'/Shop/Publish.aspx', N'006', 0, 1, N'', 1, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006002', N'商品列表', 2, N'/Shop/GoodsList.aspx', N'006', 0, 2, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006003', N'购买商品', 2, N'/Shop/BuyGood.aspx', N'006', 0, 3, N'', 1, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006004', N'购物车', 2, N'/Shop/Cars.aspx', N'006', 0, 4, N'', 1, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006005', N'订单列表', 2, N'/Shop/OrderList.aspx', N'006', 0, 5, N'', 1, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006006', N'收货人管理', 2, N'/Shop/ReceiveInfo.aspx', N'006', 0, 6, N'', 1, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006007', N'商品类别', 2, N'/Shop/Category.aspx', N'006', 0, 0, N'', 1, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006008', N'商品类别修改', 2, N'/Shop/CategoryEdit.aspx', N'006', 0, 0, N'', 0, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006009', N'商品详细', 2, N'/Shop/GoodsDetail.aspx', N'006', 0, 9, N'', 0, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006010', N'付款', 2, N'/Shop/PayOrder.aspx', N'006', 0, 10, N'', 0, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006011', N'添加收货人', 2, N'/Shop/AddReceive.aspx', N'006', 0, 11, N'', 0, 0, N'', 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006012', N'订单详情', 2, N'/Shop/ShowOrder.aspx', N'006', 0, 12, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'006013', N'订单发货', 2, N'/Shop/SendOrder.aspx', N'006', 0, 13, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009', N'股权交易', 1, N'', N'0', 0, 9, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009001', N'我要买入', 2, N'/EP/EPBuy.aspx', N'009', 0, 1, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009002', N'我要卖出', 2, N'/EP/EPSell.aspx', N'009', 0, 2, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009003', N'买入记录', 2, N'/EP/EPMarket.aspx', N'009', 0, 3, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009004', N'违规记录', 2, N'/EP/TimeOutList.aspx', N'009', 0, 5, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009005', N'卖出记录', 2, N'/EP/EPSellList.aspx', N'009', 0, 4, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009006', N'股权交易配置', 2, N'/EP/EPConfig.aspx', N'009', 0, 6, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009007', N'查看信息', 2, N'/EP/MemberView.aspx', N'009', 0, 7, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'009008', N'上传凭证', 2, N'/EP/EPPay.aspx', N'009', 0, 8, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'010', N'红包区', 1, N'', N'0', 0, 10, N'icon-money', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'010001', N'抢红包', 2, N'/LotteryDraw/RobDraw.aspx', N'010', 0, 1, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'010002', N'红包记录', 2, N'/LotteryDraw/MemberList.aspx', N'010', 0, 2, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'010003', N'红包管理', 2, N'/LotteryDraw/AddList.aspx', N'010', 0, 2, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'011', N'股权分红', 1, N'', N'0', 0, 11, N'icon-money', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'011001', N'股权购买', 2, N'/StockRight/StockRightAdd.aspx', N'011', 0, 1, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'011002', N'股权列表', 2, N'/StockRight/StockRightList.aspx', N'011', 0, 2, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'011003', N'股权配置', 2, N'/StockRight/StockRightConfig.aspx', N'011', 0, 3, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'012', N'投资中心', 1, N'', N'0', 0, 10, N'icon-money', 1, 0, N'', 0, N'/mobile/html/TZ.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'012001', N'申请投资', 2, N'/Module/Investment/InvestApply.aspx', N'012', 0, 1, NULL, 1, 0, NULL, 0, N'/mobile/html/InvestApply.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'012002', N'投资明细', 2, N'/Module/Investment/InvestList.aspx', N'012', 0, 2, NULL, 1, 0, NULL, 0, N'/mobile/html/InvestList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'012003', N'退本详情', 2, N'/Module/Investment/InvestQuit.aspx', N'012', 0, 3, NULL, 1, 0, NULL, 0, N'/mobile/html/InvestQuitList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019', N'公告通知', 1, N'', N'0', 0, 19, N'icon-envelope', 1, 0, N'Attachment/2015619203411913.png', 0, N'/mobile/html/GGTZ.aspx')
GO
print 'Processed 100 total records'
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019001', N'发送短信', 2, N'/Message/Add.aspx', N'019', 0, 8, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019002', N'历史短信', 2, N'/Message/List.aspx', N'019', 0, 9, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019003', N'发布公告', 2, N'/Message/NoticeAdd.aspx', N'019', 0, 2, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019004', N'公告管理', 2, N'/Message/NoticeList.aspx', N'019', 0, 1, N'', 1, 1, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019005', N'发送邮件', 2, N'/Message/TaskAdd.aspx', N'019', 0, 7, N'', 0, 0, N'', 0, N'/mobile/html/TaskAdd.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019006', N'邮件管理', 2, N'/Message/TaskList.aspx', N'019', 0, 6, N'', 1, 1, N'', 0, N'/mobile/html/TaskList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019007', N'修改公告', 2, N'/Message/NoticeModify.aspx', N'019', 0, 3, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019008', N'公告查看', 2, N'/Message/NoticeViewList.aspx', N'019', 0, 4, N'', 1, 1, N'Attachment/2015619202416843.png', 0, N'/mobile/html/NoticeList.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019009', N'查看公告', 2, N'/Message/NoticeView.aspx', N'019', 0, 5, N'', 0, 1, N'', 0, N'/mobile/html/NoticeView.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019010', N'投诉管理', 2, N'/Message/TaskListComplain.aspx', N'019', 0, 10, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'019011', N'我要投诉', 2, N'/Message/TaskAddComplain.aspx', N'019', 0, 10, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020', N'安全中心', 1, NULL, N'0', 1, 20, N'icon-save', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020001', N'登录密码修改', 2, N'/SecurityCenter/ModifyPwd.aspx', N'020', 1, 1, N'', 1, 1, N'Attachment/201561920327641.png', 0, N'/mobile/html/ModifyPwd.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020002', N'二级密码修改', 2, N'/SecurityCenter/ModifySecPwd.aspx', N'020', 1, 2, N'', 1, 1, N'', 0, N'/mobile/html/ModifySecPwd.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020003', N'安全问题', 2, NULL, N'020', 0, 3, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020004', N'邮箱功能', 2, N'/SecurityCenter/MyEMail.aspx', N'020', 0, 4, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020005', N'密保问题', 2, N'/SecurityCenter/SecurityQuestion.aspx', N'020', 0, 5, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020006', N'设置密码', 2, N'/mobile/html/Pwd.aspx', N'020', 0, 1, N'', 0, 0, N'Attachment/201561920327641.png', 0, N'/mobile/html/Pwd.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020007', N'APP财务页', 2, N'/mobile/html/caiwu.aspx', N'020', 0, 1, N'', 0, 0, N'Attachment/201561920327641.png', 0, N'/mobile/html/caiwu.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'020008', N'APP个人信息', 2, N'/mobile/html/geren.aspx', N'020', 0, 1, N'', 0, 0, N'Attachment/201561920327641.png', 0, N'/mobile/html/geren.aspx')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021', N'系统设置', 1, NULL, N'0', 1, 21, N'icon-cogs', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021001', N'权限修改', 2, N'/SysManage/MenuEdit.aspx', N'021', 1, 1, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021002', N'权限管理', 2, N'/SysManage/GrantPowers.aspx', N'021', 1, 2, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021003', N'奖金参数', 2, N'/SysManage/Configuration.aspx', N'021', 0, 3, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021006', N'页面验证', 2, N'/SysManage/RolePowers.aspx', N'021', 0, 4, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021007', N'网站设置', 2, N'/SysManage/WebSet.aspx', N'021', 1, 5, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021010', N'角色管理', 2, N'/SysManage/RolesList.aspx', N'021', 0, 8, N'', 1, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021011', N'添加角色', 2, N'/SysManage/AddRoles.aspx', N'021', 0, 9, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021012', N'修改角色', 2, N'/SysManage/ModifyRoles.aspx', N'021', 0, 10, N'', 0, 0, NULL, 0, NULL)
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021013', N'银行管理', 2, N'/SysManage/BankInfo.aspx', N'021', 0, 11, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021019', N'手动奖励', 2, N'/PrizePool/DTFHAccounts.aspx', N'021', 0, 12, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021056', N'语言配置', 2, N'/SysManage/Language/List.aspx', N'021', 0, 13, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021057', N'语言添加', 2, N'/SysManage/Language/Edit.aspx', N'021', 0, 14, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021058', N'语种配置', 2, N'/SysManage/Language/TypeList.aspx', N'021', 0, 15, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021059', N'语种添加', 2, N'/SysManage/Language/TypeEdit.aspx', N'021', 0, 16, N'', 0, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021060', N'手动操作', 2, N'/PrizePool/JTFHAccounts.aspx', N'021', 0, 17, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021061', N'网站备份', 2, N'/SysManage/DBBackup.aspx', N'021', 0, 18, N'', 1, 0, N'', 0, N'')
INSERT [dbo].[Contents] ([CID], [CTitle], [CLevel], [CAddress], [CFID], [CState], [CIndex], [CImage], [VState], [IsQuickMenu], [Remark], [IsOuterLink], [OuterAddress]) VALUES (N'021062', N'操作记录', 2, N'/SysManage/OperationRecord.aspx', N'021', 0, 19, N'', 1, 0, N'', 0, N'')
/****** Object:  Table [dbo].[Configuration]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Configuration](
	[AutoJS] [bit] NULL,
	[AutoDFH] [bit] NULL,
	[YLMoney] [int] NULL,
	[BDCount] [int] NULL,
	[DefaultRole] [varchar](10) NULL,
	[TXMinMoney] [int] NULL,
	[TXBaseMoney] [int] NULL,
	[ZZMinMoney] [int] NULL,
	[ZZBaseMoney] [int] NULL,
	[DHMinMoney] [int] NULL,
	[DHBaseMoney] [int] NULL,
	[InFloat] [decimal](18, 2) NULL,
	[OutFloat] [decimal](18, 2) NULL,
	[MaxDPCount] [int] NULL,
	[DPTopFloat] [decimal](18, 4) NULL,
	[HFGQPrice] [decimal](18, 2) NULL,
	[TJFloat] [decimal](18, 4) NULL,
	[GLFloat] [decimal](18, 4) NULL,
	[GLLevel] [int] NULL,
	[LDFloat] [decimal](18, 4) NULL,
	[Rebuy1] [decimal](18, 4) NULL,
	[Rebuy2] [decimal](18, 4) NULL,
	[JTFHMoney] [decimal](18, 2) NULL,
	[JTFHCount] [int] NULL,
	[JTFHLastMID] [varchar](50) NULL,
	[BCenterMoney] [decimal](18, 2) NULL,
	[DayFHMoney] [decimal](18, 2) NULL,
	[P1Float] [decimal](18, 4) NULL,
	[P2Float] [decimal](18, 4) NULL,
	[P3Float] [decimal](18, 4) NULL,
	[P4Float] [decimal](18, 4) NULL,
	[P1TakeOffFloat] [decimal](18, 4) NULL,
	[MaxRegister] [int] NULL,
	[DayFHSumMoney] [decimal](18, 4) NULL,
	[DayFHDays] [int] NULL,
	[BDFloat] [decimal](18, 4) NULL,
	[DPFloat] [decimal](18, 4) NULL,
	[PYFloat] [decimal](18, 4) NULL,
	[PYTJCount] [int] NULL,
	[PYUpLevel] [int] NULL,
	[PYDownLevel] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Configuration] ([AutoJS], [AutoDFH], [YLMoney], [BDCount], [DefaultRole], [TXMinMoney], [TXBaseMoney], [ZZMinMoney], [ZZBaseMoney], [DHMinMoney], [DHBaseMoney], [InFloat], [OutFloat], [MaxDPCount], [DPTopFloat], [HFGQPrice], [TJFloat], [GLFloat], [GLLevel], [LDFloat], [Rebuy1], [Rebuy2], [JTFHMoney], [JTFHCount], [JTFHLastMID], [BCenterMoney], [DayFHMoney], [P1Float], [P2Float], [P3Float], [P4Float], [P1TakeOffFloat], [MaxRegister], [DayFHSumMoney], [DayFHDays], [BDFloat], [DPFloat], [PYFloat], [PYTJCount], [PYUpLevel], [PYDownLevel]) VALUES (1, 0, 0, 99999, N'Nomal', 500, 100, 100, 100, 100, 100, CAST(1.00 AS Decimal(18, 2)), CAST(1.00 AS Decimal(18, 2)), 99999, CAST(50.0000 AS Decimal(18, 4)), CAST(9.00 AS Decimal(18, 2)), CAST(0.3000 AS Decimal(18, 4)), CAST(60.0000 AS Decimal(18, 4)), 11, CAST(0.0500 AS Decimal(18, 4)), CAST(1000000.0000 AS Decimal(18, 4)), CAST(0.0200 AS Decimal(18, 4)), CAST(1000.00 AS Decimal(18, 2)), 1, N'caifu888', CAST(1000.00 AS Decimal(18, 2)), CAST(1565.00 AS Decimal(18, 2)), CAST(0.0050 AS Decimal(18, 4)), CAST(0.0100 AS Decimal(18, 4)), CAST(0.1200 AS Decimal(18, 4)), CAST(0.0500 AS Decimal(18, 4)), CAST(0.1000 AS Decimal(18, 4)), 5, CAST(18750.0000 AS Decimal(18, 4)), 24, CAST(0.5000 AS Decimal(18, 4)), CAST(0.4000 AS Decimal(18, 4)), CAST(3650.0000 AS Decimal(18, 4)), 5, 10, 10)
/****** Object:  Table [dbo].[ConfigDictionaryNew]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigDictionaryNew](
	[Code] [varchar](10) NOT NULL,
	[Dkey] [varchar](10) NULL,
	[TJCount] [int] NULL,
	[SubTJCount] [int] NULL,
	[GJCount] [int] NULL,
	[CJCount] [int] NULL,
	[FHMoney] [decimal](18, 2) NULL,
	[OutFloat] [decimal](18, 2) NULL,
	[HBFHFloat] [decimal](18, 4) NULL,
	[FHDays] [int] NULL,
 CONSTRAINT [PK_ConfigDictionaryNew] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ConfigDictionaryNew] ([Code], [Dkey], [TJCount], [SubTJCount], [GJCount], [CJCount], [FHMoney], [OutFloat], [HBFHFloat], [FHDays]) VALUES (N'001', N'R_LDA', 0, 0, 2, 6, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.0200 AS Decimal(18, 4)), 0)
INSERT [dbo].[ConfigDictionaryNew] ([Code], [Dkey], [TJCount], [SubTJCount], [GJCount], [CJCount], [FHMoney], [OutFloat], [HBFHFloat], [FHDays]) VALUES (N'002', N'R_LDB', 4, 0, 7, 11, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.0100 AS Decimal(18, 4)), 0)
INSERT [dbo].[ConfigDictionaryNew] ([Code], [Dkey], [TJCount], [SubTJCount], [GJCount], [CJCount], [FHMoney], [OutFloat], [HBFHFloat], [FHDays]) VALUES (N'003', N'R_LDC', 4, 500, 12, 31, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.0050 AS Decimal(18, 4)), 0)
/****** Object:  Table [dbo].[ConfigDictionary]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ConfigDictionary](
	[DType] [varchar](10) NOT NULL,
	[DKey] [varchar](10) NOT NULL,
	[StartLevel] [int] NOT NULL,
	[EndLevel] [int] NULL,
	[DValue] [varchar](10) NULL,
	[Remark] [varchar](100) NULL,
 CONSTRAINT [PK_ConfigDictionary] PRIMARY KEY CLUSTERED 
(
	[DType] ASC,
	[DKey] ASC,
	[StartLevel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ConfigDictionary] ([DType], [DKey], [StartLevel], [EndLevel], [DValue], [Remark]) VALUES (N'LDFloat', N'', 1, 1, N'0.1', N'领导奖一代')
INSERT [dbo].[ConfigDictionary] ([DType], [DKey], [StartLevel], [EndLevel], [DValue], [Remark]) VALUES (N'LDFloat', N'', 2, 2, N'0.05', N'领导奖二代')
INSERT [dbo].[ConfigDictionary] ([DType], [DKey], [StartLevel], [EndLevel], [DValue], [Remark]) VALUES (N'LDFloat', N'', 3, 10, N'0.03', N'领导奖三代')
/****** Object:  Table [dbo].[ChangeMoney]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChangeMoney](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[FromMID] [varchar](20) NULL,
	[ToMID] [varchar](20) NULL,
	[Money] [decimal](18, 4) NULL,
	[ChangeDate] [datetime] NULL,
	[ChangeType] [varchar](10) NULL,
	[MoneyType] [varchar](10) NULL,
	[CState] [bit] NULL,
	[SHMID] [varchar](20) NULL,
	[TakeOffMoney] [decimal](18, 4) NULL,
	[ReBuyMoney] [decimal](18, 4) NULL,
	[MCWMoney] [decimal](18, 4) NULL,
	[CRemarks] [varchar](200) NULL,
	[extra1] [decimal](18, 4) NULL,
	[source] [varchar](200) NULL,
	[source1] [varchar](200) NULL,
	[source2] [varchar](200) NULL,
 CONSTRAINT [PK_ChangeMoney] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_ChangeMoney] ON [dbo].[ChangeMoney] 
(
	[ToMID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChangeMoney] ON
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1621, N'caifu888', N'15617926640', CAST(100000.0000 AS Decimal(18, 4)), CAST(0x0000A7CA00B538C9 AS DateTime), N'CZ', N'MJB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1622, N'15617926640', N'caifu888', CAST(100.0000 AS Decimal(18, 4)), CAST(0x0000A7CA00B56572 AS DateTime), N'appplyIn', N'MJB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1623, N'15617926640', N'caifu888', CAST(5000.0000 AS Decimal(18, 4)), CAST(0x0000A7CA00B58BC3 AS DateTime), N'appplyIn', N'MJB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1624, N'caifu888', N'15617926640', CAST(76.5000 AS Decimal(18, 4)), CAST(0x0000A7CA00B5CB46 AS DateTime), N'R_RFH', N'MHB', 1, N'日分红', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1625, N'15617926640', N'caifu888', CAST(76.0000 AS Decimal(18, 4)), CAST(0x0000A7CB00E2C636 AS DateTime), N'TX', N'MHB', 0, NULL, CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'湖南省~衡阳市~支付宝~支行2~杨宁远~6226334564564443', CAST(0.0000 AS Decimal(18, 4)), NULL, NULL, NULL)
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1626, N'caifu888', N'15617926640', CAST(100.0000 AS Decimal(18, 4)), CAST(0x0000A7D200E4FC55 AS DateTime), N'FHApply', N'MHB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1627, N'caifu888', N'15617926640', CAST(5000.0000 AS Decimal(18, 4)), CAST(0x0000A7D200E56007 AS DateTime), N'FHApply', N'MHB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1628, N'15617926640', N'caifu888', CAST(2000.0000 AS Decimal(18, 4)), CAST(0x0000A7D200E8709C AS DateTime), N'appplyIn', N'MJB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1629, N'caifu888', N'15617926640', CAST(2000.0000 AS Decimal(18, 4)), CAST(0x0000A7D200EB8964 AS DateTime), N'FHApply', N'MHB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1630, N'15617926640', N'caifu888', CAST(2000.0000 AS Decimal(18, 4)), CAST(0x0000A7D200EB98DC AS DateTime), N'appplyIn', N'MJB', 1, N'', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
INSERT [dbo].[ChangeMoney] ([CID], [FromMID], [ToMID], [Money], [ChangeDate], [ChangeType], [MoneyType], [CState], [SHMID], [TakeOffMoney], [ReBuyMoney], [MCWMoney], [CRemarks], [extra1], [source], [source1], [source2]) VALUES (1631, N'caifu888', N'15617926640', CAST(30.0000 AS Decimal(18, 4)), CAST(0x0000A7D801253B71 AS DateTime), N'R_RFH', N'MHB', 1, N'日分红', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'', CAST(0.0000 AS Decimal(18, 4)), N'', N'', N'')
SET IDENTITY_INSERT [dbo].[ChangeMoney] OFF
/****** Object:  Table [dbo].[BonusList]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BonusList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BonusCode] [varchar](32) NOT NULL,
	[MID] [varchar](20) NULL,
	[BonusDate] [datetime] NULL,
	[IsValid] [bit] NULL,
	[GiftCode] [varchar](32) NULL,
	[ValidDate] [datetime] NULL,
	[BonusRemark] [varchar](100) NULL,
 CONSTRAINT [PK_BonusList] PRIMARY KEY CLUSTERED 
(
	[BonusCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BonusGift]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BonusGift](
	[GiftCode] [varchar](32) NOT NULL,
	[GiftNum] [int] NULL,
	[GiftName] [varchar](20) NULL,
	[Probaly] [int] NULL,
	[GiftType] [varchar](10) NULL,
	[GiftCount] [int] NULL,
	[BonusPlan] [varchar](10) NULL,
	[GiftRemark] [varchar](100) NULL,
	[IsAuto] [bit] NULL,
	[Points] [int] NULL,
 CONSTRAINT [PK_BonusGift] PRIMARY KEY CLUSTERED 
(
	[GiftCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BMember]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BMember](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AMID] [varchar](20) NOT NULL,
	[BMID] [varchar](20) NOT NULL,
	[BMBD] [varchar](20) NULL,
	[BMCreateDate] [datetime] NULL,
	[BMDate] [datetime] NULL,
	[BMState] [bit] NULL,
	[BIsClock] [bit] NULL,
	[YJCount] [decimal](18, 2) NULL,
	[YJMoney] [decimal](18, 2) NULL,
	[BCount] [decimal](18, 2) NULL,
	[Sort] [int] NOT NULL,
 CONSTRAINT [PK_BMember_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BMember] ON
INSERT [dbo].[BMember] ([ID], [AMID], [BMID], [BMBD], [BMCreateDate], [BMDate], [BMState], [BIsClock], [YJCount], [YJMoney], [BCount], [Sort]) VALUES (84, N'caifu888', N'caifu888_0', N'admin_0', CAST(0x0000A7CA00B5104B AS DateTime), CAST(0x0000A7CA00B5104B AS DateTime), 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[BMember] OFF
/****** Object:  Table [dbo].[BCenter]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BCenter](
	[MID] [varchar](20) NOT NULL,
	[MName] [varchar](20) NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[AddDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[ValidTime] [datetime] NULL,
	[Img] [text] NOT NULL,
 CONSTRAINT [PK_BCenter] PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaseParameter]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaseParameter](
	[OwnClass] [varchar](50) NOT NULL,
	[IdentifyName] [varchar](50) NOT NULL,
	[PValue] [varchar](50) NOT NULL,
	[PType] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPJYBaseMoney', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPProtocol', N'', N'String')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'PayTime', N'2', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPState', N'True', N'Boolean')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPTakeOff', N'0', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPTimeOut', N'0', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPJYMinMoney', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPStartTime', N'2016/10/24 0:00:00', N'DateTime')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'ConfirmTime', N'1', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPTimeOutCount', N'0', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPTimeOutJXCount', N'0', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'CFCount', N'0', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPMoneyType', N'MHB', N'String')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPEndTime', N'2016/10/24 23:00:00', N'DateTime')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPJYType', N'0', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'MHGFloat', N'0', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPJYMAgencyTypeStr', N'', N'String')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'CancelTime', N'3', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'EPConfig', N'EPMoneyStr', N'', N'String')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'StockRightConfiguration', N'OpenTime', N'00:00-23:59', N'String')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'StockRightConfiguration', N'OpenSwitch', N'True', N'Boolean')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'StockRightConfiguration', N'TotalCount', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_OutFloat', N'1', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_TXBaseMoney', N'1', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_DPTopFloat', N'100', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_MaxTouZi', N'100000', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_BbinMoney', N'1000', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_TXMinMoney', N'1', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_InFloat', N'1', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_QuitFloat', N'0.0', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_TZBase', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_AutoJS', N'True', N'Boolean')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_TZMin', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_ZZBaseMoney', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_DefaultRole', N'Nomal', N'String')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_DHMinMoney', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_BDCount', N'2', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_TZMax', N'1000000', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_BbinFHFloat', N'2000', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_ZZMinMoney', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_TJFloat', N'0.05', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_TXSwitch', N'False', N'Boolean')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_TXMaxMoney', N'50000', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_BbinTimes', N'10', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_DayFHFloat', N'0.015', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_MaxRegister', N'99999', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_DHBaseMoney', N'100', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_AutoDFH', N'False', N'Boolean')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_DPFloat', N'0.05', N'Decimal')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_MaxDPCount', N'0', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'E_BbinMaxCount', N'1', N'Int32')
INSERT [dbo].[BaseParameter] ([OwnClass], [IdentifyName], [PValue], [PType]) VALUES (N'Configuration', N'B_YLMoney', N'0', N'Int32')
/****** Object:  Table [dbo].[BankModel]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankModel](
	[BankCode] [varchar](36) NOT NULL,
	[Bank] [varchar](50) NULL,
	[Branch] [varchar](50) NULL,
	[BankNumber] [varchar](30) NULL,
	[BankCardName] [varchar](20) NULL,
	[MID] [varchar](20) NULL,
	[IsPrimary] [bit] NULL,
	[BankCreateDate] [datetime] NULL,
 CONSTRAINT [PK_BankModel] PRIMARY KEY CLUSTERED 
(
	[BankCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[BankModel] ([BankCode], [Bank], [Branch], [BankNumber], [BankCardName], [MID], [IsPrimary], [BankCreateDate]) VALUES (N'20150602112400', N'2', N'建设路支行', N'1254512125415', N'管理员', N'admin', 0, CAST(0x0000A4AB00BBDDC0 AS DateTime))
INSERT [dbo].[BankModel] ([BankCode], [Bank], [Branch], [BankNumber], [BankCardName], [MID], [IsPrimary], [BankCreateDate]) VALUES (N'20150602113240', N'1', N'1233', N'11122', N'管理员', N'admin', 0, CAST(0x0000A4AB00C1F7DC AS DateTime))
INSERT [dbo].[BankModel] ([BankCode], [Bank], [Branch], [BankNumber], [BankCardName], [MID], [IsPrimary], [BankCreateDate]) VALUES (N'20150602160534', N'3', N'222', N'2222', N'管理员', N'admin', 0, CAST(0x0000A4AB01093368 AS DateTime))
INSERT [dbo].[BankModel] ([BankCode], [Bank], [Branch], [BankNumber], [BankCardName], [MID], [IsPrimary], [BankCreateDate]) VALUES (N'20150619135017', N'9', N'admin', N'1', N'管理员', N'admin', 1, CAST(0x0000A4EF00803663 AS DateTime))
/****** Object:  Table [dbo].[Agents]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Zone] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[FHFloat] [decimal](18, 4) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[IsValid] [int] NOT NULL,
	[Remarks] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ACode] [varchar](36) NOT NULL,
	[PCode] [varchar](10) NULL,
	[AccountsDate] [datetime] NULL,
	[TotalFHMoney] [decimal](18, 2) NULL,
	[FHCount] [int] NULL,
	[IsAuto] [bit] NULL,
	[CreateDate] [datetime] NULL,
	[IfAccount] [bit] NULL,
	[ARemark] [varchar](20) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[ACode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON
INSERT [dbo].[Accounts] ([ID], [ACode], [PCode], [AccountsDate], [TotalFHMoney], [FHCount], [IsAuto], [CreateDate], [IfAccount], [ARemark]) VALUES (319, N'15617926640_20170809110026', N'001', CAST(0x0000A7CA00B56584 AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 1, CAST(0x0000A7CA00B56582 AS DateTime), 1, N'15617926640')
SET IDENTITY_INSERT [dbo].[Accounts] OFF
/****** Object:  Table [dbo].[TicketBonus]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TicketBonus](
	[Percents] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[BonusPlan] [varchar](10) NOT NULL,
	[TicketState] [bit] NULL,
	[Money] [decimal](18, 2) NULL,
	[PlayBonus] [int] NULL,
	[AboutBonus] [varchar](250) NULL,
 CONSTRAINT [PK_TicketBonus] PRIMARY KEY CLUSTERED 
(
	[BonusPlan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TicketBonus] ([Percents], [StartTime], [EndTime], [BonusPlan], [TicketState], [Money], [PlayBonus], [AboutBonus]) VALUES (100, CAST(0x0000A25F0083D600 AS DateTime), CAST(0x0000A286017B0740 AS DateTime), N'001', 1, CAST(0.02 AS Decimal(18, 2)), NULL, NULL)
/****** Object:  Table [dbo].[TempMember]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempMember](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](20) NULL,
 CONSTRAINT [PK_TempMember] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Task]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Task](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TFromMID] [varchar](20) NULL,
	[TFromMName] [varchar](20) NULL,
	[TToMID] [varchar](20) NULL,
	[TToMName] [varchar](20) NULL,
	[TDateTime] [datetime] NULL,
	[TContent] [nvarchar](500) NULL,
	[IfRead] [bit] NULL,
	[TType] [varchar](10) NULL,
	[TState] [bit] NULL,
 CONSTRAINT [PK_Task] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_Task] ON [dbo].[Task] 
(
	[TFromMID] ASC,
	[TToMID] ASC,
	[TDateTime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Task] ON
INSERT [dbo].[Task] ([ID], [TFromMID], [TFromMName], [TToMID], [TToMName], [TDateTime], [TContent], [IfRead], [TType], [TState]) VALUES (120, N'15617926640', N'订单', N'caifu888', N'管理员', CAST(0x0000A7CD01119C4C AS DateTime), N'会员账号：15617926640于当前时间2017-08-12 16:36:11确认汇款信息，请注意查收，并及时审核！', 0, N'001', 1)
SET IDENTITY_INSERT [dbo].[Task] OFF
/****** Object:  Table [dbo].[Sys_SQ_Answer]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_SQ_Answer](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MID] [bigint] NOT NULL,
	[Code] [varchar](40) NOT NULL,
	[Answer] [nvarchar](500) NOT NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastUpdateBy] [nvarchar](40) NULL,
	[LastUpdateTime] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [int] NOT NULL,
	[QId] [bigint] NOT NULL,
 CONSTRAINT [PK_Sys_SQ_Answer] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_SQ_Answer] ON
INSERT [dbo].[Sys_SQ_Answer] ([ID], [MID], [Code], [Answer], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status], [QId]) VALUES (38, 692837, N'c91d1e1e-0dc0-4aef-8437-7adcbd334ebe', N'123', N'admin', CAST(0x0000A72700D8A4E6 AS DateTime), NULL, NULL, 0, 1, 10)
SET IDENTITY_INSERT [dbo].[Sys_SQ_Answer] OFF
/****** Object:  Table [dbo].[Sys_SecurityQuestion]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_SecurityQuestion](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](40) NOT NULL,
	[Question] [nvarchar](500) NOT NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedTime] [datetime] NOT NULL,
	[LastUpdateBy] [nvarchar](40) NULL,
	[LastUpdateTime] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Sys_SecurityQuestion] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_SecurityQuestion] ON
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (10, N'6eeadf5e-3528-4161-ad4e-38e883053e52', N'你爱人的名字是什么？      ', N'admin', CAST(0x0000A4A601289CD0 AS DateTime), N'admin', CAST(0x0000A5BD00B99F72 AS DateTime), 0, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (5, N'7e8c5ccd-74fb-49d6-a31d-adeb93db6641', N'你最喜欢的运动是什么？  ', N'admin', CAST(0x0000A4990122F334 AS DateTime), N'admin', CAST(0x0000A4B900C175C1 AS DateTime), 1, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (6, N'c15054ce-1683-4709-8a7e-cf513e448317', N'你最喜欢的歌手是谁？  ', N'admin', CAST(0x0000A49901234E9C AS DateTime), N'admin', CAST(0x0000A4B900C175C1 AS DateTime), 1, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (7, N'420a384f-b64e-4df4-a5bb-49c98e401d07', N'你母亲的名字是什么？    ', N'admin', CAST(0x0000A49901240440 AS DateTime), N'admin', CAST(0x0000A4B900C175C1 AS DateTime), 1, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (8, N'781cadd2-7eaf-4742-995e-d3889bb16a4d', N'你的故乡是哪里？        ', N'admin', CAST(0x0000A49901250610 AS DateTime), N'admin', CAST(0x0000A5BD00B99F72 AS DateTime), 0, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (11, N'd6d4e5b2-417e-4325-90b4-f78392c38ba6', N'你的高中是在哪儿上的？      ', N'admin', CAST(0x0000A4B100C2F9AC AS DateTime), N'admin', CAST(0x0000A5BD00B99F72 AS DateTime), 0, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (12, N'2e475e36-386d-4def-a85c-2c9df37e3fb7', N'你的小学是在哪里上的？  ', N'admin', CAST(0x0000A4BA00B499FC AS DateTime), N'admin', CAST(0x0000A5BD00B99F6F AS DateTime), 0, 1)
INSERT [dbo].[Sys_SecurityQuestion] ([ID], [Code], [Question], [CreatedBy], [CreatedTime], [LastUpdateBy], [LastUpdateTime], [IsDeleted], [Status]) VALUES (13, N'2c7cfc80-fefd-415b-9674-058828ae118f', N'喜欢吃的食物', N'admin', CAST(0x0000A5BD00B99F72 AS DateTime), NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[Sys_SecurityQuestion] OFF
/****** Object:  Table [dbo].[Sys_LanguageType]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_LanguageType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ImgUrl] [varchar](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Sys_LanguageType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_LanguageType] ON
INSERT [dbo].[Sys_LanguageType] ([ID], [Code], [Name], [ImgUrl], [Status]) VALUES (1, N'0002', N'英语', N'/images/upload/bc14665934a0062e.jpg', 1)
SET IDENTITY_INSERT [dbo].[Sys_LanguageType] OFF
/****** Object:  Table [dbo].[Sys_Language]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_Language](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[ZHName] [nvarchar](500) NULL,
	[ENName] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
	[Sort] [bigint] NULL,
	[LanguageCode] [varchar](50) NULL,
 CONSTRAINT [PK_Sys_Language的] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_Language] ON
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (1, N'7604051374ba44fba8194c0e0092120e', N'信息管理', N'Info Management', N'', CAST(0x0000A4B800A4A27C AS DateTime), N'admin', CAST(0x0000A614013690A8 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (2, N'5cb988acf1b8416c85421eca7b986b64', N'会员账号', N'Member ID', NULL, CAST(0x0000A4B800AD6132 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (3, N'e8fc8764f2a04c96b9d2be92ebb3a64e', N'个人资料', N'Personal Info', NULL, CAST(0x0000A4B800AD91DE AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (4, N'af48c60ddf1649dda595e4ae2c40345e', N'花红', N'Bonus', N'', CAST(0x0000A4B800F610F8 AS DateTime), N'admin', CAST(0x0000A4B801120980 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (5, N'08dc1ffb1563448bbdbb1a66b659ff15', N'直推奖', N'Straight tuijiang', NULL, CAST(0x0000A4B800F671C5 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (6, N'a5d766d20b644e81ab5028afec759a29', N'会员升级', N'Member upgrade', NULL, CAST(0x0000A4B800F70A5D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (7, N'7700064a546f4eab920ce55de6a262bd', N'奖金明细', N'Bonus Details', NULL, CAST(0x0000A4B800F73E2F AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (8, N'0be5a3e9e01d4c7db9e434115f5cd31c', N'转出会员', N'Out Member', NULL, CAST(0x0000A4B800FA8937 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (9, N'713c1062d3c1480ca164587f385db7dc', N'会员列表', N'Member list', N'', CAST(0x0000A4B800FC6228 AS DateTime), N'admin', CAST(0x0000A4B800FC7060 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (10, N'4f43161416d142f79daf76665157abe7', N'购买基金', N'Purchase fund', NULL, CAST(0x0000A4B800FC9A37 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (11, N'02d6f01ff84f4776b800be1fbab61497', N'安全中心', N'Safety Center', NULL, CAST(0x0000A4B800FCBBB6 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (12, N'5ce03e75a68a4457ab9589a27f886edb', N'财务管理', N'Financial manage', NULL, CAST(0x0000A4B800FCD6BD AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (13, N'e78538d0950147c0a20cf77a03ced32d', N'奖金结算', N'Bonus settlement', NULL, CAST(0x0000A4B800FCF224 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (14, N'fca11803ad3948778a2583c745f27fd0', N'团队管理', N'Team manage', NULL, CAST(0x0000A4B800FD0CA7 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (15, N'a4fe9168cb27439584d8aa93c5c2a9f3', N'分红管理', N'Dividend manage', NULL, CAST(0x0000A4B800FD2ADA AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (16, N'3e6c6fa9a2ef4ac6bcbcbfaba8662eb0', N'退出', N'Sign out', NULL, CAST(0x0000A4B800FF6E19 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (17, N'031f6ad6f53d4405b824f990445fdb8a', N'会员姓名', N'Member Name', NULL, CAST(0x0000A4B8010770DF AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (18, N'28664ec411124172b3df04b36a21d5d8', N'支付宝', N'Alipay', NULL, CAST(0x0000A4B80107B149 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (19, N'a5dfd0c402a543bba9d408376e4a823f', N'入门', N'Introduction', NULL, CAST(0x0000A4B80107E8F5 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (20, N'3a09798624a140a1af710e0edcaa7fc7', N'业绩花红提成', N'The performance bonus Com', N'', CAST(0x0000A4B801082E14 AS DateTime), N'admin', CAST(0x0000A4B8011302E8 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (21, N'94b22a6dd5bd42898c19087467306a7f', N'语言选择', N'Language', NULL, CAST(0x0000A4B90096536D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (22, N'3c06fb7385b7445689a3022638a700cc', N'安全退出', N'Exit safely', NULL, CAST(0x0000A4B90096B14F AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (23, N'b9e06dda44d04fd7931a3d1156b856b9', N'奖金币', N'Award Coins', NULL, CAST(0x0000A4B900A55042 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (24, N'476266bd16fc41f79d53a2acbd39723b', N'电子币', N'Electronic Icons', NULL, CAST(0x0000A4B900A5D054 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (25, N'592a42b8f3904a52a4a981737097281a', N'收益宝', N'Income treasure', NULL, CAST(0x0000A4B900A6111E AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (26, N'91aa2547b353429985572a15fcac3270', N'收益宝管理', N'Income treasure Manage', NULL, CAST(0x0000A4B900A63B4E AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (27, N'c22daf2487964eb388b04694d18465ad', N'激活币', N'Activation currency', NULL, CAST(0x0000A4B900A66928 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (28, N'da2d5228c4c74e8a8a4fd09146250d3c', N'修改资料', N'Modify data', NULL, CAST(0x0000A4B900A68B8E AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (29, N'59bd108c551e4da78f6ea4036fca7099', N'汇款管理', N'Remittance management', NULL, CAST(0x0000A4B900A6C27E AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (30, N'1f386ee99ff4427eb55407b4478519f4', N'团队图谱', N'Team map', NULL, CAST(0x0000A4B900A6E4DD AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (31, N'9c9115e3ac7442c48d3efcc25e789a84', N'公告查看', N'Announcement view', NULL, CAST(0x0000A4B900A6FE4B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (32, N'0999d5b7a3284bd397df9c01e995b04f', N'基金管理', N'Fund management', NULL, CAST(0x0000A4B900A72577 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (33, N'7d52c4fc958042a49c29259b481b7ad0', N'基金结算', N'Fund settlement', NULL, CAST(0x0000A4B900A74E59 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (34, N'7898cf68038c42bda9c6ff7416d8b837', N'公告通知', N'Notice', NULL, CAST(0x0000A4B900A79704 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (35, N'f44d2fc1a8b64b6abebe3896689b9457', N'公告管理', N'Notice Manage', NULL, CAST(0x0000A4B900A7BA41 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (36, N'98f30e652f954826ae3e97ea996af2a2', N'升级管理', N'Upgrade manage', NULL, CAST(0x0000A4B900A7D7A6 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (37, N'6ddfe9b039c1452e9e78a373d20fd3b3', N'升级记录', N'Upgrade record', NULL, CAST(0x0000A4B900A7F0FA AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (38, N'32fcdf9f4d3a4497bd5e99c3e75ec2b4', N'系统设置', N'System setting', NULL, CAST(0x0000A4B900A81420 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (39, N'f2e2dba83cff4f72a48af6202e96ca35', N'网站设置', N'Website setting', NULL, CAST(0x0000A4B900A82BCC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (40, N'a8947c14fcd246a4860a8b383bb22df7', N'奖金参数', N'Bonus parameter', NULL, CAST(0x0000A4B900A847EC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (41, N'5c7fd9c8ef74478394346c202ab35f7e', N'权限管理', N'Authority manage', NULL, CAST(0x0000A4B900A86567 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (42, N'84e26cb0ba6f42e0a25bd0f3ce5b1370', N'页面验证', N'Page verification', NULL, CAST(0x0000A4B900A880CA AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (43, N'4db5e5f0b51440e9bceb94bbf84cc9f1', N'模拟器', N'Simulator', NULL, CAST(0x0000A4B900A89584 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (44, N'a39098c0e3674579a27831a82742113d', N'银行管理', N'Bank manage', NULL, CAST(0x0000A4B900A8B929 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (45, N'755fb1610f5b4e9d8ce743d3513bde3a', N'语言配置', N'Language', NULL, CAST(0x0000A4B900A8DC59 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (46, N'8f1c8c44e55c47b78d708928b312dec5', N'收益宝结算', N'Income Po settlement', NULL, CAST(0x0000A4B900A93B62 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (47, N'575dff1d47c94203b34e36c19f558186', N'银行卡管理', N'Bank card manage', NULL, CAST(0x0000A4B900A967A2 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (48, N'682bc45b9d27456ba549d5f0fb721ec2', N'转账查询', N'Transfer inquiry', NULL, CAST(0x0000A4B900A9A857 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (49, N'6cf19e3987de49efa561316930fe9f91', N'充值查询', N'Recharge Query', NULL, CAST(0x0000A4B900A9C4C3 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (50, N'326d68a8f876476a9c0818f65a41a1ea', N'提现管理', N'Present management', NULL, CAST(0x0000A4B900A9DBC0 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (51, N'ecd9d1b6b0304ed5873a71c697ec62ec', N'奖金查询', N'Bonus Query', NULL, CAST(0x0000A4B900A9FA08 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (52, N'e8374bb6da164aed94c08d9d45cdb681', N'拨比流水', N'Finance Running', NULL, CAST(0x0000A4B900AA4D99 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (53, N'e81b90d30f014cf2adceebca8a2febfb', N'财务总账', N'General ledger', NULL, CAST(0x0000A4B900AA6644 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (54, N'3b1263ad241a407fb2348a80e124b034', N'在线充值', N'Online recharge', NULL, CAST(0x0000A4B900AA7D32 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (55, N'7afdd83ec6f14a80ad3cd8e650f1a844', N'货币转换', N'Currency conversion', NULL, CAST(0x0000A4B900AA9665 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (56, N'd19919cf59664cde91ea0d36187df9db', N'结算明细', N'Settlement details', NULL, CAST(0x0000A4B900AAB19F AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (57, N'15b01243758b4a6dac99971aee1fc723', N'日分红结算', N'Day bonus settlement', NULL, CAST(0x0000A4B900AAFC9A AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (58, N'afd34b36713e4b46bb94f28593be8229', N'登录密码修改', N'Change Login password', NULL, CAST(0x0000A4B900AB461A AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (59, N'0951530578c544cb88be2422a6100bfc', N'二级密码修改', N'Change Second password', N'', CAST(0x0000A4B900AB82A4 AS DateTime), N'admin', CAST(0x0000A4C000A4362B AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (60, N'4036686685f9455a95de3114f6ecfc1e', N'密保问题', N'Security question', N'', CAST(0x0000A4B900AB9690 AS DateTime), N'admin', CAST(0x0000A4B9011244A1 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (61, N'53d520ff4f1446949466b1b121e68a09', N'我的市场', N'My market', NULL, CAST(0x0000A4B900ABB9C6 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (62, N'27459604c9a3416cba04a6d4c0a54b58', N'推荐图谱', N'Recommended map', NULL, CAST(0x0000A4B900ABD2EA AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (63, N'5e462dda7add467aa3b059bcea35296d', N'注册会员', N'Registered member', NULL, CAST(0x0000A4B900ABEC06 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (64, N'4d6641a199df4610913902ba3e03d07f', N'推荐列表', N'Recommended list', NULL, CAST(0x0000A4B900AC07F0 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (65, N'e7928666907e45968381feb1852d8559', N'收入统计', N'Income statistics', NULL, CAST(0x0000A4B900AC1DD2 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (66, N'c3ada3929b0041f69a0c60b0fc2921ac', N'基金收益结算', N'Fund income settlement', NULL, CAST(0x0000A4B900AC3FF7 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (67, N'3014fa155dd04c7a9281cae72dc4cafc', N'推广链接', N'Promotion link', N'', CAST(0x0000A4B900AC821C AS DateTime), N'admin', CAST(0x0000A4B900ACD963 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (68, N'ba0e6a1dd97f497b999f89f3b72c998e', N'复制', N'Copy', NULL, CAST(0x0000A4B900AC9B53 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (69, N'3063862ecfc246a0b1966d7669b2f2cc', N'手机号码', N'Phone number', NULL, CAST(0x0000A4B900AD0C65 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (70, N'c36e4a55cca04013810c7f5cc82e8dd2', N'QQ号码', N'QQ number', NULL, CAST(0x0000A4B900AD3151 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (71, N'a536250d47434a4e99f4c3d7bca591dd', N'开户银行', N'Bank', NULL, CAST(0x0000A4B900AD5101 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (72, N'e071ef402584459d87a3c27e19d0d005', N'开户支行', N'Account branch', NULL, CAST(0x0000A4B900AD7160 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (73, N'819d617ee1364cf08a2dd4e18028a9d1', N'开户姓名', N'Account Name', NULL, CAST(0x0000A4B900AD9619 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (74, N'2a9a197785ad4882ad78d40c228d2e2e', N'卡号', N'Card number', N'', CAST(0x0000A4B900ADA840 AS DateTime), N'admin', CAST(0x0000A4B900AF880D AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (75, N'04aa87554f6244c8aec7b35429e0f35a', N'提交', N'Submit', NULL, CAST(0x0000A4B900ADCC01 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (76, N'8bb1fca4d2d145faad8007da425ec6cf', N'添加', N'Add', NULL, CAST(0x0000A4B900ADE965 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (77, N'90eb5982730f4a6f8a0cecf12e3b03e6', N'修改', N'Modify', NULL, CAST(0x0000A4B900AE06B8 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (78, N'55cc820d4e4f4756b81fb3c63a41fcc7', N'会员级别', N'Member level', NULL, CAST(0x0000A4B900AE3654 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (79, N'835d59b0d6854a0a8394d652b912e360', N'电子邮箱', N'Email', NULL, CAST(0x0000A4B900AE4C81 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (80, N'a4e0ae9919364e7dbcd37406becd0536', N'报单中心', N'Declaration Center', NULL, CAST(0x0000A4B900AE66ED AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (81, N'e2745c31e0c84455ac988050ad9b5ae0', N'推荐人', N'Recommend', NULL, CAST(0x0000A4B900AE81F1 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (82, N'31b931eceb134993b804ecfa58435a11', N'安置位置', N'Placement position', NULL, CAST(0x0000A4B900AE9AC3 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (83, N'd2ee930dd736496097cede418fedc5ca', N'激活日期', N'Activation date', NULL, CAST(0x0000A4B900AEAE79 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (84, N'39130a13a07e4845bfcba16cc6d740c7', N'提现信息 ', N'Present information', NULL, CAST(0x0000A4B900AEC0D0 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (85, N'b6a04b20d9f8426ea3ce2c343c691b61', N'户主姓名', N'Name Of Card', NULL, CAST(0x0000A4B900AF6C95 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (86, N'f9035b77d0a5468cbdd125a6a665b698', N'账户信息', N'Account information', NULL, CAST(0x0000A4B900AFA963 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (87, N'7c8edb75795a4cb5a77342b38c0bfd97', N'序号', N'Serial number', NULL, CAST(0x0000A4B900AFCE9D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (88, N'd836208ffbb64f82b1b85bebfeb65f6c', N'管理员', N'Manage', NULL, CAST(0x0000A4B900B05F8B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (89, N'3200bd02350f4db3ba102860de821304', N'工商银行', N'ICBC', NULL, CAST(0x0000A4B900B07A35 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (90, N'0c11139cb9d8482d89d26cd72d515d67', N'财付通 ', N'Tentent Pay', NULL, CAST(0x0000A4B900B0A27E AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (91, N'4e83247ff0ca4f3bb3503535738f00fc', N'转出记录', N'Roll out record', NULL, CAST(0x0000A4B900B0D7AA AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (92, N'8f987f269e714ab4a951eeb010d2e0f8', N'转入记录', N'Transfer to record', NULL, CAST(0x0000A4B900B0EE7C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (93, N'eee77946d585407a9a850349c60eef96', N'转换记录', N'Conversion record', NULL, CAST(0x0000A4B900B100D7 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (94, N'23acf2f299654ec1bce0a29a77f10b1e', N'金额', N'Amount', NULL, CAST(0x0000A4B900B11EA0 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (95, N'31c62074cd2b4ab09b3dbaec2f3d1860', N'状态', N'State', N'', CAST(0x0000A4B900B13348 AS DateTime), N'admin', CAST(0x0000A4B9010BF7A9 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (96, N'ee6fbbe309d44b7daeb1530cda94ef42', N'备注', N'Remarks', NULL, CAST(0x0000A4B900B14A06 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (97, N'bd707e8fda514e87b47ff36c2c5699bf', N'日期', N'Date', NULL, CAST(0x0000A4B900B15F47 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (98, N'b0a09531cf994e6592094305a851e0eb', N'创建日期', N'Setup Date', NULL, CAST(0x0000A4B900B1C4CE AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (99, N'24d3dbf3294c4d38bdd22ec0c98bf3db', N'查询', N'Query', NULL, CAST(0x0000A4B900B1EEDF AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (100, N'331be38e8df84360bd4e2c1ad93668e8', N'修&nbsp;&nbsp;改', N'Modify', NULL, CAST(0x0000A4B900B27557 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
GO
print 'Processed 100 total records'
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (101, N'9d52c8e30a3b4a488e38c9f3fe33516b', N'添&nbsp;&nbsp;加', N'Add', NULL, CAST(0x0000A4B900B284BE AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (102, N'f8db08a85e7444969bd4d44098a9dd40', N'全选', N'All', NULL, CAST(0x0000A4B900B2B887 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (103, N'702245b796c942368734800ecc0fa7b2', N'上一页', N'Previous', NULL, CAST(0x0000A4B900B37373 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (104, N'256000445afb4ac9bab1ab854edea410', N'下一页', N'Next', NULL, CAST(0x0000A4B900B385BE AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (105, N'256000445afb4ac9baasb854edea410', N'删除', N'Delete', NULL, CAST(0x0000A4B900B385BE AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (106, N'27fbbb45c9d648aab70cdc4f9b192078', N'未审核', N'Not audit', NULL, CAST(0x0000A4B900B41A5F AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (107, N'e5a1dc61acaa4c499d532f1e46632ada', N'已审核', N'Audit', NULL, CAST(0x0000A4B900B42CE8 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (108, N'2809a63aee7a44f3a6b9fa53fc3d63af', N'人民币', N'RMB', NULL, CAST(0x0000A4B900B44181 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (109, N'7ba4ef82c4094e819abe6b144ee9a75d', N'实发', N'Real Pay', NULL, CAST(0x0000A4B900B45D51 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (110, N'02e716da21ba48549931a0fb2672e8da', N'开户行', N'Account Bank', NULL, CAST(0x0000A4B900B47FBC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (111, N'dd33b1dc851c4744b6d84586341b7e18', N'支行', N'Branch Bank', NULL, CAST(0x0000A4B900B49BB2 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (112, N'd8a86fbae15e48efa8e4db8b4e56b68d', N'奖金合计', N'Bonus total', NULL, CAST(0x0000A4B900B4CAF7 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (113, N'4d3646cccadf4b0dadad9723ca1823ac', N'奖励类型', N'Award type', NULL, CAST(0x0000A4B900B4E30D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (114, N'7fe0cfdbe52e496c971133c1acb5e70b', N'直推奖', N'Straight Reward', NULL, CAST(0x0000A4B900B5117C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (115, N'346ab47d24c74bc29957fadd5c19b9df', N'组织奖', N'Organization Award', NULL, CAST(0x0000A4B900B5390C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (116, N'6a0a40d6afd34d5893c7b3a1746fbba2', N'层点奖', N'Layer point Award', NULL, CAST(0x0000A4B900B557A1 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (117, N'03f35d7363c04563a9859b1d9800177d', N'花红补贴', N'Bonus subsidy', NULL, CAST(0x0000A4B900B58360 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (118, N'6f8db470d53049b6a8c9e217dceacb8b', N'月分红', N'Monthly dividends', NULL, CAST(0x0000A4B900B5A445 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (119, N'73c355ee0b4d4092a84329b58d068cfa', N'基金收益', N'Fund income', N'', CAST(0x0000A4B900B5BA44 AS DateTime), N'admin', CAST(0x0000A4B9010C95F8 AS DateTime), N'admin', 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (120, N'936de0f7bfb24a3d8a0d6e9447074091', N'报单奖', N'Declaration Award', NULL, CAST(0x0000A4B900B5CF98 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (121, N'c210619dd35e4db9b411bc15dad6cd63', N'开始日期', N'Begin Date', NULL, CAST(0x0000A4B900B62005 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (122, N'a7a8f18bdd3a4e74976c780687659b3e', N'截止日期', N'End Date', NULL, CAST(0x0000A4B900B65A4B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (123, N'fb54ea2895d741f5b3558123241796d0', N'请输入奖金来源', N'Please enter a bonus sour', NULL, CAST(0x0000A4B900B67B72 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (124, N'954d9e81a2be4dee862d41363443f9b6', N'请输入会员账号', N'Please enter member Id', NULL, CAST(0x0000A4B900B6B292 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (125, N'50d581465987440880b9a8e8478938c9', N'是否生效', N'Is effective', NULL, CAST(0x0000A4B900B709BD AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (126, N'c08537d04cce41b88585bcda033c3c9f', N'充值钱包', N'Recharge Wallet', NULL, CAST(0x0000A4B900B71F54 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (127, N'c0b990b50e9c49fea59229c23b797bbf', N'标题', N'Title', NULL, CAST(0x0000A4B9010A6AC1 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (128, N'ed7594d1f7804e5fba4704880f39bc6b', N'所有', N'ALL', NULL, CAST(0x0000A4B9010A8601 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (129, N'd3db1c4ffd6c4501ba7b7acdd0329262', N'正常', N'Normal', NULL, CAST(0x0000A4B9010AA46D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (130, N'f5f32144b6ef435da9951bc00bfcdc4d', N'已作废', N'Void', NULL, CAST(0x0000A4B9010ADAE5 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (131, N'58c5760019a64c778d10e462af205952', N'发布公告', N'Announcement', NULL, CAST(0x0000A4B9010AFAFC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (132, N'd48eab3743a842af9b2cdffa1f2aa087', N'修改公告', N'Modify', NULL, CAST(0x0000A4B9010B33A6 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (133, N'7e6bc2645882411abef71098d1872641', N'基金持有量', N'Fund holding capacity', NULL, CAST(0x0000A4B9010B5632 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (134, N'786e5b5261c64f5896be8f0c93b5b018', N'购买总额', N'Total purchase', NULL, CAST(0x0000A4B9010B7222 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (135, N'f82b64684766446f9aec3a216e422b24', N'电子币余额', N'Electronic currency balance', NULL, CAST(0x0000A4B9010B8E79 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (136, N'db301e2533f848fd8ba7d21384ea64cb', N'购买数量', N'Purchase quantity', NULL, CAST(0x0000A4B9010BA5F2 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (137, N'2f979953edba4eb496976fd5c821c6b3', N'购买时间', N'Purchase time', NULL, CAST(0x0000A4B9010BB8E0 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (138, N'30b1857591414d409ed4fbdaf2e361b8', N'成交状态', N'Turnover status', NULL, CAST(0x0000A4B9010BDD45 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (139, N'98f49e637ef84e678aba16f27835b1ec', N'会员人数', N'Member Count', NULL, CAST(0x0000A4B9010C21D7 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (140, N'6c55e76b1ef54810af93d9779c7d4742', N'每份收益', N'Each gain', NULL, CAST(0x0000A4B9010C37DC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (141, N'8bb67c9fa5d94537a936a6b8a134b9fa', N'基金总额', N'Total fund', NULL, CAST(0x0000A4B9010C4A7A AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (142, N'7b71eb87c7994111b6147f5d52ee3417', N'基金收益总额', N'Total fund income', NULL, CAST(0x0000A4B9010C7E61 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (143, N'aae161f601ed4abba58d5426715e327e', N'为空则按照默认', N'For the null, by default', NULL, CAST(0x0000A4B9010F0980 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (144, N'e64627923d8446acac50281b76963bab', N'上次分红信息', N'Last time dividends', NULL, CAST(0x0000A4B9010F250B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (145, N'd5703465b6224d2f8fcad6c33215d756', N'分红方式', N'Dividend Mode', NULL, CAST(0x0000A4B9010F4208 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (146, N'978e2ce9d67345aba5dc32856456a8a7', N'手动', N'Manual', NULL, CAST(0x0000A4B9010F5930 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (147, N'6656be04158e49ac87e7ddbe816d4e37', N'自动', N'Automatic', NULL, CAST(0x0000A4B9010F6E4B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (148, N'b6e051dd5ff549a596b47e38935ea8c6', N'返回', N'Return', NULL, CAST(0x0000A4B9010F81B5 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (149, N'a74e840eef144ef78950cdada6f36509', N'原登录密码', N'Original login password', NULL, CAST(0x0000A4B90111C3A6 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (150, N'6b01b9f079c84661b037ed1600bae804', N'新登录密码', N'New login password', NULL, CAST(0x0000A4B90111DF6D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (151, N'4a7d8f50cd984ee08bd375aca8ad6c95', N'确认登录密码', N'Confirm login password', NULL, CAST(0x0000A4B901120DA8 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (152, N'7996d52ca8274210a9acd4105d9a2e66', N' 密保问题答案', N'Security question answer', NULL, CAST(0x0000A4B90112631C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (153, N'53d191650bd54a0dab365437cdd59ddc', N'新二级密码', N'New two password', NULL, CAST(0x0000A4B90112B717 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (154, N'49ea4eb087ad4aa8bf8cadb2dbe86d37', N'确认二级密码', N'Confirm two password', NULL, CAST(0x0000A4B90112EF11 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (155, N'a65b24f7624641b49043e15b9d40c7cc', N'保存', N'Save', NULL, CAST(0x0000A4B901133300 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (156, N'88239d8a418e4b8fbe72889602d1c4fc', N'当前级别', N'Current level', NULL, CAST(0x0000A4B901135595 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (157, N'd564f4e0fa8a4bf895733190e8da0385', N'入门代理', N'Introduction agent', NULL, CAST(0x0000A4B901138EEC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (158, N'a5bbbdbcda1a4ba79fe582781759a24e', N'初级代理', N'Primary agent', NULL, CAST(0x0000A4B90113A45C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (159, N'04d40670212a4a529511a80233322c50', N'高级代理', N'Senior agency', NULL, CAST(0x0000A4B90113CD50 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (160, N'e899e38aee77429c81e819f7a6d5ebf5', N'代理主任', N'Deputy director', NULL, CAST(0x0000A4B90113EB4D AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (161, N'6b292cbaa9dc4a9cb856a191e17aa13e', N'经销商', N'Distributor', NULL, CAST(0x0000A4B901140995 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (162, N'87052e1e74904f8b9e3e07dfba3825bf', N'总经销', N'Total distribution', NULL, CAST(0x0000A4B901141C38 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (163, N'f37cf05db29346bfb774d25c29e0ea0d', N'级别', N'Level', NULL, CAST(0x0000A4B901145FAC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (164, N'fe9274cab27d4111a1fb00213c23ca56', N'升级', N'Upgrade', NULL, CAST(0x0000A4B901147200 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (165, N'f5914a3eb8264b93bb42515881a9c6ae', N'离线', N'Off-line', NULL, CAST(0x0000A4B9011496FE AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (166, N'43e25ca7292f412485e4e51d06801d99', N'在线', N'On-line', NULL, CAST(0x0000A4B90114A944 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (167, N'83779d57591b45a7b63fe12d82c7b52d', N'会员角色', N'Member role', NULL, CAST(0x0000A4B90114C965 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (168, N'02e11fce8fdc474088c0856a54f1cfd2', N'已激活会员', N'Activated member', NULL, CAST(0x0000A4B90114E40A AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (169, N'f7f02df3bffd4c3cafda158b2a6ea14a', N'未激活会员', N'No Activated member', NULL, CAST(0x0000A4B90114F649 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (170, N'd0c4c72a3acd4b029a81b8e39d7e4ba5', N'报单费', N'Declaration fee', NULL, CAST(0x0000A4B90115156B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (171, N'a8a668fd540c4d2aba2f4cab54a2426a', N'体验', N'Experience', NULL, CAST(0x0000A4B901152BCC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (172, N'4c669e2d21ff452481a724eac3895662', N'冻结状态', N'Freeze state', NULL, CAST(0x0000A4B9011555D7 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (173, N'1d5752175d1e4f4c8a357bc83a611fac', N'锁定状态', N'Lock state', NULL, CAST(0x0000A4B90115698F AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (174, N'0059dccd89cc40b2b7a30ae301f0f178', N'分红花红点数', N'Bonus bonus points', NULL, CAST(0x0000A4B90115A534 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (175, N'b0f3e8a3cd5f4007b98ea756c8d946e7', N'分红金额', N'Dividend amount', NULL, CAST(0x0000A4B9011601E2 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (176, N'315798e41a1947b78229c77dc1cf43fb', N'红利状态', N'Dividend status', NULL, CAST(0x0000A4B901162A89 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (177, N'cbba8c62c91e4137a36bbd355017396c', N'红利日期', N'Dividend date', NULL, CAST(0x0000A4B9011640B9 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (178, N'20f07471dade42f3aebb649d47848270', N'分红比例', N'Dividend ratio', NULL, CAST(0x0000A4B901165A5B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (179, N'90b19d2417aa4856be407757d9ed8430', N'分红日期', N'Dividend date', NULL, CAST(0x0000A4B90116930A AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (180, N'79443cda32a24b47970f64ccb3903348', N'当前利息', N'Current interest', NULL, CAST(0x0000A4B90116CD44 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (181, N'3107de02713247e5b9bbcea8401ccd66', N'利息总额', N'Total interest', NULL, CAST(0x0000A4B90116E966 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (182, N'256e70c42fc0473da8c989645e76328f', N'收益宝总额', N'Total income treasure', NULL, CAST(0x0000A4B901170B13 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (183, N'0f0478f6f15f452e8a835c2e852a39e3', N'交易时间', N'Trading time', NULL, CAST(0x0000A4B9011741A8 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (184, N'affd6edae4774de0914181c7422e918a', N'备注说明', N'Remarks', NULL, CAST(0x0000A4B901175E58 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (185, N'b22891ad490c4feda16035e18b51e7e1', N'奖金余额', N'Bonus balance', NULL, CAST(0x0000A4B901177AAA AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (186, N'0c2506edca1c49ef8bcb5e107b995992', N'账户余额', N'Balance of account', NULL, CAST(0x0000A4B901179029 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (187, N'43c6f9daecb54578abb74fe8b96bc52e', N'累计收益', N'Cumulative gain', NULL, CAST(0x0000A4B90117A484 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (188, N'887f3ca47a8749cc9d85ba61262ec61f', N'奖金转入收益宝', N'Bonus into treasure', NULL, CAST(0x0000A4B90117CAE5 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (189, N'5dbd1c5bb3574029ac438eab3cfaff74', N'收益宝转出现金币', N'Proceeds treasure turn gold', NULL, CAST(0x0000A4B90118295C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (190, N'af2b61d2199f403f93f809318b9bb648', N'转移金额', N'Transfer amount', NULL, CAST(0x0000A4B901185267 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (191, N'6fb6190467f049b6a3ce3412c067f123', N'交易时间', N'Charge Date', NULL, CAST(0x0000A4B901189287 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (192, N'45b4064fb23843359463ed1fb204af2d', N'已成交', N'Turnover', NULL, CAST(0x0000A4B90118C141 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (193, N'e09200907e3a4bae9b4e07c2a624be2d', N'交易金额', N'Change Moeney', NULL, CAST(0x0000A4B901190498 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (194, N'502873aff9cb4edb928389035a890de4', N'网站标题', N'Website title', NULL, CAST(0x0000A4B901194F4B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (195, N'747633106bc041cab4f498a1f4d63438', N'SEO关键字', N'SEO keyword', NULL, CAST(0x0000A4B9011977BC AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (196, N'9dbf8455668944f8ae6359351615decf', N'SEO描述', N'SEO Remarks', NULL, CAST(0x0000A4B90119A05C AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (197, N'12adc41dc20b4a49893c19de6292b847', N'版权信息', N'Copyright information', NULL, CAST(0x0000A4B90119CC05 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (198, N'3bc44f993810490293b231e6a059329d', N'开放时间', N'Opening Hours', NULL, CAST(0x0000A4B90119ED4A AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (199, N'e8d47f6b191849eea173f49674a67a7c', N'关闭信息', N'Close information', NULL, CAST(0x0000A4B9011A0736 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (200, N'18fb46c536c2467da8a3fead16b27a25', N'提现提示', N'Mention current tips', NULL, CAST(0x0000A4B9011A2F59 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (201, N'030e4ddc05664d1ca44008eaa59f35e8', N'汇款提示', N'Remittance tips', NULL, CAST(0x0000A4B9011A619B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
GO
print 'Processed 200 total records'
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (202, N'cd2fc46af5624d4c99c60142278ed8b6', N'单页行数', N'Single page Num', NULL, CAST(0x0000A4B9011A8DC3 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (203, N'43e663c360e34e18b860004703d38dd9', N'网站状态', N'Website status', NULL, CAST(0x0000A4B9011AA8CD AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (204, N'eb4e59aeba4141fe93c6ad2d86f0add4', N'开放', N'Open', NULL, CAST(0x0000A4B9011ABD38 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (205, N'087e46e8f9f5405fb2f635843b24198f', N'关闭', N'Close', NULL, CAST(0x0000A4B9011ACA10 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (206, N'f98d92b558f2492a9ff2ed62edaf1751', N'网络管理费', N'Network manage fee', NULL, CAST(0x0000A4B9011AEE49 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (207, N'd34db16bd18847a1bf70df406f6f91d2', N'入账汇率', N'For the exchange rate', NULL, CAST(0x0000A4B9011B0A16 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (368, N'97d4b66a795447dc83865986a65e927d', N'入门代理', N'rumen', NULL, CAST(0x0000A4BD0005E7CC AS DateTime), N'admin', NULL, NULL, 1, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (369, N'72bc2f63e23b426ebc9c97b3628cbce8', N'投资配套', N'touzi', NULL, CAST(0x0000A4BD0019BE9B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (370, N'acac1771b2e24d09ac3f7047793d233f', N'转出', N'Out', NULL, CAST(0x0000A4BD001AAE1E AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (371, N'5121fa3bf3064684a3fe69ee77c74f9c', N'转入', N'Turn In', NULL, CAST(0x0000A4BD001C553B AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (372, N'7e2e86f1683049329c425dbb2512e83f', N'资产管理', N'Asset management', NULL, CAST(0x0000A4C000A595AB AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (373, N'5ebc956e7a384955b94c57942f19e490', N'兑换钱包', N'Exchange Wallet', NULL, CAST(0x0000A4C000A595AB AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (374, N'80b49796542b44bda841aad9acad6bda', N'推 荐 人', N'Recommended', NULL, CAST(0x0000A4C00114D124 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (375, N'2b50cfa1808c4cfeb8bf3ff9f3b50df0', N'安全秘钥', N'Security key', NULL, CAST(0x0000A4C00114D124 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (376, N'ebc851e9c6f64a339bdee6831e4cdf71', N'密保答案', N'Secret answer', NULL, CAST(0x0000A4C001157A99 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (377, N'2ab3dd213a374b0d83d38153119c51f0', N'确认二级安全秘钥', N'Confirm two security key', NULL, CAST(0x0000A4C00115EB20 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (378, N'a91ced3949244862bd68c229e4c41ee6', N'二级安全秘钥', N'two security key', NULL, CAST(0x0000A4C00115EB20 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (379, N'bd5f0acdda7649259eb0821585d55190', N'正在建设中，敬请期待', N'Under construction, please look forward to ', NULL, CAST(0x0000A4C101126BB6 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
INSERT [dbo].[Sys_Language] ([Id], [Code], [ZHName], [ENName], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status], [Sort], [LanguageCode]) VALUES (380, N'209666c9b5794b5993d00f501cf95006', N'今天', N'today', NULL, CAST(0x0000A6140139F9E0 AS DateTime), N'admin', NULL, NULL, 0, 1, 1, N'0002')
SET IDENTITY_INSERT [dbo].[Sys_Language] OFF
/****** Object:  Table [dbo].[Sys_BankInfo]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_BankInfo](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](40) NOT NULL,
	[Name] [varchar](40) NOT NULL,
	[PicUrl] [varchar](100) NULL,
	[LinkUrl] [varchar](100) NULL,
	[Remark] [varchar](1000) NULL,
	[CreatedTime] [datetime] NOT NULL,
	[CreatedBy] [varchar](40) NOT NULL,
	[UpdatedTime] [datetime] NULL,
	[UpdatedBy] [varchar](40) NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Sys_BankInfo] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_BankInfo] ON
INSERT [dbo].[Sys_BankInfo] ([Id], [Code], [Name], [PicUrl], [LinkUrl], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status]) VALUES (11, N'15', N'中国建设银行', N'', N'', N'中国建设银行', CAST(0x0000A4EF00826860 AS DateTime), N'weika', CAST(0x0000A7BA00CCD27D AS DateTime), N'baoma888', 0, 1)
INSERT [dbo].[Sys_BankInfo] ([Id], [Code], [Name], [PicUrl], [LinkUrl], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status]) VALUES (12, N'14', N'中国工商银行', N'', N'', N'中国工商银行', CAST(0x0000A4EF00826860 AS DateTime), N'weika', CAST(0x0000A7BA00CCD27D AS DateTime), N'baoma888', 0, 1)
INSERT [dbo].[Sys_BankInfo] ([Id], [Code], [Name], [PicUrl], [LinkUrl], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status]) VALUES (14, N'13', N'中国农业银行', N'', N'', N'中国农业银行', CAST(0x0000A4EF00826860 AS DateTime), N'weika', CAST(0x0000A7BA00CCD27D AS DateTime), N'baoma888', 0, 1)
INSERT [dbo].[Sys_BankInfo] ([Id], [Code], [Name], [PicUrl], [LinkUrl], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status]) VALUES (22, N'16', N'支付宝', N'', N'', N'支付宝', CAST(0x0000A73E0150AAB8 AS DateTime), N'weika', CAST(0x0000A7BA00CCD27D AS DateTime), N'baoma888', 0, 1)
INSERT [dbo].[Sys_BankInfo] ([Id], [Code], [Name], [PicUrl], [LinkUrl], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status]) VALUES (23, N'17', N'xxxxx', N'', N'', N'xxxxxx', CAST(0x0000A7BA00B4747C AS DateTime), N'baoma888', CAST(0x0000A7BA00CCD27D AS DateTime), N'baoma888', 1, 1)
INSERT [dbo].[Sys_BankInfo] ([Id], [Code], [Name], [PicUrl], [LinkUrl], [Remark], [CreatedTime], [CreatedBy], [UpdatedTime], [UpdatedBy], [IsDeleted], [Status]) VALUES (24, N'17', N'中国民生银行', N'', N'', N'中国民生银行', CAST(0x0000A7BA00CCD27D AS DateTime), N'baoma888', NULL, NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[Sys_BankInfo] OFF
/****** Object:  Table [dbo].[StockRightConfig]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockRightConfig](
	[Code] [varchar](10) NOT NULL,
	[FHCount] [int] NOT NULL,
	[FHFloat] [decimal](18, 4) NOT NULL,
	[BuyMoney] [decimal](18, 4) NOT NULL,
	[LimitCount] [int] NOT NULL,
 CONSTRAINT [PK_StockRightConfig] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[StockRightConfig] ([Code], [FHCount], [FHFloat], [BuyMoney], [LimitCount]) VALUES (N'001', 7, CAST(0.1000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[StockRightConfig] ([Code], [FHCount], [FHFloat], [BuyMoney], [LimitCount]) VALUES (N'002', 30, CAST(0.1000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[StockRightConfig] ([Code], [FHCount], [FHFloat], [BuyMoney], [LimitCount]) VALUES (N'003', 180, CAST(0.1000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 0)
INSERT [dbo].[StockRightConfig] ([Code], [FHCount], [FHFloat], [BuyMoney], [LimitCount]) VALUES (N'004', 365, CAST(0.1000 AS Decimal(18, 4)), CAST(500.0000 AS Decimal(18, 4)), 0)
/****** Object:  Table [dbo].[StockRight]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockRight](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MID] [varchar](50) NOT NULL,
	[BuyDate] [datetime] NOT NULL,
	[BuyMoney] [decimal](18, 4) NOT NULL,
	[BuyCount] [int] NOT NULL,
	[StockType] [varchar](20) NOT NULL,
	[FHCount] [int] NOT NULL,
	[FHMoney] [decimal](18, 4) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[OutDate] [datetime] NULL,
 CONSTRAINT [PK_StockRight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SMS]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SMS](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SType] [varchar](10) NOT NULL,
	[SContent] [text] NULL,
	[Tel] [varchar](20) NULL,
	[SMSKey] [varchar](50) NULL,
	[CreateDate] [datetime] NULL,
	[MID] [varchar](50) NULL,
	[SendState] [bit] NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShopCar]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShopCar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[MID] [varchar](50) NULL,
	[GId] [int] NULL,
	[GType] [varchar](50) NULL,
	[GCount] [int] NULL,
	[AddTime] [datetime] NULL,
	[AddBy] [varchar](50) NULL,
	[Remark] [nvarchar](1000) NULL,
	[IsDeleted] [bit] NULL,
	[Status] [int] NULL,
	[BuyPrice] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ShopCar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SHMoney]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHMoney](
	[MAgencyType] [varchar](10) NOT NULL,
	[MAgencyName] [varchar](20) NULL,
	[Money] [varchar](50) NULL,
	[BTFloat] [decimal](18, 4) NULL,
	[TJFloat] [decimal](18, 4) NULL,
	[TXFloat] [decimal](18, 4) NULL,
	[TakeOffFloat] [decimal](18, 4) NULL,
	[ReBuyFloat] [decimal](18, 4) NULL,
	[MCWFloat] [decimal](18, 4) NULL,
	[MColor] [varchar](10) NULL,
	[ViewLevel] [int] NULL,
	[TJCount] [int] NULL,
	[YJMoney] [decimal](18, 2) NULL,
	[TeamCount] [int] NULL,
	[teamPer] [decimal](18, 4) NULL,
	[MinTeamMoney] [decimal](18, 2) NULL,
	[SubCount] [int] NULL,
	[DPFloat] [decimal](18, 4) NULL,
	[DPTopMoney] [decimal](18, 2) NULL,
 CONSTRAINT [PK_SHMoney] PRIMARY KEY CLUSTERED 
(
	[MAgencyType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SHMoney', @level2type=N'COLUMN',@level2name=N'TakeOffFloat'
GO
INSERT [dbo].[SHMoney] ([MAgencyType], [MAgencyName], [Money], [BTFloat], [TJFloat], [TXFloat], [TakeOffFloat], [ReBuyFloat], [MCWFloat], [MColor], [ViewLevel], [TJCount], [YJMoney], [TeamCount], [teamPer], [MinTeamMoney], [SubCount], [DPFloat], [DPTopMoney]) VALUES (N'001', N'未投资', N'0', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'#FF0000', 10, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[SHMoney] ([MAgencyType], [MAgencyName], [Money], [BTFloat], [TJFloat], [TXFloat], [TakeOffFloat], [ReBuyFloat], [MCWFloat], [MColor], [ViewLevel], [TJCount], [YJMoney], [TeamCount], [teamPer], [MinTeamMoney], [SubCount], [DPFloat], [DPTopMoney]) VALUES (N'002', N'已投资', N'0', CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), CAST(0.0000 AS Decimal(18, 4)), N'#795922', 10, 0, CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)), 0, CAST(0.0000 AS Decimal(18, 4)), CAST(0.00 AS Decimal(18, 2)))
/****** Object:  Table [dbo].[Roles]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[RType] [varchar](10) NOT NULL,
	[RName] [varchar](20) NOT NULL,
	[RColor] [varchar](10) NULL,
	[RIndex] [int] IDENTITY(1,1) NOT NULL,
	[CMessage] [bit] NOT NULL,
	[IsAdmin] [bit] NULL,
	[CanSH] [bit] NULL,
	[CanLogin] [bit] NULL,
	[VState] [bit] NULL,
	[Super] [bit] NULL,
	[XingZheng] [bit] NULL,
	[CaiWu] [bit] NULL,
	[KeFu] [bit] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([RType], [RName], [RColor], [RIndex], [CMessage], [IsAdmin], [CanSH], [CanLogin], [VState], [Super], [XingZheng], [CaiWu], [KeFu]) VALUES (N'Manage', N'管理员', N'#177859', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Roles] ([RType], [RName], [RColor], [RIndex], [CMessage], [IsAdmin], [CanSH], [CanLogin], [VState], [Super], [XingZheng], [CaiWu], [KeFu]) VALUES (N'Nomal', N'会员', N'#177859', 2, 0, 0, 1, 1, 0, 0, 0, 0, 0)
INSERT [dbo].[Roles] ([RType], [RName], [RColor], [RIndex], [CMessage], [IsAdmin], [CanSH], [CanLogin], [VState], [Super], [XingZheng], [CaiWu], [KeFu]) VALUES (N'Notactive', N'未激活会员', N'#177859', 3, 0, 0, 1, 1, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[RolePowers]    Script Date: 11/25/2017 17:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RolePowers](
	[RID] [int] IDENTITY(1,1) NOT NULL,
	[RType] [varchar](10) NOT NULL,
	[CID] [varchar](10) NOT NULL,
	[IFVerify] [bit] NULL,
 CONSTRAINT [PK_ZxResource] PRIMARY KEY CLUSTERED 
(
	[RType] ASC,
	[CID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RolePowers] ON
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10452, N'Activation', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8170, N'CW', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8171, N'CW', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8172, N'CW', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8184, N'CW', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8177, N'CW', N'002018', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8210, N'CW', N'003001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8205, N'CW', N'004005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8204, N'CW', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8202, N'CW', N'004008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8191, N'CW', N'019003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8192, N'CW', N'019007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8193, N'CW', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8206, N'CW', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (4232, N'Initial', N'000', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (4233, N'Initial', N'001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (4238, N'Initial', N'001004', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (4239, N'Initial', N'001005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (4240, N'Initial', N'001006', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (4256, N'Initial', N'020', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11433, N'Manage', N'000', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11434, N'Manage', N'001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11435, N'Manage', N'001001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11484, N'Manage', N'001002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11504, N'Manage', N'001011', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11437, N'Manage', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11438, N'Manage', N'002001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11439, N'Manage', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11440, N'Manage', N'002003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11441, N'Manage', N'002004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11547, N'Manage', N'002005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11554, N'Manage', N'002006', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11442, N'Manage', N'002007', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11443, N'Manage', N'002008', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11444, N'Manage', N'002013', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11557, N'Manage', N'002014', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11569, N'Manage', N'002015', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11447, N'Manage', N'002018', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11480, N'Manage', N'002022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11483, N'Manage', N'002023', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11565, N'Manage', N'002028', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11573, N'Manage', N'002029', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11450, N'Manage', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11452, N'Manage', N'004001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11451, N'Manage', N'004003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11453, N'Manage', N'004005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11454, N'Manage', N'004007', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11455, N'Manage', N'004009', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11456, N'Manage', N'004010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11457, N'Manage', N'012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11458, N'Manage', N'012001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11459, N'Manage', N'012002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11460, N'Manage', N'012003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11461, N'Manage', N'019', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11463, N'Manage', N'019003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11462, N'Manage', N'019004', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11468, N'Manage', N'019005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11467, N'Manage', N'019006', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11464, N'Manage', N'019007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11465, N'Manage', N'019008', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11466, N'Manage', N'019009', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11469, N'Manage', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11586, N'Manage', N'020001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11488, N'Manage', N'020002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11492, N'Manage', N'020006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11496, N'Manage', N'020007', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11500, N'Manage', N'020008', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11472, N'Manage', N'021', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11473, N'Manage', N'021001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11474, N'Manage', N'021002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11475, N'Manage', N'021003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11476, N'Manage', N'021006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11477, N'Manage', N'021007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11556, N'Manage', N'021013', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11479, N'Manage', N'021060', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11324, N'Nomal', N'000', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11325, N'Nomal', N'001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11326, N'Nomal', N'001001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11485, N'Nomal', N'001002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11505, N'Nomal', N'001011', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11328, N'Nomal', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11329, N'Nomal', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11431, N'Nomal', N'002003', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11330, N'Nomal', N'002004', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11331, N'Nomal', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11332, N'Nomal', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11376, N'Nomal', N'002013', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11558, N'Nomal', N'002014', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11570, N'Nomal', N'002015', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11481, N'Nomal', N'002022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11566, N'Nomal', N'002028', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11333, N'Nomal', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11334, N'Nomal', N'004001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11335, N'Nomal', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11336, N'Nomal', N'004009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11337, N'Nomal', N'004011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11338, N'Nomal', N'012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11339, N'Nomal', N'012001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11340, N'Nomal', N'012002', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11341, N'Nomal', N'012003', 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11342, N'Nomal', N'019', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11346, N'Nomal', N'019005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11345, N'Nomal', N'019006', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11343, N'Nomal', N'019008', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11344, N'Nomal', N'019009', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11347, N'Nomal', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11489, N'Nomal', N'020002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11493, N'Nomal', N'020006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11497, N'Nomal', N'020007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11501, N'Nomal', N'020008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11350, N'Notactive', N'000', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11351, N'Notactive', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11352, N'Notactive', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11486, N'Notactive', N'001002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11506, N'Notactive', N'001011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11354, N'Notactive', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11355, N'Notactive', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11432, N'Notactive', N'002003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11356, N'Notactive', N'002004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11357, N'Notactive', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11358, N'Notactive', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11377, N'Notactive', N'002013', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11559, N'Notactive', N'002014', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11571, N'Notactive', N'002015', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11359, N'Notactive', N'002018', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11482, N'Notactive', N'002022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11567, N'Notactive', N'002028', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11360, N'Notactive', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11361, N'Notactive', N'004001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11362, N'Notactive', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11363, N'Notactive', N'004009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11364, N'Notactive', N'004011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11365, N'Notactive', N'012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11366, N'Notactive', N'012001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11367, N'Notactive', N'012002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11368, N'Notactive', N'012003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11369, N'Notactive', N'019', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11370, N'Notactive', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11371, N'Notactive', N'019009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11372, N'Notactive', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11490, N'Notactive', N'020002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11494, N'Notactive', N'020006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11498, N'Notactive', N'020007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11502, N'Notactive', N'020008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10455, N'SuperVIP', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10463, N'SuperVIP', N'006013', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11508, N'VIP', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11509, N'VIP', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11510, N'VIP', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11511, N'VIP', N'001002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11512, N'VIP', N'001011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11513, N'VIP', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11514, N'VIP', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11515, N'VIP', N'002003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11516, N'VIP', N'002004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11548, N'VIP', N'002005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11555, N'VIP', N'002006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11519, N'VIP', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11520, N'VIP', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11521, N'VIP', N'002013', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11560, N'VIP', N'002014', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11572, N'VIP', N'002015', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11524, N'VIP', N'002022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11568, N'VIP', N'002028', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11525, N'VIP', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11526, N'VIP', N'004001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11527, N'VIP', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11528, N'VIP', N'004009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11529, N'VIP', N'004010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11530, N'VIP', N'012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11531, N'VIP', N'012001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11532, N'VIP', N'012002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11533, N'VIP', N'012003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11534, N'VIP', N'019', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11538, N'VIP', N'019005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11537, N'VIP', N'019006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11535, N'VIP', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11536, N'VIP', N'019009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11539, N'VIP', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11544, N'VIP', N'020002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11541, N'VIP', N'020006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11542, N'VIP', N'020007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11543, N'VIP', N'020008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10995, N'VIP1', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10996, N'VIP1', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10997, N'VIP1', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11140, N'VIP1', N'001012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (10999, N'VIP1', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11208, N'VIP1', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11232, N'VIP1', N'002004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11004, N'VIP1', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11005, N'VIP1', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11146, N'VIP1', N'002010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11007, N'VIP1', N'002011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11008, N'VIP1', N'002021', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11009, N'VIP1', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11214, N'VIP1', N'004001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11010, N'VIP1', N'004003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11011, N'VIP1', N'004005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11012, N'VIP1', N'004006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11013, N'VIP1', N'004007', 1)
GO
print 'Processed 200 total records'
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11014, N'VIP1', N'004009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11153, N'VIP1', N'004011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11159, N'VIP1', N'004022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11164, N'VIP1', N'004023', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11015, N'VIP1', N'006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11220, N'VIP1', N'006002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11016, N'VIP1', N'006003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11017, N'VIP1', N'006004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11018, N'VIP1', N'006005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11019, N'VIP1', N'006006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11020, N'VIP1', N'006009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11021, N'VIP1', N'006010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11022, N'VIP1', N'006011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11278, N'VIP1', N'006012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11024, N'VIP1', N'019', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11028, N'VIP1', N'019005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11027, N'VIP1', N'019006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11025, N'VIP1', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11026, N'VIP1', N'019009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11029, N'VIP1', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11168, N'VIP2', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11169, N'VIP2', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11170, N'VIP2', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11172, N'VIP2', N'001012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11173, N'VIP2', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11210, N'VIP2', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11234, N'VIP2', N'002004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11179, N'VIP2', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11180, N'VIP2', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11181, N'VIP2', N'002010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11182, N'VIP2', N'002021', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11183, N'VIP2', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11216, N'VIP2', N'004001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11185, N'VIP2', N'004005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11186, N'VIP2', N'004006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11187, N'VIP2', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11188, N'VIP2', N'004011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11189, N'VIP2', N'004022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11190, N'VIP2', N'004023', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11191, N'VIP2', N'006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11222, N'VIP2', N'006002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11192, N'VIP2', N'006003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11193, N'VIP2', N'006004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11194, N'VIP2', N'006005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11195, N'VIP2', N'006006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11196, N'VIP2', N'006009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11197, N'VIP2', N'006010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11198, N'VIP2', N'006011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11280, N'VIP2', N'006012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11200, N'VIP2', N'019', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11201, N'VIP2', N'019004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11202, N'VIP2', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11203, N'VIP2', N'019009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11204, N'VIP2', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11074, N'VIP3', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11075, N'VIP3', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11076, N'VIP3', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11143, N'VIP3', N'001012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11077, N'VIP3', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11211, N'VIP3', N'002002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11235, N'VIP3', N'002004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11082, N'VIP3', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11083, N'VIP3', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11149, N'VIP3', N'002010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11084, N'VIP3', N'002021', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11085, N'VIP3', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11217, N'VIP3', N'004001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11087, N'VIP3', N'004002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11088, N'VIP3', N'004005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11089, N'VIP3', N'004006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11090, N'VIP3', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11091, N'VIP3', N'004009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11156, N'VIP3', N'004011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11161, N'VIP3', N'004022', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11166, N'VIP3', N'004023', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11092, N'VIP3', N'006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11223, N'VIP3', N'006002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11093, N'VIP3', N'006003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11094, N'VIP3', N'006004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11095, N'VIP3', N'006005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11096, N'VIP3', N'006006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11097, N'VIP3', N'006009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11098, N'VIP3', N'006010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11099, N'VIP3', N'006011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11281, N'VIP3', N'006012', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11101, N'VIP3', N'019', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11102, N'VIP3', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11103, N'VIP3', N'019009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11104, N'VIP3', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11107, N'VIP4', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11108, N'VIP4', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11109, N'VIP4', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11110, N'VIP4', N'002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11115, N'VIP4', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11116, N'VIP4', N'002008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11117, N'VIP4', N'002021', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11118, N'VIP4', N'004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11120, N'VIP4', N'004002', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11121, N'VIP4', N'004005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11122, N'VIP4', N'004006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11123, N'VIP4', N'004007', 1)
GO
print 'Processed 300 total records'
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11124, N'VIP4', N'004009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11125, N'VIP4', N'006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11126, N'VIP4', N'006003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11127, N'VIP4', N'006004', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11128, N'VIP4', N'006005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11129, N'VIP4', N'006006', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11130, N'VIP4', N'006009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11131, N'VIP4', N'006010', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11132, N'VIP4', N'006011', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11134, N'VIP4', N'019', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11135, N'VIP4', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11136, N'VIP4', N'019009', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (11137, N'VIP4', N'020', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8130, N'WL', N'000', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8131, N'WL', N'001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8132, N'WL', N'001001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8144, N'WL', N'002007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8137, N'WL', N'002018', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8169, N'WL', N'003001', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8165, N'WL', N'004005', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8164, N'WL', N'004007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8162, N'WL', N'004008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8151, N'WL', N'019003', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8152, N'WL', N'019007', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (8153, N'WL', N'019008', 1)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2055, N'WuLiu', N'000', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2056, N'WuLiu', N'001', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2085, N'WuLiu', N'001004', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2086, N'WuLiu', N'001005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2087, N'WuLiu', N'001006', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2059, N'WuLiu', N'004005', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2076, N'WuLiu', N'004007', 0)
INSERT [dbo].[RolePowers] ([RID], [RType], [CID], [IFVerify]) VALUES (2082, N'WuLiu', N'020', 0)
SET IDENTITY_INSERT [dbo].[RolePowers] OFF
/****** Object:  UserDefinedFunction [dbo].[GetTreeCount]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetTreeCount]
(
@mid varchar(20),
@level int
)
RETURNS @temptable table(mid varchar(20),mbd varchar(20))
AS
BEGIN 
declare @count int;
set @count = 0;

while(@count < @level)
BEGIN
set @mid = (select mbd from Member where MID = @mid)
set @count = @count + 1
END

set @count = 0;

insert into @temptable (mid) values (@mid);
while(@@Rowcount>0 and @count < @level)

BEGIN
insert into @temptable select member.mid,member.mbd from member where mbd in (
select mid from @temptable
) and mid not in (
select mid from @temptable
)

set @count = @count + 1
END

delete from @temptable where mid=@mid;
return;
END
GO
/****** Object:  StoredProcedure [dbo].[GetTask]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetTask]
@TToMID varchar(20),
@TFromMID varchar(20),
@ID int
as
if(@TFromMID='')
select * from Task where TToMID=@TToMID and IfRead='0' and ID>@ID and TState='1' order by ID
else
select * from Task where TFromMID=@TFromMID and TToMID=@TToMID and IfRead='0' and TState='1' and ID>@ID order by ID
GO
/****** Object:  UserDefinedFunction [dbo].[getSubBDMember]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--获得所有子元素(不包含自己)
CREATE FUNCTION [dbo].[getSubBDMember]
(
	@mid varchar(20)
)
RETURNS @temptable table(mid varchar(20),mbd varchar(20))
AS
begin

DECLARE @tb1 Table(mid varchar(20),mbd varchar(20))
DECLARE @tb2 Table(mid varchar(20),mbd varchar(20))
insert into @tb1(mid) values (@mid);
declare @i int =0;
declare @count int =1;
  while(@count>0)
    Begin
		   if(@i%2=0)
			   Begin
				   select @count =count(*) from @tb1
				   if(@count=0)
				   break;
				   insert into @temptable select member.mid,member.mbd from member where Member.MBD in (select mid from @tb1)
				   insert into @tb2 select member.mid,member.mbd from member where Member.MBD in (select mid from @tb1)
				   delete from @tb1;
	 
				End
		   else
				Begin
					 select @count =count(*) from @tb2
					 if(@count=0)
					 break;
					 insert into @temptable select member.mid,member.mbd from member where Member.MBD in (select mid from @tb2)
					 insert into @tb1 select member.mid,member.mbd from member where Member.MBD in (select mid from @tb2)
					 delete from @tb2;
		
				End
			set @i=@i+1
	 end	
	 return;
end
GO
/****** Object:  UserDefinedFunction [dbo].[getParentBDMember]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--获得所有父元素
CREATE FUNCTION [dbo].[getParentBDMember]
(
	@mid varchar(20)
)
RETURNS @temptable table(mid varchar(20),mbd varchar(20))
AS
begin

DECLARE @tb1 Table(mid varchar(20),mbd varchar(20))
insert into @tb1 select member.mid,member.mbd from member where mid = @mid and mbd <> @mid

select @mid = mbd from @tb1;
declare @count int = 0;
select @count = count(*) from @tb1;
  while(@count>0)
    Begin
		delete from @tb1;
		insert into @tb1 select member.mid,member.mbd from member where mid = @mid and mbd <> @mid;
		insert into @temptable select mid,mbd from @tb1;
		select @count = count(*) from @tb1;
		select @mid = mbd from @tb1;
	 End
	 return;
end
GO
/****** Object:  StoredProcedure [dbo].[GetMemberFHState]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMemberFHState]
	-- Add the parameters for the stored procedure here
	@mid varchar(20),
	@level int,
	@sumcount int
AS
BEGIN
	declare @temptable table(mid varchar(20),mbd varchar(20))
	declare @count int;
	set @count = 0;

	while(@count < @level)
	BEGIN
	set @mid = (select mbd from Member where MID = @mid)
	set @count = @count + 1
	END

	set @count = 0;

	insert into @temptable (mid) values (@mid);
	while(@@Rowcount>0 and @count < @level)

	BEGIN
	insert into @temptable select member.mid,member.mbd from member where mbd in (
	select mid from @temptable
	) and mid not in (
	select mid from @temptable
	)

	set @count = @count + 1
	END

	delete from @temptable where mid=@mid;

	set @count = (select COUNT(*) from @temptable where mid is not null)
	if(@count >= @sumcount)
	BEGIN
	update Member set FHState = 1 where MID = @mid;
	END

END
GO
/****** Object:  StoredProcedure [dbo].[GetLevelForView]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLevelForView]
@mid varchar(20),
@viewmid varchar(20),
@viewtype bit
AS
BEGIN
declare @tempmid varchar(20);
declare @level int;
set @level=0;
if(@viewtype='1')
begin
set @tempmid=(select MBD from Member where MID=@viewmid and MBD<>@viewmid);
while(@tempmid is not null and @tempmid<>@mid)
begin
set @level=@level+1;
set @viewmid=@tempmid;
set @tempmid=(select MBD from Member where MID=@viewmid and MBD<>@viewmid);
end
end
else
begin
set @tempmid=(select MTJ from Member where MID=@viewmid and MTJ<>@viewmid);
while(@tempmid is not null and @tempmid<>@mid)
begin
set @level=@level+1;
set @viewmid=@tempmid;
set @tempmid=(select MTJ from Member where MID=@viewmid and MTJ<>@viewmid);
end
end

if(@tempmid=@mid)
select @level+1;
else
select 0;
END
GO
/****** Object:  UserDefinedFunction [dbo].[getjxtype]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION [dbo].[getjxtype]
(	
	-- Add the parameters for the function here
	@mid varchar(20),@jxtype varchar(10),@jxuptype varchar(10)
)
RETURNS --@tempjxcounttable table (jxtype varchar(10),jxcount int) 
@tempjxtypetable table (jxmid varchar(20),jxtype varchar(10)) 
AS
begin
--declare @tempjxtypetable table (jxmid varchar(20),jxtype varchar(10)) 
declare test_Cursor CURSOR local for select mid from member where mbd=@mid;--定义游标
declare @tempmid varchar(20);
OPEN test_Cursor
 WHILE @@FETCH_STATUS = 0
     BEGIN  
         FETCH NEXT FROM test_Cursor INTO @tempmid
         if(@@FETCH_STATUS = 0)
         begin
         insert into @tempjxtypetable 
         select top 1 mid,jxtype from dbo.GetLevelTree(@tempmid,99999999) where jxtype>=@jxtype order by jxtype desc; 
         end
     END 
 CLOSE test_Cursor
 DEALLOCATE test_Cursor
 if((select count(1) from @tempjxtypetable where jxtype=@jxuptype)<2)--如果小于高一级的绩效2个则删除
 delete from @tempjxtypetable
 --insert into @tempjxcounttable values (@jxtype,(select count(*) from @tempjxtypetable where jxtype>=@jxtype));
 --insert into @tempjxcounttable values (@jxuptype,(select count(*) from @tempjxtypetable where jxtype=@jxuptype));
return;
end
GO
/****** Object:  StoredProcedure [dbo].[getCyjmoney]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getCyjmoney]
	@level int,
	@mbd varchar(20)
AS
BEGIN
	declare @count int;
	set @count=0;
	declare @mbdtable table(mid varchar(20),shmoney int,mdate datetime);
	declare @mbdtable2 table(mid varchar(20),shmoney int,mdate datetime);
	insert into @mbdtable select mid,shmoney,mdate from member where mstate='1' and mbd<>mid and mid = @mbd
	while(@count<@level)
	begin
	insert into @mbdtable2 select mid,shmoney,mdate from member where mstate='1' and mbd<>mid and mbd in (select mid from @mbdtable)
	delete from @mbdtable;
	insert into @mbdtable select * from @mbdtable2;
	delete from @mbdtable2;
	set @count=@count+1;
	end
	select top(1) isnull(min(shmoney),0) from @mbdtable ;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMtjToMin]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAutoMbdByMtjToMin]
	@mtj varchar(20),
	@mbdcount int
AS
BEGIN
	declare @count int;
	set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
	while(@count>=@mbdcount)
	begin
	set @mtj=(select top 1 Member.MID from Member inner join MemberConfig on Member.MID=MemberConfig.MID where MBD=@mtj and MState='1' order by YJMoney)
	set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
	end
	select @mtj;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMtjToLR]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[GetAutoMbdByMtjToLR]
	@mtj varchar(20),
	@mbdcount int
AS
BEGIN
	declare @count int;
	declare @mbdindex int;
	set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
	if(@count>=@mbdcount)
	begin
		set @mtj=(select top 1 Member.MID from Member inner join MemberConfig on Member.MID=MemberConfig.MID where MBD=@mtj and MState='1' order by YJMoney)
		set @mbdindex=(select MBDIndex from Member where MID=@mtj);
		if(@mbdindex=1)
			begin
				set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
				while(@count>0)
					begin
					set @mtj=(select top 1 MID from Member where MBD=@mtj and MState='1' order by MBDIndex);
					set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
					end
				select @mtj;
			end
		else
			begin
				set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
				while(@count>0)
					begin
					set @mtj=(select top 1 MID from Member where MBD=@mtj and MState='1' order by MBDIndex desc);
					set @count=(select COUNT(1) from Member where MBD=@mtj and MState='1');
					end
				select @mtj;
			end
	end
	else
	begin
		select @mtj;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMtj2]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetAutoMbdByMtj2]
	-- Add the parameters for the stored procedure here
	@mtj varchar(20),
	@mbdcount int
AS
BEGIN
declare @count int;
	declare @mbdtable table(bmid varchar(20),bdindex int,mdate datetime);
	declare @mbdtable2 table(bmid varchar(20),bdindex int,mdate datetime);
	insert into @mbdtable select mid,MBDIndex,MDate from Member where MID=@mtj and mstate='1';
	set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1');
	while(@count>=@mbdcount)
	begin
	delete from @mbdtable2;
	insert into @mbdtable2 select mid,MBDIndex,mdate from Member where MBD in (select top 1 bmid from @mbdtable order by bdindex) and MBD<>MID and mstate='1';
	--update @mbdtable2 set bdcount=(select COUNT(1) from Member where MBD=bmid and mstate='1')
	delete from @mbdtable;
	set @mtj=(select top 1 bmid from @mbdtable2 order by bdindex, mdate);
	if(@mtj is not null and @mtj<>'')
	begin
		set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1');
		insert into @mbdtable select mid,MBDIndex,MDate from Member where MID=@mtj and mstate='1';
	end
	else
		insert into @mbdtable select * from @mbdtable2;
	end
	select @mtj;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMTJ_TBLR_UNFixed]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAutoMbdByMTJ_TBLR_UNFixed]--从上到下从左到右,接点人数不确定
	-- Add the parameters for the stored procedure here
	--推荐人
	@mtj varchar(20),
	--可接点人数
	@mbdcount int
AS
BEGIN
declare @count int;
	--列表(id:自增id, bmid:会员id, mdate:激活时间, canbdcount:可接点人数)
	declare @mbdtable table(id int IDENTITY (1,1),bmid varchar(20),mdate datetime,canbdcount int);
	--获取第一推荐人
	insert into @mbdtable select mid,MDate,b.SubCount from Member a left join SHMoney b on a.AgencyCode = b.MAgencyType where MBD=@mtj and mstate='1' order by MBDIndex;
	--获取接点人的数量
	set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1');
	--获取可接点人数
	set @mbdcount=(select b.SubCount from Member a left join SHMoney b on a.AgencyCode = b.MAgencyType where MID=@mtj);
	--接点人数够了继续循环
	while(@count>=@mbdcount)
	begin
	--查出第一个
	set @mtj=(select top 1 bmid from @mbdtable order by id);
	--查出接点人数
	set @mbdcount = (select top 1 canbdcount from @mbdtable where bmid = @mtj)
	--从列表中删除
	delete from @mbdtable where bmid = @mtj;
	--加入接点人
	insert into @mbdtable select mid,MDate,b.SubCount from Member a left join SHMoney b on a.AgencyCode = b.MAgencyType where MBD=@mtj and mstate='1' order by MBDIndex;
	--if存在就获取接点人数量，else不存在就继续循环
	if(@mtj is not null and @mtj<>'')
		set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1');
	else
		set @count = @mbdcount;
	end
	select @mtj;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMTJ_TBLR]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAutoMbdByMTJ_TBLR]--从上到下从左到右
	-- Add the parameters for the stored procedure here
	@mtj varchar(20),
	@mbdcount int
AS
BEGIN
	declare @count int;
	--列表(id:自增id, bmid:会员id, mdate:激活时间, canbdcount:可接点人数)
	declare @mbdtable table(id int IDENTITY (1,1),bmid varchar(20),mindex int);
	--获取第一推荐人
	insert into @mbdtable select mid,MBDIndex from Member where MBD=@mtj and mstate='1' and AgencyCode = '003' order by MBDIndex;
	--获取接点人的数量
	set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1' and AgencyCode = '003');
	--接点人数够了继续循环
	while(@count>=@mbdcount)
	begin
	print @count ;
	print @mbdcount;
	
	--查出第一个
	set @mtj=(select top 1 bmid from @mbdtable order by id);
	--从列表中删除
	delete from @mbdtable where bmid = @mtj;
	--加入接点人
	insert into @mbdtable select mid,MBDIndex from Member where MBD=@mtj and mstate='1' and AgencyCode = '003' order by MBDIndex;
	--if存在就获取接点人数量，else不存在就继续循环
	if(@mtj is not null and @mtj<>'')
	begin
		set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1' and AgencyCode = '003');
	end
	else
	begin
		set @count = @mbdcount;
	end
	
	end
	select @mtj;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMtj]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAutoMbdByMtj]
	-- Add the parameters for the stored procedure here
	@mtj varchar(20),
	@mbdcount int
AS
BEGIN
declare @count int;
	declare @mbdtable table(bmid varchar(20),bdcount int,mdate datetime);
	declare @mbdtable2 table(bmid varchar(20),bdcount int,mdate datetime);
	insert into @mbdtable select mid,0,MDate from Member where MID=@mtj and mstate='1';
	set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1');
	while(@count>=@mbdcount)
	begin
	delete from @mbdtable2;
	insert into @mbdtable2 select mid,0,mdate from Member where MBD in (select bmid from @mbdtable) and MBD<>MID and mstate='1';
	update @mbdtable2 set bdcount=(select COUNT(1) from Member where MBD=bmid and mstate='1')
	delete from @mbdtable;
	set @mtj=(select top 1 bmid from @mbdtable2 where bdcount<@mbdcount order by bdcount desc,mdate);
	if(@mtj is not null and @mtj<>'')
		set @count=(select COUNT(1) from Member where MBD=@mtj and MID<>@mtj and mstate='1');
	else
		insert into @mbdtable select * from @mbdtable2;
	end
	select @mtj;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMBD2]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tns_pop
-- Create date: 2014-2-25
-- Description:	公排，根据接点位从上到下，从左到右公排
-- =============================================
CREATE PROCEDURE [dbo].[GetAutoMbdByMBD2]
	-- Add the parameters for the stored procedure here
	@bdmid varchar(20),
	@bdcount int
AS
BEGIN
	declare @count int;
	declare @mbdtable table([ID] [int],bmid varchar(20),bdcount int,mdate datetime);
	declare @mbdtable2 table([ID] [int] IDENTITY(1,1) NOT NULL,bmid varchar(20),bdcount int,mdate datetime);
	insert into @mbdtable select 1,bmid,0,BMDate from BMember where BMID=@bdmid;
	set @count=(select COUNT(1) from BMember where BMBD=@bdmid and BMID<>@bdmid);
	while(@count>=@bdcount)
	begin
	delete from @mbdtable2;
	insert into @mbdtable2 select a.BMID,(select count(1) from BMember where BMBD=a.BMID),bmdate from BMember a inner join @mbdtable b on a.BMBD=b.bmid and a.BMBD<>a.BMID order by b.id,BMDate;
	delete from @mbdtable;
--加接点人数,会造成不是从右到或,所以选择按日期排序.
	set @bdmid=(select top 1 bmid from @mbdtable2 where bdcount<@bdcount order by ID,mdate);
	--set @bdmid=(select top 1 bmid from @mbdtable2 order by mdate);
--print @bdmid;
	if(@bdmid is not null and @bdmid<>'')
--begin
		set @count=(select COUNT(1) from BMember where BMBD=@bdmid and BMID<>@bdmid);
	--else
		insert into @mbdtable select * from @mbdtable2;
--end
	end
	select @bdmid;
END
GO
/****** Object:  StoredProcedure [dbo].[GetAutoMbdByMBD1]    Script Date: 11/25/2017 17:40:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Tns_pop
-- Create date: 2014-2-25
-- Description:	公排，根据接点位从上到下，从左到右公排,按小区市场
-- =============================================
CREATE PROCEDURE [dbo].[GetAutoMbdByMBD1]
	-- Add the parameters for the stored procedure here
	@bdmid varchar(20),
	@bdcount int
AS
BEGIN
	declare @count int;
	set @count=(select COUNT(1) from Member where MBD=@bdmid and MID<>@bdmid);
	while(@count>=@bdcount)
	begin
	set @bdmid=(select top 1 Member.MID from Member inner join MemberConfig on Member.MID=MemberConfig.MID where MBD=@bdmid and Member.MID<>@bdmid order by YJCount);
	set @count=(select COUNT(1) from Member where MBD=@bdmid);
	end
	select @bdmid;
END
GO
/****** Object:  View [dbo].[View_StockRight]    Script Date: 11/25/2017 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_StockRight]
AS
SELECT     dbo.StockRight.ID, dbo.StockRight.MID, dbo.StockRight.BuyDate, dbo.StockRight.BuyMoney, dbo.StockRight.BuyCount, dbo.StockRight.StockType, 
                      dbo.StockRight.FHCount, dbo.StockRight.FHMoney, dbo.StockRight.IsValid, dbo.StockRight.OutDate, dbo.StockRightConfig.FHCount AS Unit_FHCount, 
                      dbo.StockRightConfig.FHFloat, dbo.StockRightConfig.BuyMoney AS Unit_BuyMoney, dbo.StockRightConfig.LimitCount
FROM         dbo.StockRight LEFT OUTER JOIN
                      dbo.StockRightConfig ON dbo.StockRight.StockType = dbo.StockRightConfig.Code
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
         Begin Table = "StockRight"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 226
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "StockRightConfig"
            Begin Extent = 
               Top = 6
               Left = 218
               Bottom = 157
               Right = 360
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StockRight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_StockRight'
GO
/****** Object:  View [dbo].[View_LuckyMoney]    Script Date: 11/25/2017 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_LuckyMoney]
AS
SELECT   dbo.Member.MName, dbo.LuckyMoney.ID, dbo.LuckyMoney.MID, dbo.LuckyMoney.CreateTime, 
                dbo.LuckyMoney.FHTimes, dbo.LuckyMoney.FHMoney, dbo.LuckyMoney.isValid, dbo.LuckyMoney.TotalMoney, 
                dbo.LuckyMoney.EditTime, dbo.LuckyMoney.ApplyMoney, dbo.LuckyMoney.TakeOffmoney, dbo.LuckyMoney.Type
FROM      dbo.LuckyMoney LEFT OUTER JOIN
                dbo.Member ON dbo.LuckyMoney.MID = dbo.Member.MID
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
         Begin Table = "LuckyMoney"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 145
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Member"
            Begin Extent = 
               Top = 6
               Left = 250
               Bottom = 286
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LuckyMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_LuckyMoney'
GO
/****** Object:  View [dbo].[View_ChangeMoney]    Script Date: 11/25/2017 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ChangeMoney]
AS
SELECT   dbo.ChangeMoney.CID, dbo.ChangeMoney.FromMID, dbo.ChangeMoney.ToMID, dbo.ChangeMoney.Money, 
                dbo.ChangeMoney.ChangeDate, dbo.ChangeMoney.ChangeType, dbo.ChangeMoney.MoneyType, 
                dbo.ChangeMoney.CState, dbo.ChangeMoney.SHMID, dbo.ChangeMoney.TakeOffMoney, 
                dbo.ChangeMoney.ReBuyMoney, dbo.ChangeMoney.MCWMoney, dbo.ChangeMoney.CRemarks, 
                dbo.ChangeMoney.extra1, dbo.ChangeMoney.source, dbo.ChangeMoney.source1, dbo.ChangeMoney.source2, 
                Member_1.MName AS ToMName, Member_2.MName AS FromMName
FROM      dbo.ChangeMoney LEFT OUTER JOIN
                dbo.Member AS Member_1 ON dbo.ChangeMoney.ToMID = Member_1.MID LEFT OUTER JOIN
                dbo.Member AS Member_2 ON dbo.ChangeMoney.FromMID = Member_2.MID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[10] 2[30] 3) )"
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
         Begin Table = "ChangeMoney"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 288
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Member_1"
            Begin Extent = 
               Top = 6
               Left = 470
               Bottom = 290
               Right = 651
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Member_2"
            Begin Extent = 
               Top = 6
               Left = 251
               Bottom = 145
               Right = 432
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ChangeMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ChangeMoney'
GO
/****** Object:  StoredProcedure [dbo].[R_GL]    Script Date: 11/25/2017 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[R_GL]--领导奖
	-- Add the parameters for the stored procedure here
	--奖项字符串
	@R_Money decimal(18,4),
	--封顶比例
	@R_MID varchar(20)
AS
BEGIN
	--会员推荐人
	declare @R_MTJ varchar(20);
	select @R_MTJ = MTJ from Member where MID = @R_MID

	--管理奖最大值
	declare @GLMax int;
	select @GLMax = MAX(EndLevel) from ConfigDictionary where DType = 'LDFloat'
	--管理奖最小值
	declare @GLMin int;
	select @GLMin = MIN(StartLevel) from ConfigDictionary where DType = 'LDFloat'
	--当前层级
	declare @GLIndex int;
	set @GLIndex = 1;

	--获得分红会员数量
	declare @FHMID varchar(20);
	--发放成功条数
	declare @curcount int;
	set @curcount = 0
	--分红比例
	declare @E_DFHFloat decimal(18,4);
	--实际分红钱数
	declare @PutMoney decimal(18,4);

	while(@GLIndex >= @GLMin and @GLIndex <= @GLMax )
		begin
			--获取会员数据
			select @FHMID = MID from member where MID = @R_MTJ
			select @R_MTJ = MTJ from member where MID = @FHMID

			--select @FHMID as a1,@R_MTJ as t1;

			if(@FHMID = @R_MTJ OR @FHMID IS NULL OR @FHMID='caifu888')
				break;
			--获取比例
			select @E_DFHFloat = (SELECT cast(ISNULL(DValue,0) as decimal(18,4)) FROM ConfigDictionary WHERE StartLevel <= @GLIndex AND EndLevel >= @GLIndex);
			set @PutMoney = @E_DFHFloat * @R_Money;

			update MemberConfig set MHB = MHB + @PutMoney,
									TotalMoney = TotalMoney + @PutMoney,
									TotalDFHMoney = TotalDFHMoney + @PutMoney
								where MID = @FHMID;

			--select @FHMID as a1,@PutMoney as m1,@R_MID as q1;
			insert into ChangeMoney values('caifu888',@FHMID,@PutMoney,GETDATE(),'R_LD','MHB',1,@R_MID,0,0,0,'',0,'','','')

			set @curcount = @curcount + 1
			set @GLIndex = @GLIndex + 1;
		end
		select @curcount;
END
GO
/****** Object:  StoredProcedure [dbo].[R_DFH]    Script Date: 11/25/2017 17:40:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[R_DFH]--日分红
	-- Add the parameters for the stored procedure here
	----奖项字符串
	--@AllRewardStr varchar(300),
	----封顶比例
	--@E_JQFHFloat decimal(18,4),
	----分红时间
	--@DateTime varchar(300),
	----分红金额
	--@ffMoney decimal(18,4)
AS
BEGIN
	declare @NewTypeCount int;
	set @NewTypeCount = (SELECT cast(ISNULL(PValue,0) as int) FROM BaseParameter WHERE OwnClass = 'Configuration' AND IdentifyName = 'E_BbinTimes');
	

	select *,ROW_NUMBER() OVER(partition by MID ORDER BY [Type]) as rowss into #tempTable from 
	(
		select MID,SUM(ApplyMoney) as AMoney,[Type] from LuckyMoney where isValid = 0 group by MID,[Type]
	) a
	

	--数据条数
	declare @count int;
	select @count =count(*) from #tempTable
	--分红编号
	declare @rowIDType int;
	--分红编号
	declare @rowID int;
	--获得分红会员数量
	declare @FHMID varchar(20);
	--分红钱数
	declare @FHMoney decimal(18,4);
	--发放成功条数
	declare @curcount int;
	set @curcount = 0
	--日分红比例
	declare @E_DFHFloat decimal(18,4);
	set @E_DFHFloat = (SELECT cast(ISNULL(PValue,0) as decimal(18,4)) FROM BaseParameter WHERE OwnClass = 'Configuration' AND IdentifyName = 'E_DayFHFloat');
	--日分红比例
	declare @E_BbinDFHFloat decimal(18,4);
	set @E_BbinDFHFloat = (SELECT cast(ISNULL(PValue,0) as decimal(18,4)) FROM BaseParameter WHERE OwnClass = 'Configuration' AND IdentifyName = 'E_BbinFHFloat');
	--实际分红钱数
	declare @PutMoney decimal(18,4);

	while(@count > 0)
		begin
			--获取数据
			select top 1 @FHMID = MID from #tempTable;
			select top 1 @rowIDType = [Type] from #tempTable where MID = @FHMID;
			select top 1 @FHMoney = AMoney from #tempTable where MID = @FHMID and [Type] = @rowIDType;
			
			--插入发奖记录
			set @curcount = @curcount + 1
			if(@rowIDType = 0)
			   begin
					set @PutMoney = @FHMoney * @E_DFHFloat;
					update MemberConfig set MHB = MHB + @PutMoney,
									TotalMoney = TotalMoney + @PutMoney,
									TotalDFHMoney = TotalDFHMoney + @PutMoney
								where MID = @FHMID;
					insert into ChangeMoney values('caifu888',@FHMID,@PutMoney,GETDATE(),'R_RFH','MHB',1,'日分红',0,0,0,'',0,'','','')
					exec [R_GL] @PutMoney,@FHMID
				end
				
			
				
			--清除数据
			delete from #tempTable where MID = @FHMID and [Type] = @rowIDType;
			select @count = count(*) from #tempTable
		end
		--更新钱数和次数
		update LuckyMoney set FHTimes = FHTimes + 1,TotalMoney = TotalMoney + ApplyMoney * @E_DFHFloat where isValid = 0;
		--更新无效项
		update LuckyMoney set isValid = 3 where [Type] = 1 and FHTimes >= @NewTypeCount;

		select @curcount;
END
GO
/****** Object:  Default [DF_Reward_RewardState]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Reward] ADD  CONSTRAINT [DF_Reward_RewardState]  DEFAULT ((1)) FOR [RewardState]
GO
/****** Object:  Default [DF_Reward_NeedProcess]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Reward] ADD  CONSTRAINT [DF_Reward_NeedProcess]  DEFAULT ((0)) FOR [NeedProcess]
GO
/****** Object:  Default [DF_Reward_RewardIndex]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Reward] ADD  CONSTRAINT [DF_Reward_RewardIndex]  DEFAULT ((0)) FOR [RewardIndex]
GO
/****** Object:  Default [DF_ObjSub_CreateDate]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[ObjSub] ADD  CONSTRAINT [DF_ObjSub_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_ObjSub_IsDelete]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[ObjSub] ADD  CONSTRAINT [DF_ObjSub_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
/****** Object:  Default [DF_Obj_StateDate]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Obj] ADD  CONSTRAINT [DF_Obj_StateDate]  DEFAULT (getdate()) FOR [StateDate]
GO
/****** Object:  Default [DF_Obj_State]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Obj] ADD  CONSTRAINT [DF_Obj_State]  DEFAULT ((0)) FOR [State]
GO
/****** Object:  Default [DF_Obj_IsDelete]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Obj] ADD  CONSTRAINT [DF_Obj_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
/****** Object:  Default [DF_Notice_NCreateTime]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Notice] ADD  CONSTRAINT [DF_Notice_NCreateTime]  DEFAULT (getdate()) FOR [NCreateTime]
GO
/****** Object:  Default [DF_Notice_NClicks]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Notice] ADD  CONSTRAINT [DF_Notice_NClicks]  DEFAULT ((0)) FOR [NClicks]
GO
/****** Object:  Default [DF_Notice_NState]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Notice] ADD  CONSTRAINT [DF_Notice_NState]  DEFAULT ((1)) FOR [NState]
GO
/****** Object:  Default [DF__MemberCon__TXSta__0F624AF8]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[MemberConfig] ADD  DEFAULT ('TRUE') FOR [TXStatus]
GO
/****** Object:  Default [DF__MemberCon__ZZSta__10566F31]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[MemberConfig] ADD  DEFAULT ('TRUE') FOR [ZZStatus]
GO
/****** Object:  Default [DF_FHList_FHDate]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[FHList] ADD  CONSTRAINT [DF_FHList_FHDate]  DEFAULT (getdate()) FOR [FHDate]
GO
/****** Object:  Default [DF_Configuration_BDCount]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Configuration] ADD  CONSTRAINT [DF_Configuration_BDCount]  DEFAULT ((2)) FOR [BDCount]
GO
/****** Object:  Default [DF_ConfigDictionary_DCount]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[ConfigDictionary] ADD  CONSTRAINT [DF_ConfigDictionary_DCount]  DEFAULT ((1)) FOR [DKey]
GO
/****** Object:  Default [DF__BMember__Sort__6FE99F9F]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[BMember] ADD  CONSTRAINT [DF__BMember__Sort__6FE99F9F]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Task_TDateTime]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Task] ADD  CONSTRAINT [DF_Task_TDateTime]  DEFAULT (getdate()) FOR [TDateTime]
GO
/****** Object:  Default [DF_Task_IsReply]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Task] ADD  CONSTRAINT [DF_Task_IsReply]  DEFAULT ((0)) FOR [IfRead]
GO
/****** Object:  Default [DF__Sys_SQ_An__IsDel__52593CB8]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Sys_SQ_Answer] ADD  CONSTRAINT [DF__Sys_SQ_An__IsDel__52593CB8]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Sys_SQ_An__STATU__534D60F1]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Sys_SQ_Answer] ADD  CONSTRAINT [DF__Sys_SQ_An__STATU__534D60F1]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__Sys_Secur__IsDel__18EBB532]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Sys_SecurityQuestion] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Sys_Secur__Statu__19DFD96B]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[Sys_SecurityQuestion] ADD  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  ForeignKey [FK_RolePowers_Contents]    Script Date: 11/25/2017 17:40:10 ******/
ALTER TABLE [dbo].[RolePowers]  WITH NOCHECK ADD  CONSTRAINT [FK_RolePowers_Contents] FOREIGN KEY([CID])
REFERENCES [dbo].[Contents] ([CID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePowers] CHECK CONSTRAINT [FK_RolePowers_Contents]
GO
