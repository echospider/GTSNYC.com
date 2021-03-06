USE [GTSNYC]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 06/30/2010 10:10:16 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 06/30/2010 10:10:16 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 06/30/2010 10:10:17 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [dbv]    Script Date: 06/30/2010 10:10:18 ******/
CREATE ROLE [dbv] AUTHORIZATION [dbo]
GO
/****** Object:  User [gts]    Script Date: 06/30/2010 10:10:16 ******/
CREATE USER [gts] FOR LOGIN [gts] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 06/30/2010 10:10:18 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 06/30/2010 10:10:19 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 06/30/2010 10:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_Applicati__7E6CC920] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_Applicati__00551192] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_Applicati__7F60ED59] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/', N'/', N'2b599bda-9efc-4df8-a718-e752359e446e', NULL)
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 06/30/2010 10:10:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
 CONSTRAINT [PK__aspnet_WebEvent___5FB337D6] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 06/30/2010 10:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 06/30/2010 10:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 06/30/2010 10:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_SchemaVer__08EA5793] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[PageCategories]    Script Date: 06/30/2010 10:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageCategories](
	[PageCatId] [int] IDENTITY(1,1) NOT NULL,
	[PageCatName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PageCategories] PRIMARY KEY CLUSTERED 
(
	[PageCatId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PageCategories] ON
INSERT [dbo].[PageCategories] ([PageCatId], [PageCatName]) VALUES (1, N'Research')
SET IDENTITY_INSERT [dbo].[PageCategories] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 06/30/2010 10:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[DateAdded] [datetime] NOT NULL,
	[DisplayOrder] [tinyint] NOT NULL,
	[UniqueName] [varchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [DateAdded], [DisplayOrder], [UniqueName]) VALUES (1, 0, N'Index', CAST(0x00009A6F010252D7 AS DateTime), 0, NULL)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [DateAdded], [DisplayOrder], [UniqueName]) VALUES (2, 0, N'Wealth Management Portfolio''s', CAST(0x00009A6F01025903 AS DateTime), 0, NULL)
INSERT [dbo].[Categories] ([CategoryId], [ParentId], [CategoryName], [DateAdded], [DisplayOrder], [UniqueName]) VALUES (3, 0, N'commodities', CAST(0x00009A6F01025EB0 AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 06/30/2010 10:10:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 06/30/2010 10:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06/30/2010 10:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](150) NULL,
	[Summery] [nvarchar](512) NULL,
	[Body] [ntext] NULL,
	[DateCreated] [datetime] NOT NULL,
	[DisplayOrder] [tinyint] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[UniqueName] [varchar](50) NULL,
	[Price] [money] NOT NULL,
	[ImageUrl] [varchar](150) NULL,
	[Writeup] [ntext] NULL,
	[Contract] [ntext] NULL,
	[FileUrl] [varchar](150) NULL,
	[IsFeatured] [bit] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (2, N'Globex Prodigy ES', NULL, N'The S&P 500 is a stock market index containing the stocks of 500 Large-Cap corporations; all of the stocks in the index are those of large publicly held companies and trade on the two largest US stock markets, the New York Stock Exchange and Nasdaq. After the Dow Jones Industrial Average, the S&P 500 is the most widely watched index of large-cap US stocks. It is considered to be a bellwether for the US economy and is a component of the Index of Leading Indicators.

The Globex team designed the purest and most efficient trading system in the world, to allow our customers the opportunity to take full advantage of the S&P 500 market. The Globex S&P 500 system is 100% mechanical, trades intra-day and never holds a position overnight. The S&P 500 system typically trades 1 time in a day up to 2 contracts; only if the systems indicators meet the proper market condition, will a trade be executed. ', CAST(0x00009A7200CB0631 AS DateTime), 0, 1, NULL, 111.0000, N'004427053114077628bc6d.jpg', N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of  $149.00 upon completion of  6 calender months.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the GLOBEX PRODIGY ES Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from GLOBEX PRODIGY ES Systems to the clients trading account.  Purchase of the GLOBEX PRODIGY ES Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the GLOBEX PRODIGY ES Systems once purchased.<br>
                                                            <br>

                                              The client agrees that the charge for the GLOBEX PRODIGY ES shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00    </p><p><strong>GUARANTEE</strong><br>
                      <br>
                      This Guarantee will be based on results from the Globex Prodigy ES System only. The performance period lasts 
                      as long as 180 Calendar days.<br>
                      <br>
                      The guarantee states that only at the end of the 180 calendar 
                      day performance period, and only if the total of trades, 
                      do not show a gross profit, is the client then entitled 
                      to a $5,995.00 refund.<br>
                      <br
                                                                                                          <br>
                                                            <strong>MONTHLY CHARGE</strong><br>
                                                            <br>

                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
 and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                            <br>
                                              Globex Trading Solutions and the Developers of GLOBEX PRODIGY ES Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect past and future performance results.<br>
                                                            <br>
                                              ', N'1331513460150323bfff55.mht', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (3, N'Globex Hedge ER', NULL, N'<p>The Russell 2000  Index measures the performance of the small-cap segment of the U.S. equity  universe. The Russell 2000 Index is a subset of the Russell 3000® Index  representing approximately 10% of the total market capitalization of that index.  It includes approximately 2000 of the smallest securities based on a  combination of their market cap and current index membership. <br />
    <br />
The Russell 2000 is constructed to provide a comprehensive and unbiased  small-cap barometer and is completely reconstituted annually to ensure larger  stocks do not distort the performance and characteristics of the true small-cap  opportunity set.<br />
  
The Globex team designed the purest and most efficient trading  system in the world, to allow our customers the opportunity to take full  advantage of the Russell 2000 market. <br />
The Globex Hedge ER System is 100% mechanical, trades Intra-day  and never holds a position overnight, typically trades 1 time in a day up to 3  contracts with approximately 12 trades per month, only if the systems  indicators meet the proper market conditions. 

The Hedge ER System is designed  to thrive in the current volatile market, but is a consistent performer in more  normal conditions.</p>', CAST(0x00009AC600D02857 AS DateTime), 0, 1, NULL, 234.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Hedge ER Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Hedge ER Systems to the clients trading account.  Purchase of the Globex Hedge ER Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Hedge ER Systems once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex Hedge ER shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. 
                                                                                          
                                                                    <br>
                                                                                                               <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                             and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex Elite ER Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                                    <br>
                                                ', N'19312088502311dd1d12f8.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (4, N' Globex Elite ER', NULL, N'Elite ER, released on August, 2002, added a sub-system that captures an additional 
trading pattern.
<p>Although originally created to trade the S&amp;P (full-size and e-mini), Elite
  ER also performs very well on two additional out-of-sample markets--the e-mini 
  Russell and the DAX--using the same logic. This is the mark of a robust system, 
  that it performs on multiple markets, in addition to performing in real-time.</p>
<p>In over 9 years of out-of-sample performance, Elite ER--without any changes 
  to its logic-has successfully navigated a variety of market conditions, one 
  of the few day trading systems to do so, and one of the longest-lived of the 
  day trading systems available to the public.</p>
<p>Elite ER looks for a particular type of volatility, market strength, and directionality 
  that is very predictive of days likely to have strong swings. Rather than indicators, 
  time and price patterns determine these tradable days. By being selective, Elite
  ER reduces risk by not overtrading and by participating on days when volume 
  propels price, increasing the likelihood of profitable trades.</p>
<p>What makes Elite ER unique is that it is composed of three separate but integrated 
  subsystems--trend, countertrend, and countertrend failure--each designed to 
  capture a distinct and reliable market pattern.</p>
<p>These 3 subsystems work together to create a smoother equity curve by capturing 
  the dominant modes of the market.</p>
<p>Elite ER has the ability to trade intra-day up to twice in one day, with a 
  maximum drawdown of $575.00. The system closes all positions by the end of each 
  trading day.</p>', CAST(0x00009AC600D85A74 AS DateTime), 0, 1, NULL, 4995.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product.Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of 180 days.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 

                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Elite ER Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Elite ER Systems to the clients trading account.  Purchase of the Globex Elite ER Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Elite ER Systems once purchased.<br>
                                                            <br>

                                              The client agrees that the charge for the Globex Elite  ER shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. <br>
                                                            <br>
                                                                                                                               
                                                            <strong>MONTHLY CHARGE</strong><br>
                                                            <br>

                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per monnth and  shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                            <br>
                                              Globex Trading Solutions and the Developers of Globex Elite ER Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                            <br>
                                                                                       </p>', N'1336174330150382a37c5e.mht', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (10, NULL, NULL, NULL, CAST(0x00009AC6010C1E7A AS DateTime), 0, 2, NULL, 0.0000, NULL, NULL, NULL, N'213600496015107d8981de.pdf', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (11, N'Globex Logic ES', NULL, N'Logic ES, released on August, 2002, added a sub-system that captures an additional 
trading pattern.
<p>Although originally created to trade the S&amp;P (full-size and e-mini), Logic 
  ES also performs very well on two additional out-of-sample markets--the e-mini 
  Russell and the DAX--using the same logic. This is the mark of a robust system, 
  that it performs on multiple markets, in addition to performing in real-time.</p>
<p>In over 9 years of out-of-sample performance, Logic ES--without any changes 
  to its logic-has successfully navigated a variety of market conditions, one 
  of the few day trading systems to do so, and one of the longest-lived of the 
  day trading systems available to the public.</p>
<p> </p>
<p>Logic ES looks for a particular type of volatility, market strength, and directionality 
  that is very predictive of days likely to have strong swings. Rather than indicators, 
  time and price patterns determine these tradable days. By being selective, Logic 
  ES reduces risk by not overtrading and by participating on days when volume 
  propels price, increasing the likelihood of profitable trades.</p>
<p>What makes Logic ES unique is that it is composed of three separate but integrated 
  subsystems--trend, countertrend, and countertrend failure--each designed to 
  capture a distinct and reliable market pattern.</p>
<p>These 3 subsystems work together to create a smoother equity curve by capturing 
  the dominant modes of the market.</p>
<p>Logic ES has the ability to trade intra-day up to twice in one day, with a 
  maximum drawdown of $575.00. The system closes all positions by the end of each 
  trading day.</p>', CAST(0x00009AC6010C2CD9 AS DateTime), 0, 1, NULL, 4995.0000, NULL, N'                                              By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further 
                                              acknowledge that it is my desire to purchase the above-mentioned product. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon .', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>
                      <br>

                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>
                        This agreement will be governed by the laws of the State of New York.<br>

                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>
                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>

                                            <br>
                                            <br>
                    <p><strong>SYSTEM PURCHASE</strong><br>
                      <br>
                      The client agrees that by signing below they are agreeing 
                      to purchase access to the Globex Logic ER Systems 
                      and to pay Globex Trading Solutions compensation as specified 
                      below. Upon purchase of the system, effective as the date 
                      of this agreement, Globex Trading Solutions agrees to supply 
                      the client with access from Globex Logic ER Systems 
                      to the clients trading account. Purchase of the Globex Logic ER Systems does not require the client to trade, 
                      nor does it require the client to ever open or use a trading 
                      account. Globex Trading Solutions understands it is the 
                      right of the client to use or not use the Globex Logic ER Systems once purchased.<br>
                      <br>
                      The client agrees that the charge for the Globex Logic ER shall be $5,995.00. By signing below I agree to pay 
                      the above total amount of $5,995.00 according to the card 
                      issuer agreement. <br>

                      <br>
                                         <br>
                      <strong>MONTHLY CHARGE</strong><br>
                      <br>
                      Globex Trading Solutions will charge a monthly maintenance 
                      fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                     and shall begin during the sixth (6th) Calendar month 
                      . This monthly fee is charged for continued access to the 
                      system, for this the client shall receive updates made to 
                      the system and shall receive Trader Support. It is the understanding 
                      of the customer the monthly fee will be reoccurring and 
                      is non-refundable for any reason.<br>

                      <br>
                      Globex Trading Solutions and the Developers of Globex Logic ER Systems and Trading products reserve the right 
                      to modify any and all parts of the systems and trading products 
                      without the consent of the customer. This may affect past 
                      and future performance results.<br>
                      <br>
                      Clients are not eligible for refunds under any circumstances 
                      if the system meets the guarantee.<br>
                    </p>', N'134202275015036ae2b778.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (12, NULL, NULL, N'
', CAST(0x00009AC6010DE910 AS DateTime), 0, 1, NULL, 0.0000, NULL, N'.', NULL, N'15520540701510846a5924.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (17, N'Globex Bonds', NULL, N' 	

Globex Bonds employs a short-term trend breakout trading methodology.  It uses proprietary indicators to identify points in the market during the trading session where a breakout is likely to occur and a trend begin.  Intraday US Bonds trades only the busiest time of day when the professionals and institutions are trading and the volume is the highest.  This has been shown to reduce the amount of false signals and increase profitability. The methodology is also designed with proprietary filters that prevent trading when the risk is too great or the likelihood of choppy trading exists. <br /><br />

Once in a trade the system will quickly exit those positions that prove to be incorrect and maintain those that are profitable via the use of multiple trailing stop methods to maximize profitability.  Intraday Gold will average 1 trade per day with an average winning trade of $450 and a stop loss per trade of $250.  All trades are exited at the end of the trading day leaving no overnight exposure.  ', CAST(0x00009AC6010EEFC4 AS DateTime), 0, 3, NULL, 344343.0000, N'1240585000280794fc9595.jpg', N'                                              By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further 
                                              acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit 
                                              card will be charged upon signing this agreement and there will be no cancellations for any reason until 
                                              the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 
                                              if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of 
                                              $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Bonds Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Bonds Systems to the clients trading account.  Purchase of the Globex Bonds Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Bonds Systems once purchased.<br>
                                                            <br>

                                              The client agrees that the charge for the Globex Bonds shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. <br>
                                                            <br>
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex Bonds Systems only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                            <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>

                                                            <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>
                                                            <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Bonds trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                            <br>
                                                            <strong>MONTHLY CHARGE</strong><br>
                                                            <br>

                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                            <br>
                                              Globex Trading Solutions and the Developers of Globex Bonds Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                            <br>
                                              Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                            </p>', N'14182859301510b9fd2882.pdf', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (18, N'Globex Copper', NULL, N' 	

Intraday Copper employs a short-term trend breakout trading methodology. It uses proprietary indicators to identify points in the market during the trading session where a breakout is likely to occur and a trend begin. Intraday Copper trades only the busiest time of day when the professionals and institutions are trading and the volume is the highest. This has been shown to reduce the amount of false signals and increase profitability. The methodology is also designed with proprietary filters that prevent trading when the risk is too great or the likelihood of choppy trading exists.<br /><br />

Once in a trade the system will quickly exit those positions that prove to be incorrect and maintain those that are profitable via the use of multiple trailing stop methods to maximize profitability. Intraday Copper will average 1 trade per day with an average winning trade of $415 and a stop loss per trade of $250. All trades are exited at the end of the trading day leaving no overnight exposure. ', CAST(0x00009AC6010F1324 AS DateTime), 0, 3, NULL, 12323.0000, N'114604187505087b6147f7.jpg', N'                                              By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further 
                                              acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit 
                                              card will be charged upon signing this agreement and there will be no cancellations for any reason until 
                                              the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 
                                              if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of 
                                              $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Copper Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex CopperSystems to the clients trading account.  Purchase of the Globex Copper Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Copper Systems once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex Copper shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. 
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex Copper Systems only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                                    <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>
                                                                    <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>

                                                                    <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Copper trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                                    <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex Copper Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                                    <br>
                                                  Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                        </p>', N'141923227015109644a95d.pdf', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (19, N'Globex Crude', NULL, N'Globex Black Rock Crude employs a Swing Trade strategy holding a single future contract on the Crude Oil market either short or long overnight.  It uses proprietary indicators to identify points in the market during the trading session where a breakout is likely to occur and a trend begin.   The methodology is also designed with proprietary filters that prevent trading when the risk is too great or the likelihood of choppy trading exists. <br /> <br />

Black Rock Crude will average 3-5 trades per month with an average winning trade of $2000.00 and a max draw-down per trade of $3042.00 The Black Rock CL has returned 100% since March of 2009.', CAST(0x00009AC6010F5246 AS DateTime), 0, 3, NULL, 65445.0000, N'113056078128073a01df2d.jpg', N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product.  Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of 180 Days.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Crude Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Crude Systems to the clients trading account.  Purchase of the Globex Crude Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Crude Systems once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex Crude shall be $5,995.00.                                                                     <br>
                                              
                                                                    <br>
                                                                                                                 <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
 and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex Crude Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
past and future performance results.<br>
                                                                    <br>
                                                                                          </p>', N'2132140940201133a15b07.pdf', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (20, N'Globex Gold', NULL, N'Globex Gold employs a short-term trend breakout trading methodology.  
It uses proprietary indicators to identify points in the market during 
the trading session where a breakout is likely to occur and a trend begin.  
Intraday Crude trades only the busiest time of day when the professionals 
and institutions are trading and the volume is the highest.  
This has been shown to reduce the amount of false signals and increase 
profitability. The methodology is also designed with proprietary 
filters that prevent trading when the risk is too great or the 
likelihood of choppy trading exists.  <br /><br />    
Once in a trade the system will quickly exit those positions that 
prove to be incorrect and maintain those that are profitable via the 
use of multiple trailing stop methods to maximize profitability. <br /><br />
Intraday Gold will average 2 trades per day with an average winning 
trade of $180 and a stop loss per trade of $180.  <br /> <br />
All trades are exited at the end of the trading day leaving no 
overnight exposure.', CAST(0x00009AC6010F6E4F AS DateTime), 0, 3, NULL, 32.0000, N'12064851562107e3d2282d.jpg', N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Gold Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Gold Systems to the clients trading account.  Purchase of the Globex Gold Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Gold Systems once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex Gold shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. 
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex Gold Systems only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                                    <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>
                                                                    <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>

                                                                    <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Gold trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                                    <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex Gold Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                                    <br>
                                                  Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                        </p>', N'auroragold/index.html', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (21, N'Globex Silver', NULL, N'Globex Silver employs a short-term trend breakout trading methodology.  It uses proprietary indicators to identify points in the market during the trading session where a breakout is likely to occur and a trend begin.  Intraday Crude trades only the busiest time of day when the professionals and institutions are trading and the volume is the highest.  This has been shown to reduce the amount of false signals and increase profitability. The methodology is also designed with proprietary filters that prevent trading when the risk is too great or the likelihood of choppy trading exists. <br /><br />

Once in a trade the system will quickly exit those positions that prove to be incorrect and maintain those that are profitable via the use of multiple trailing stop methods to maximize profitability.  Intraday Silver will average 1-2 trades per day with an average winning trade of $415 and a stop loss per trade of $425.  All trades are exited at the end of the trading day leaving no overnight exposure.', CAST(0x00009AC6010FD947 AS DateTime), 0, 3, NULL, 1234565.0000, N'1135029062050802438fe2.jpg', N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Silver Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from the Globex Silver Systems to the clients trading account.  Purchase of the Globex Silver Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Silver Systems once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex  Silver shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. 
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex Silver Systems only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                                    <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>
                                                                    <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>

                                                                    <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Silver trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                                    <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex Silver Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                                    <br>
                                                  Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                        </p>', N'aurorasilver/index.html', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (25, N'Global DAX TF', NULL, N' 	

The DAX 30 trades on the Frankfurt Stock Exchange market

The Frankfurt Stock Exchange is one of the biggest and most efficient exchange places in the world. The Frankfurt Stock Exchange has over
90 percent of turnover in the German market and a big share in the European market.

Today, with a total turnover of 5.2 Trillion € per year the Frankfurt Stock Exchange strengthens its position as the world''s 3rd largest trade-place
for stocks and the world''s 6th largest by market capitalzation.

The DAX is a Blue chip stock market index consisting of the 30 major German companies trading on the Frankfurt stock Exchange.

Adidas · Allianz · BASF · Bayer · BMW · Commerzbank · Continental · Daimler AG · Deutsche Bank · Deutsche Börse · Deutsche Post · Deutsche Postbank · Deutsche Telekom · E.ON · Fresenius Medical Care · Henkel · Hypo Real Estate · Infineon Technologies · Linde (The Linde Group) · Lufthansa · MAN · Merck · METRO · Munich Re · RWE · SAP · Siemens · ThyssenKrupp · TUI · Volkswagen.


There is a maximum of one trade per day, with a stop size of $330 to $500. All exits
are at the close, with an average of 15-20 trades per month.', CAST(0x00009AEF00FA1853 AS DateTime), 0, 1, NULL, 0.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex DAX TF and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from the Globex DAX TF to the clients trading account.  Purchase of the Globex DAX TF does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex DAX TF once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex  Silver shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. 
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex DAX TF only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                                    <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>
                                                                    <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>

                                                                    <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Silver trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                                    <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex DAX TF and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                                    <br>
                                                  Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                        </p>', N'200034947431052bd915de.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (26, N'Global Euro Stoxx TF', NULL, N'The Dow Jones EURO STOXX 50 Index, Europe''s leading Blue-chip index for the Euro zone, provides a Blue-chip representation of super sector leaders in the Euro zone. The index covers 50 stocks from 12 Euro zone countries: Austria, Belgium, Finland, France, Germany, Greece, Ireland, Italy, Luxembourg, the Netherlands, Portugal and Spain. 

The Globex team designed the purest and most efficient trading system in the world, to allow our customers the opportunity to take full advantage of the European markets. 

The Globex Euro Stoxx system is 100% mechanical, trades intra-day, 1 time in a day, up to 2 contracts.The maiximum drawdown is $500.00 and the system never holds a position overnight. ', CAST(0x00009B2200E643B7 AS DateTime), 0, 1, NULL, 4995.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Breakout ER Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Breakout ER Systems to the clients trading account.  Purchase of the Globex Breakout ER Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Breakout ER Systems once purchased.<br>
                                                            <br>

                                              The client agrees that the charge for the Globex Euro Stoxx TF shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. <br>
                                                            <br>
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex Euro Stoxx TF Systems only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                            <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>

                                                            <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>
                                                            <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Breakout ER trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                            <br>
                                                            <strong>MONTHLY CHARGE</strong><br>
                                                            <br>

                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                            <br>
                                              Globex Trading Solutions and the Developers of Globex Euro Stoxx TF Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                            <br>
                                              Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                            </p>', N'093044471007059fdbfa83.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (27, N'Globex Hedge ES', NULL, N'<p>The <strong>S&amp;P 500</strong> is a stock market index containing the stocks of 500 Large-Cap corporations; all  of the stocks in the index are those of large publicly held companies and trade  on the two largest US stock markets, the New York Stock Exchange and NASDAQ. </p>
<p>After the Dow Jones  Industrial Average, the S&amp;P 500 is the most widely watched index of  large-cap US stocks. It is considered to be a bellwether for the US economy and  is a component of the Index of Leading Indicators. <br />
  The Globex team designed the purest and most efficient trading  system in the world, to allow our customers the opportunity to take full  advantage of the S&amp;P 500 market. <br />
  The Globex Hedge ES System is 100% mechanical, trades Intra-day  and never holds a position overnight, typically trades 1 time in a day with  approximately 15 trades per month, only if the systems indicators meet the  proper market condition. The Hedge ES System is designed to thrive in the  current volatile market, but is a consistent performer in more normal  conditions.</p>', CAST(0x00009B460116AA75 AS DateTime), 0, 1, NULL, 123.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                    do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>

                      <br>
                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexElite01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>

                        This agreement will be governed by the laws of the State of New York.<br>
                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>

                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>
                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Hedge ES Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Hedge ES Systems to the clients trading account.  Purchase of the Globex Hedge ES Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Hedge ES Systems once purchased.<br>
                                                                    <br>

                                              The client agrees that the charge for the Globex Hedge ES shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00 
                                              according to the card issuer agreement. 
                                            </p><p><strong>GUARANTEE</strong><br>
                                                <br>
                                              This Guarantee will be based on results from the Globex Hedge ES Systems only. 
                                              The performance period lasts as long as 180 Calendar days.<br>
                                                                    <br>
                                              The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, 
                                              do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br>
                                                                    <br>
                                              This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does 
                                              not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the 
                                              clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, 
                                              if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to 
                                              trade, this will have absolutely no bearing on the guarantee.<br>

                                                                    <br>
                                              Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period.
                                              Otherwise we will assume it is your intention 
                                              to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Hedge ES trading 
                                              system as described in the guarantee section of this agreement will be forever relinquished.<br>
                                                                    <br>
                                                                    <strong>MONTHLY CHARGE</strong><br>
                                                                    <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month 
                                              only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>
                                                                    <br>

                                              Globex Trading Solutions and the Developers of Globex Hedge ES Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
                                              past and future performance results.<br>
                                                                    <br>
                                                  Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br>
                                        </p>
', N'15291596800312c0f2f0a1.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (30, NULL, NULL, NULL, CAST(0x00009CA200FF021D AS DateTime), 0, 2, NULL, 444.0000, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (37, N'Globex Wealth Portfolio 15K', NULL, N'The Globex Wealth 15k is part of the Globex Wealth Management family of trading systems. The Wealth 15k system is comprised of multiple non-correlated and correlated S&P 500 index intra-day trading systems. The systems Logic is a combination of trend following, breakout/reversal and oscillator trading systems; which have been structured to provide the best possible risk management, by using a proprietary set of stop loss filters that limit the portfolio''s downside potential and maximizing it''s upside for optimum performance results.', CAST(0x00009CA8015F8B7E AS DateTime), 0, 2, NULL, 12323.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product.  Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $249.00 upon completion of 180 days.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>
                      <br>

                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>
                        This agreement will be governed by the laws of the State of New York.<br>

                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>
                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>

                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Wealth Management Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Wealth Management Systems to the clients trading account.  Purchase of the Globex Wealth Mangement Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Wealth Management once purchased.<br>
                                                            <br>
                                              The client agrees that the charge for the Globex Wealth Management system shall be $7,995.00. By signing below I agree to pay the above total amount of $7,995.00. 
                                             

                                                                                                                <strong>MONTHLY CHARGE</strong><br>
                                                            <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $249.00 (One Hundred Forty Nine Dollars) per month 
 and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>

                                                            <br>
                                              Globex Trading Solutions and the Developers of Globex Wealth Management Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
 past and future performance results.<br>
                                           ', N'155143708021106a38d875.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (40, N'Globex Wealth Portfolio 25k', NULL, N'The Globex Wealth 25k is part of the Globex Wealth Management family of trading systems. The Wealth 25k system is comprised of multiple non-correlated and correlated S&P 500 index intra-day trading systems. The systems Logic is a combination of trend following, breakout/reversal and oscillator trading systems; which have been structured to provide the best possible risk management, by using a proprietary set of stop loss filters that limit the portfolio''s downside potential and maximizing it''s upside for optimum performance results.', CAST(0x00009CA801620031 AS DateTime), 0, 2, NULL, 12323.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $7,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $249.00 upon completion of 180 days.', N'This is a binding agreement, if you do not agree with the 
                        
                        contents herein <br>
                        do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div>
                <br>
                      <br>

                      <font face="Verdana" size="1">In 
                        
                        order to be sure that you are informed before you begin your subscription, 
                        
                        your order will be processed when you acknowledge that you have read and 
                        
                        understand the following. Please read the entire document before 
                        
                        signing:<br>
                                            <br>
                                            <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. 
                                              
                                              FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br>
                                                                  <br>
                        Globex Trading Solutions, LLC. herein known as GTS.<br>
                        <br>
                        This agreement will be governed by the laws of the State of New York.<br>

                        ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number 
                        
                        of sources from which we obtain information, and the inherent risks of 
                        
                        distribution, there may be omissions or inaccuracies in such information and 
                        
                        services. GTS, its owners/employees and contributors take every reasonable step 
                        
                        to ensure the integrity of the data.<br>
                                            <br>
                        However, GTS, its owners and 
                        
                        employees and contributors cannot and do not warrant the accuracy, completeness, 
                        
                        currentness or fitness for a particular purpose of the information contained in 
                        
                        our products and services.<br>
                                            <br>
                        Recommendations and opinions contained in our 
                        
                        products and services reflect judgment, as applicable, of GTS as of the date 
                        
                        hereof, are subject to change, and are based upon certain assumptions, only some 
                        
                        of which are noted herein. Different assumptions could yield different results. 
                        
                        You are cautioned that there is no universally accepted method for analyzing 
                        
                        financial instruments, including Futures. Further there is no guarantee as to 
                        
                        the liquidity of the instruments involved in its analysis.<br>
                                            <br>
                        Neither the 
                        
                        information nor the recommendations and opinions expressed herein constitute an 
                        
                        offer to buy or sell any financial contract, security, futures contract, or 
                        
                        derivative instrument. As a matter of policy GTS does not give Tax, accounting, 
                        
                        regulatory or legal advice to clients. Clients should therefore consult their 
                        
                        own advisors regarding the tax, accounting and legal implications of the 
                        
                        recommended strategies before transactions are 
                        
                        effected.</font><br>

                                            <br>
                                            <br>
                                            <p><strong>SYSTEM PURCHASE</strong><br>
                                                <br>
                                              The client agrees that by signing below they are agreeing to purchase access to the Globex Wealth Management Systems and to pay Globex Trading Solutions 
                                              compensation as specified below.  Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply 
                                              the client with access from Globex Wealth Management Systems to the clients trading account.  Purchase of the Globex Wealth Mangement Systems does not require the 
                                              client to trade, nor does it require the client to ever open or use a trading account.  
                                              Globex Trading Solutions understands it is the right of the client to use or not use the Globex Wealth Management once purchased.<br>
                                                            <br>
                                              The client agrees that the charge for the Globex Wealth Management system shall be $7,995.00. By signing below I agree to pay the above total amount of $7,995.00. 
                                                                                                       <strong>MONTHLY CHARGE</strong><br>
                                                            <br>
                                              Globex Trading Solutions will charge a monthly maintenance fee of $249.00 (One Hundred Forty Nine Dollars) per month 
 and shall begin during the sixth (6th) Calendar month .
                                              This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the 
                                              system and shall receive Trader Support.    It is the understanding of the 
                                              customer the monthly fee will be reoccurring and is non-refundable for any reason.<br>

                                                            <br>
                                              Globex Trading Solutions and the Developers of Globex Wealth Management Systems and Trading products reserve the right to 
                                              modify any and all parts of the systems and trading products without the consent of the customer. This may affect 
past and future performance results.<br>
                                                            <br>
                                           ', N'201314147021105ad552b3.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (41, N'Globex Wealth Portfolio 50k', NULL, N'The Globex Wealth 50k is part of the Globex Wealth Management family of trading systems. The Wealth 50k system is comprised of multiple non-correlated and correlated S&P 500 and Russell 2000 index intra-day trading systems. The systems Logic is a combination of trend following, breakout/reversal and oscillator trading systems; which have been structured to provide the best possible risk management, by using a proprietary set of stop loss filters that limit the portfolio''s downside potential and maximizing it''s upside for optimum performance results.
', CAST(0x00009CA8016443D1 AS DateTime), 0, 2, NULL, 12323.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $249.00 upon completion of  180 days.
 
', N'This is a binding agreement, if you do not agree with the contents herein <br> do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div> <br> <br> <font face="Verdana" size="1">In order to be sure that you are informed before you begin your subscription, your order will be processed when you acknowledge that you have read and understand the following. Please read the entire document before signing:<br> <br> <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br> <br> Globex Trading Solutions, LLC. herein known as GTS.<br> <br> This agreement will be governed by the laws of the State of New York.<br> ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number of sources from which we obtain information, and the inherent risks of distribution, there may be omissions or inaccuracies in such information and services. GTS, its owners/employees and contributors take every reasonable step to ensure the integrity of the data.<br> <br> However, GTS, its owners and employees and contributors cannot and do not warrant the accuracy, completeness, currentness or fitness for a particular purpose of the information contained in our products and services.<br> <br> Recommendations and opinions contained in our products and services reflect judgment, as applicable, of GTS as of the date hereof, are subject to change, and are based upon certain assumptions, only some of which are noted herein. Different assumptions could yield different results. You are cautioned that there is no universally accepted method for analyzing financial instruments, including Futures. Further there is no guarantee as to the liquidity of the instruments involved in its analysis.<br> <br> Neither the information nor the recommendations and opinions expressed herein constitute an offer to buy or sell any financial contract, security, futures contract, or derivative instrument. As a matter of policy GTS does not give Tax, accounting, regulatory or legal advice to clients. Clients should therefore consult their own advisors regarding the tax, accounting and legal implications of the recommended strategies before transactions are effected.</font><br> <br> <br> <p><strong>SYSTEM PURCHASE</strong><br> <br> The client agrees that by signing below they are agreeing to purchase access to the Globex Wealth Management Systems and to pay Globex Trading Solutions compensation as specified below. Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply the client with access from Globex Wealth Management Systems to the clients trading account. Purchase of the Globex Wealth Mangement Systems does not require the client to trade, nor does it require the client to ever open or use a trading account. Globex Trading Solutions understands it is the right of the client to use or not use the Globex Wealth Management once purchased.<br> <br> The client agrees that the charge for the Globex Wealth Management system shall be $7,995.00. By signing below I agree to pay the above total amount of $7,995.00. <br>  <strong>MONTHLY CHARGE</strong><br> <br> Globex Trading Solutions will charge a monthly maintenance fee of $249.00 (One Hundred Forty Nine Dollars) per month only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month . This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the system and shall receive Trader Support. It is the understanding of the customer the monthly fee will be reoccurring and is non-refundable for any reason.<br> <br> Globex Trading Solutions and the Developers of Globex Wealth Management Systems and Trading products reserve the right to modify any and all parts of the systems and trading products without the consent of the customer. This may affect past and future performance results.<br> <br> ', N'160438575021102711e353.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (44, N'Globex Wealth Portfolio 100k', NULL, N'The Globex Wealth 100k is part of the Globex Wealth Management family of trading systems. The Wealth 100k system is comprised of multiple non-correlated and correlated S&P 500 and Russell 2000 index intra-day trading systems.

The systems Logic is a combination of trend following, breakout/reversal and oscillator trading systems;  which have been structured to provide the best possible risk management, by using a proprietary set of stop loss filters that limit the portfolio''s downside potential and maximizing it''s upside for optimum performance results.



', CAST(0x00009CA801652286 AS DateTime), 0, 2, NULL, 12323.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $7,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $349.00 upon completion of 180 calender days.
 
', N'This is a binding agreement, if you do not agree with the contents herein <br> do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div> <br> <br> <font face="Verdana" size="1">In order to be sure that you are informed before you begin your subscription, your order will be processed when you acknowledge that you have read and understand the following. Please read the entire document before signing:<br> <br> <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br> <br> Globex Trading Solutions, LLC. herein known as GTS.<br> <br> This agreement will be governed by the laws of the State of New York.<br> ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number of sources from which we obtain information, and the inherent risks of distribution, there may be omissions or inaccuracies in such information and services. GTS, its owners/employees and contributors take every reasonable step to ensure the integrity of the data.<br> <br> However, GTS, its owners and employees and contributors cannot and do not warrant the accuracy, completeness, currentness or fitness for a particular purpose of the information contained in our products and services.<br> <br> Recommendations and opinions contained in our products and services reflect judgment, as applicable, of GTS as of the date hereof, are subject to change, and are based upon certain assumptions, only some of which are noted herein. Different assumptions could yield different results. You are cautioned that there is no universally accepted method for analyzing financial instruments, including Futures. Further there is no guarantee as to the liquidity of the instruments involved in its analysis.<br> <br> Neither the information nor the recommendations and opinions expressed herein constitute an offer to buy or sell any financial contract, security, futures contract, or derivative instrument. As a matter of policy GTS does not give Tax, accounting, regulatory or legal advice to clients. Clients should therefore consult their own advisors regarding the tax, accounting and legal implications of the recommended strategies before transactions are effected.</font><br> <br> <br> <p><strong>SYSTEM PURCHASE</strong><br> <br> The client agrees that by signing below they are agreeing to purchase access to the Globex Wealth Management Systems and to pay Globex Trading Solutions compensation as specified below. Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply the client with access from Globex Wealth Management Systems to the clients trading account. Purchase of the Globex Wealth Mangement Systems does not require the client to trade, nor does it require the client to ever open or use a trading account. Globex Trading Solutions understands it is the right of the client to use or not use the Globex Wealth Management once purchased.<br> <br> The client agrees that the charge for the Globex Wealth Management system shall be $7,995.00. By signing below I agree to pay the above total amount of $7,995.00.  <br>  <strong>MONTHLY CHARGE</strong><br> <br> Globex Trading Solutions will charge a monthly maintenance fee of $349.00 (One Hundred Forty Nine Dollars) per month only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month . This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the system and shall receive Trader Support. It is the understanding of the customer the monthly fee will be reoccurring and is non-refundable for any reason.<br> <br> Globex Trading Solutions and the Developers of Globex Wealth Management Systems and Trading products reserve the right to modify any and all parts of the systems and trading products without the consent of the customer. This may affect past and future performance results.<br> <br> ', N'160455108021103568e0cb.mht', 1)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (46, N'Globex Wealth Portfolio 250k', NULL, N'The Globex Wealth 250k is part of the Globex Wealth Management family of trading systems. The Wealth 250k system is comprised of multiple non-correlated and correlated S&P 500, Russell 2000 and DAX index intra-day trading systems. The systems Logic is a combination of trend following, breakout/reversal and oscillator trading systems; which have been structured to provide the best possible risk management, by using a proprietary set of stop loss filters that limit the portfolio''s downside potential and maximizing it''s upside for optimum performance results.', CAST(0x00009CA801675FBA AS DateTime), 0, 2, NULL, 12323.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $7,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $349.00 upon completion of system performance period.
 
', N'This is a binding agreement, if you do not agree with the contents herein <br> do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div> <br> <br> <font face="Verdana" size="1">In order to be sure that you are informed before you begin your subscription, your order will be processed when you acknowledge that you have read and understand the following. Please read the entire document before signing:<br> <br> <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br> <br> Globex Trading Solutions, LLC. herein known as GTS.<br> <br> This agreement will be governed by the laws of the State of New York.<br> ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number of sources from which we obtain information, and the inherent risks of distribution, there may be omissions or inaccuracies in such information and services. GTS, its owners/employees and contributors take every reasonable step to ensure the integrity of the data.<br> <br> However, GTS, its owners and employees and contributors cannot and do not warrant the accuracy, completeness, currentness or fitness for a particular purpose of the information contained in our products and services.<br> <br> Recommendations and opinions contained in our products and services reflect judgment, as applicable, of GTS as of the date hereof, are subject to change, and are based upon certain assumptions, only some of which are noted herein. Different assumptions could yield different results. You are cautioned that there is no universally accepted method for analyzing financial instruments, including Futures. Further there is no guarantee as to the liquidity of the instruments involved in its analysis.<br> <br> Neither the information nor the recommendations and opinions expressed herein constitute an offer to buy or sell any financial contract, security, futures contract, or derivative instrument. As a matter of policy GTS does not give Tax, accounting, regulatory or legal advice to clients. Clients should therefore consult their own advisors regarding the tax, accounting and legal implications of the recommended strategies before transactions are effected.</font><br> <br> <br> <p><strong>SYSTEM PURCHASE</strong><br> <br> The client agrees that by signing below they are agreeing to purchase access to the Globex Wealth Management Systems and to pay Globex Trading Solutions compensation as specified below. Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply the client with access from Globex Wealth Management Systems to the clients trading account. Purchase of the Globex Wealth Mangement Systems does not require the client to trade, nor does it require the client to ever open or use a trading account. Globex Trading Solutions understands it is the right of the client to use or not use the Globex Wealth Management once purchased.<br> <br> The client agrees that the charge for the Globex Wealth Management system shall be $7,995.00. By signing below I agree to pay the above total amount of $7,995.00. <br> </p><p><strong>GUARANTEE</strong><br> <br> This Guarantee will be based on results from the Globex Wealth Management Systems only. The performance period lasts as long as 180 Calendar days.<br> <br> The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, do not show a gross profit, is the client then entitled to a $7,995.00 refund.<br> <br> This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to trade, this will have absolutely no bearing on the guarantee.<br> <br> Requests for refunds must be in writing and delivered to our office via US mail within 10 business days upon expiration of the performance period. Otherwise we will assume it is your intention to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Wealth Management trading systems as described in the guarantee section of this agreement will be forever relinquished.<br> <br> <strong>MONTHLY CHARGE</strong><br> <br> Globex Trading Solutions will charge a monthly maintenance fee of $349.00 (One Hundred Forty Nine Dollars) per month only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month . This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the system and shall receive Trader Support. It is the understanding of the customer the monthly fee will be reoccurring and is non-refundable for any reason.<br> <br> Globex Trading Solutions and the Developers of Globex Wealth Management Systems and Trading products reserve the right to modify any and all parts of the systems and trading products without the consent of the customer. This may affect past and future performance results.<br> <br> Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br> </p><div align="right"><font size="2"> ', N'16051488202110fd4e52ec.mht', 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [Summery], [Body], [DateCreated], [DisplayOrder], [CategoryId], [UniqueName], [Price], [ImageUrl], [Writeup], [Contract], [FileUrl], [IsFeatured]) VALUES (48, N'Globex Euro Currency ', NULL, N'Globex Trading Solutions is proud to introduce it’s highly profitable, low risk, systematic, disciplined approach to trading the CME Euro Currency (EC) market.<br /><br /> The system trades approximately 15 x per month, intra-day, always exiting a position by day’s end, with a tight stop loss of $125.00 per trade, the recommended account size is 10k-15k.', CAST(0x00009CA8016F4A0F AS DateTime), 0, 3, NULL, 12323.0000, NULL, N'By Signing and/or Sending this agreement, I agree to all of the terms and conditions stated herein and I further acknowledge that it is my desire to purchase the above-mentioned product. Furthermore, I understand that my credit card will be charged upon signing this agreement and there will be no cancellations for any reason until the conclusion of the performance period, and there will be no refunds of the original purchase price of $5,995.00 if the system meets the guarantee. Globex Trading Solutions will charge a reoccurring monthly maintenance fee of $149.00 upon completion of system performance period.', N'This is a binding agreement, if you do not agree with the contents herein <br> do not sign, date, initial or forward it to Globex Trading Solutions.</strong></font></div> <br> <br> <font face="Verdana" size="1">In order to be sure that you are informed before you begin your subscription, your order will be processed when you acknowledge that you have read and understand the following. Please read the entire document before signing:<br> <br> <strong>FUTURES TRADING INVOLVES SUBSTANTIAL RISK OF LOSS. FUTURES TRADING IS NOT SUITABLE FOR ALL INVESTORS/TRADERS<a href="GlobexBreakout01a.php">.</a></strong><br> <br> Globex Trading Solutions, LLC. herein known as GTS.<br> <br> this agreement will be governed by the laws of the State of New York.<br> ALL MATERIAL PROVIDED BY GTS IS BELIEVED TO BE RELIABLE. However, due to the number of sources from which we obtain information, and the inherent risks of distribution, there may be omissions or inaccuracies in such information and services. GTS, its owners/employees and contributors take every reasonable step to ensure the integrity of the data.<br> <br> However, GTS, its owners and employees and contributors cannot and do not warrant the accuracy, completeness, currentness or fitness for a particular purpose of the information contained in our products and services.<br> <br> Recommendations and opinions contained in our products and services reflect judgment, as applicable, of GTS as of the date hereof, are subject to change, and are based upon certain assumptions, only some of which are noted herein. Different assumptions could yield different results. You are cautioned that there is no universally accepted method for analyzing financial instruments, including Futures. Further there is no guarantee as to the liquidity of the instruments involved in its analysis.<br> <br> Neither the information nor the recommendations and opinions expressed herein constitute an offer to buy or sell any financial contract, security, futures contract, or derivative instrument. As a matter of policy GTS does not give Tax, accounting, regulatory or legal advice to clients. Clients should therefore consult their own advisors regarding the tax, accounting and legal implications of the recommended strategies before transactions are effected.</font><br> <br> <br> <p><strong>SYSTEM PURCHASE</strong><br> <br> The client agrees that by signing below they are agreeing to purchase access to the Globex Euro Currency Systems and to pay Globex Trading Solutions compensation as specified below. Upon purchase of the system, effective as the date of this agreement, Globex Trading Solutions agrees to supply the client with access from Globex Euro Currency Systems to the clients trading account. Purchase of the Globex Euro Currency Systems does not require the client to trade, nor does it require the client to ever open or use a trading account. Globex Trading Solutions understands it is the right of the client to use or not use the Globex Euro Currency Systems once purchased.<br> <br> The client agrees that the charge for the Globex Euro Currency Systems shall be $5,995.00. By signing below I agree to pay the above total amount of $5,995.00.<br> </p><p><strong>GUARANTEE</strong><br> <br> This Guarantee will be based on results from the Globex Forex Systems only. The performance period lasts as long as 180 Calendar days.<br> <br> The guarantee states that only at the end of the 180 calendar day performance period, and only if the total of trades, do not show a gross profit, is the client then entitled to a $5,995.00 refund.<br> <br> This gross profit is to be calculated by the total profit and /or loss of the trades posted by the system and does not include any slippage, commissions or missed trades by the client for any reason. The guarantee is not based on the clients trading account, whether one is opened and funded or not. Severe drawdown’s to clients accounts can and do occur, if a clients account is under funded when or after a drawdown in the system occurs and the client is no longer able to trade, this will have absolutely no bearing on the guarantee.<br> <br> Requests for refunds must be in writing and delivered to our office via US mail within 3 business days upon expiration of the performance period. Otherwise we will assume it is your intention to continue receiving the posted trades and your rights to a refund of the purchase price of the Globex Breakout ER trading system as described in the guarantee section of this agreement will be forever relinquished.<br> <br> <strong>MONTHLY CHARGE</strong><br> <br> Globex Trading Solutions will charge a monthly maintenance fee of $149.00 (One Hundred Forty Nine Dollars) per month only after the successful completion of the performance period and shall begin during the sixth (6th) Calendar month . This monthly fee is charged for continued access to the system, for this the client shall receive updates made to the system and shall receive Trader Support. It is the understanding of the customer the monthly fee will be reoccurring and is non-refundable for any reason.<br> <br> Globex Trading Solutions and the Developers of Globex Euro Currency Systems and Trading products reserve the right to modify any and all parts of the systems and trading products without the consent of the customer. This may affect past and future performance results.<br> <br> Clients are not eligible for refunds under any circumstances if the system meets the guarantee.<br> </p>', N'1520197350121112ac4da8.pdf', 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[Pages]    Script Date: 06/30/2010 10:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pages](
	[PageId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](150) NULL,
	[MetaDescription] [nvarchar](150) NULL,
	[MetaKeywords] [nvarchar](150) NULL,
	[Summery] [nvarchar](2048) NULL,
	[Body] [ntext] NULL,
	[DateCreated] [datetime] NOT NULL,
	[DisplayOrder] [tinyint] NOT NULL,
	[UniqueName] [varchar](50) NULL,
	[PageTitle] [varchar](150) NULL,
	[PageCatId] [int] NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[PageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pages] ON
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (1, N'About Us', NULL, NULL, NULL, N'<div class="blueUnderlinedTitle">About Us</div>
<p>The methodology and philosophy of our trading programs are based on risk management and control. Our systems are 100% mechanical; therefore no trades are made on a discretionary basis. <br />
<br />
<br />
Globex trading systems have been developed and back test/forward tested using powerful money management software, this rigorous testing allows&nbsp;our systems to perform and adapt to changing and challenging market conditions.</p>
<p>We utilize logic based upon intraday breakouts combined with strong money management rules.Every endeavor has been made to avoid over optimization and curve fitting, and future probabilities&nbsp;are likely&nbsp;to correspond with our current success.<br />
<br />
<img alt="" src="http://gtsnyc.com/Files/Content/gtstradingimg.jpg" />&nbsp;<br />
<br />
<br />
Globex Trading Solutions offers trading systems for Commodity, Index Futures and Forex&nbsp;markets that are 100% mechanical, that automatically generate buy and sell signals on selected futures markets intra- day; therefore never holding a position overnight. <br />
<br />
<br />
A trading system is a simple and structured set of rules, which instructs a system when and at what price it should enter or exit a trade.&nbsp;Globex systems gives the investor the ability to obtain exposure to the short side of the market, as well as the long side of the market, i.e. if the market moves lower and the system<strong> </strong>goes short<strong>&nbsp;</strong>the investor is able to profit from a decline in the level of the index and if the system goes long<strong> </strong>the trader will profit from a rise in the index.<br />
<br />
<br />
A more technical detailed analysis&nbsp;of&nbsp;Globex''s trading systems and its performance can be found by referring to the Education Tab and Performance Reports section of this website. <br />
<br />
<br />
<br />
<b>The Globex Advantage of Trading Systems</b>&nbsp;<br />
<br />
To be profitable in these current markets, you need an &quot;edge&quot;, a trading methodology that gives you an inherent advantage over the markets. A trading system is the best way to get that edge.</p>
<p><strong>The Globex Advantage:</strong></p>
<ul><br />
    <li style="line-height: 20px">Diversify Across all Markets. <br />
    &nbsp;</li>
    <li style="line-height: 20px">100% Mechanical systems eliminate the human emotion involved in trading. <br />
    &nbsp;</li>
    <li style="line-height: 20px">Greed, Fear,and Emotion stand in the way of profits. <br />
    &nbsp;</li>
    <li style="line-height: 20px">Cost-efficient, eliminates high brokerage fees. <br />
    &nbsp;</li>
    <li style="line-height: 20px">Trade based on objective trading signals that may go long or short, intra-day never holding a position overnight. <br />
    &nbsp;</li>
</ul>
<p><br />
<br />
<br />
*Among professional money managers who trade the futures markets, known as Commodity Trading Advisors or CTAs, those who trade with trading systems out number by a ratio of six to one; the pros use trading systems because they work. <br />
&nbsp;</p>', CAST(0x00009A6F00F06AEC AS DateTime), 0, N'about', NULL, 1)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (2, N'Our Services', NULL, NULL, NULL, N'<p>Our services text</p>', CAST(0x00009A6F00F085FC AS DateTime), 0, N'services', NULL, 1)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (4, N'Contact', NULL, NULL, NULL, N'<div class="blueUnderlinedTitle">Contact Info</div>
<div style="padding-left: 150px">
<p><strong><span style="font-size: medium"><span style=""><span class="style1">Globex Trading Solutions</span></span></span></strong><span style="font-size: small"><span><br />
<span class="style10">1841 Broadway<br />
Suite 701<br />
New York, NY 10023<br />
<br />
</span><strong><span class="style10">1-888-586-6416<br />
1-212-586-6416<br />
1-212-586-6419 (Fax)</span></strong></span></span></p>
<p><span class="style10"><br />
</span><span style="font-size: medium"><span class="style10"><strong>General Inquiries:</strong><br />
</span></span><u><span class="style10"><a style="text-decoration: underline" href="mailto:info@GTSNYC.com"><span style="font-size: medium">info@GTSNYC.com</span></a></span></u></p>
<p><span style="font-size: medium"><strong><span class="style10">Customer Support:</span></strong><br />
</span><u><span><a style="text-decoration: underline" href="mailto:customersupport@GTSNYC.com"><span style="font-size: medium">customersupport@GTSNYC.com</span></a></span></u><span><u><span style="font-size: medium"><br />
</span></u><span style="font-size: medium"><br />
<strong>Trader Support:<br />
</strong></span><a style="text-decoration: underline" href="mailto:tradersupport@GTSNYC.com"><u><span style="font-size: medium">tradersupport@GTSNYC.com</span></u></a></span><span style="font-size: medium"><br />
<br />
<span class="style10"><span class="style10"><strong>Technical Support:<br />
</strong></span></span></span><span class="style10"><span class="style10"><a href="mailto:support@GTSNYC.com"><u><span style="font-size: medium">support@GTSNYC.com</span></u></a></span><span style="font-size: medium"><span class="style10"><br />
</span></span></span></p>
<p><span style="font-size: medium"><span class="style10"><a href="http://maps.google.com/maps?f=q&amp;hl=en&amp;geocode=&amp;time=&amp;date=&amp;ttype=&amp;q=1841+Broadway,+New+York,+NY,+10023&amp;sll=40.769943,-73.981209&amp;sspn=0.003612,0.007183&amp;ie=UTF8&amp;t=h&amp;z=17&amp;iwloc=addr&amp;om=1">Locate Us</a></span></span></p>
</div>', CAST(0x00009A6F00F0AE29 AS DateTime), 0, N'faq', NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (9, N'Research', NULL, NULL, NULL, N'<div class="blueUnderlinedTitle">Research</div>
<h4><a href="http://gtsnyc.com/Page.aspx?id=12"><img style="border-right: medium none; border-top: medium none; border-left: medium none; border-bottom: medium none" alt="" src="/images/gts-edu-button.gif" /> &nbsp; Learn More...... &nbsp;&nbsp;</a></h4>
<div align="center"><a href="http://clients.emagid.com/gtsnyc/education.aspx"><span style="font-size: large"><br />
</span></a></div>
<div>&nbsp;</div>
<table height="275" width="100%" border="0">
    <tbody>
        <tr>
            <th scope="col" align="left" width="50%" height="21">
            <p>Services:</p>
            </th>
            <th scope="col" align="left" width="204">Stock Information:</th>
        </tr>
        <tr>
            <td style="border-right: rgb(100,127,122) 1px solid; border-top: rgb(100,127,122) 1px solid; border-left: rgb(100,127,122) 1px solid; border-bottom: rgb(100,127,122) 1px solid" valign="top" align="left" height="125">
            <p class="style2">&raquo; <a href="http://www.admis.com/">Archer Daniels Midland Investor Services, Inc.</a></p>
            <p class="style2">&raquo; <a href="http://www.mfglobal.com/">MF Global/Man Financial</a></p>
            <p class="style2">&raquo; <a href="https://www.eaccountopener.com/?bid=4cbb9c550cc8948e3d">e-Account opener (MF Global)</a></p>
            <p class="style2">&raquo; <a href="https://www3.emidas.com/default.asp">e-Midas Platform</a></p>
            </td>
            <td style="border-right: rgb(100,127,122) 1px solid; border-top: rgb(100,127,122) 1px solid; border-left: rgb(100,127,122) 1px solid; border-bottom: rgb(100,127,122) 1px solid" valign="top" align="left">
            <p class="style2">&raquo; <a href="http://www.cme.com/">Chicago Mercantile Exchange</a></p>
            <p class="style2">&raquo; <a href="http://www.nymex.com/">New York Mercantile Exchange</a></p>
            <p class="style2">&raquo; <a href="http://www.nyse.com/">New York Stock Exchange</a><a href="http://www.futuresexaminer.com/"><br />
            </a></p>
            <p class="style2"><u><font color="#0000ff"><a href="http://www.theice.com/homepage.jhtml">www.theice.com/homepage.jhtml</a></font></u></p>
            <p class="style2">&nbsp;</p>
            </td>
        </tr>
        <tr>
            <th scope="col" align="left" width="204">
            <p>Resources:</p>
            </th>
            <th scope="col" align="left" width="204">
            <p>&nbsp;Local Links:</p>
            </th>
        </tr>
        <tr>
            <td style="border-right: rgb(100,127,122) 1px solid; border-top: rgb(100,127,122) 1px solid; border-left: rgb(100,127,122) 1px solid; border-bottom: rgb(100,127,122) 1px solid" valign="top" align="left" height="98">
            <p class="style2">&raquo; <a href="http://www.cnnmoney.com/">CNN Money</a></p>
            <p class="style2">&raquo; <a href="http://www.smartmoney.com/options/index.cfm?story=sfo-2005septrussell">SmartMoney</a></p>
            <p class="style2">&raquo; <a href="http://www.wsj.com/">The Wall Street Journal</a></p>
            </td>
            <td style="border-right: rgb(100,127,122) 1px solid; border-top: rgb(100,127,122) 1px solid; border-left: rgb(100,127,122) 1px solid; border-bottom: rgb(100,127,122) 1px solid" valign="top" align="left">
            <p>&nbsp;<a href="http://www.newyork.bbb.org/">www.newyork.bbb.org/</a></p>
            </td>
        </tr>
    </tbody>
</table>
<div>&nbsp;</div>
<p align="center">&nbsp;<a href="page.aspx?id=27"><img height="217" alt="" width="300" align="middle" border="0" src="/Files/Content/gts image copy.jpg" /></a></p>', CAST(0x00009A71000DDE02 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (10, N'Risk Disclosure Statement:', NULL, NULL, NULL, N'<p><strong><span class="Apple-style-span" style="font-size: x-small">Risk Disclosure Statement:</span></strong></p>
<p><span class="style6"><span class="style7"><span class="style13"><font size="1"><span class="style18">The risk of trading can be substantial and each investor and/or trader must consider whether this is a suitable investment. Past performance, whether actual or indicated by simulated historical tests of strategies, is not indicative of future results. Investing through system trading is a valuable diversification tool in that it presents the opportunity for investment returns that are not correlated with other market instruments such as stock and bond markets. Balance portfolio volatility risk, enhance the investment portfolio ability to profit in any economic environment specific buy/sell decisions on a trade by trade basis. Adding managed futures or forex to stocks &amp; bonds portfolio = possible lower portfolio volatility and enhanced risk adjusted returns</span><font face="Times New Roman">.</font></font></span></span></span></p>
<p><font size="1"><span class="style12"><strong>U.S. Government Required Disclaimer -</strong> Commodity Futures Trading Commission Futures and Options trading has large potential rewards, but also large potential risk. You must be aware of the risks and be willing to accept them in order to invest in the futures and options markets. Don''t trade with money you can''t afford to lose. This is neither a solicitation nor an offer to Buy/Sell futures or options. No representation is being made that any account will or is likely o achieve profits or losses similar to those discussed on this web site. The past performance of any trading system or methodology is not necessarily indicative of future results.&nbsp;<br />
<br />
</span></font><span class="style15"><span class="style17"><font size="1">All material provided by Globex Trading Solutions is believed to be reliable. However, due to <br />
the number of sources from which we obtain information, and the inherent risks of distribution, there may be omissions or inaccuracies in such information and services.&nbsp; Globex Trading Solutions, its owners, employees, and contributors take every reasonable step to ensure the integrity of the data.&nbsp; However, Globex Trading Solutions, its owners, employees, and contributors, cannot and will not warrant the accuracy, completeness, or fitness for a particular purpose of the information contained in our products or services.<br />
</font></span></span></p>
<p><span class="style15"><span class="style17"><font size="1">Recommendations and opinions contained in our products and services reflect judgment, as applicable, of Globex Trading Solutions as of the date hereof, are subject to change, and are based upon certain assumptions that could yield different results. </font></span></span></p>
<p><span class="style15"><span class="style17"><font size="1">You are cautioned there is no universally accepted method for analyzing financial instruments, including futures.&nbsp; Further, there is no guarantee as to the liquidity of the instruments involved in its analysis.&nbsp;Neither the information nor the recommendations and opinions expressed herein constitute an offer to buy or sell any financial contracts, security, future contract, or derivative instrument.&nbsp; As a matter of policy, Globex Trading Solutions does not give tax, accounting, regulatory, or legal advice to clients.&nbsp; </font></span></span></p>
<p><span class="style15"><span class="style17"><font size="1">A client should therefore consult their own advisor regarding the tax, accounting, regulatory, or legal implications of the recommended strategies before any transactions with your account.<br />
<br />
For other consumer advisories concerning possible fraudulent activity in the commodity futures and options industry, click on <strong><a target="_top" href="http://www.cftc.gov/cftc/cftccustomer.htm">Consumer Alerts</a>.</strong> The CFTC''s website also offers general information about trading in the commodity futures and options markets. For example, the CFTC offers brochures on-line, such as &quot;<strong><a target="_top" href="http://www.cftc.gov/opa/brochures/opafutures.htm">Futures and Options What You Should Know Before You Trade</a></strong>&quot; and &quot;<strong><a target="new" href="http://www.cftc.gov/opa/glossary/opaglossary_a.htm">Glossary: The Language of the Futures Industry</a></strong>.&quot; To obtain this and other information, go to the <strong><a target="_top" href="http://www.cftc.gov/cftc/cftcmap.htm">CFTC site map</a>.</strong></font></span></span></p>', CAST(0x00009A78012BC1B4 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (11, N'** News (homepage)', NULL, NULL, NULL, N'<p><applet width="250" height="150" name="QuotePage" code="QuotePage.class" codebase="http://java.barchart.com/quotepage">
<param name="symbols" value="''Stocks,yhoo,msft,amzn:Amazon,''Futures,CZ8:Corn Dec,SBH8,RSH8:Canola May 08" />
<param name="bgcolor" value="ffffff" />
<param name="fgcolor" value="000000" />
<param name="pscolor" value="005500" />
<param name="ngcolor" value="AA0000" />
<param name="numcols" value="2" />
<param name="numrows" value="8" />
<param name="crorder" value="down" />
<param name="data" value="price, change, percent" />
<param name="display" value="fractions" />
<param name="fface" value="Courier" />
<param name="fsize" value="12" />
<param name="fstyle" value="Normal" />     </applet></p>', CAST(0x00009AD90011B5D1 AS DateTime), 50, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (12, N'Education Center', NULL, NULL, NULL, N'<div class="blueUnderlinedTitle">Education Center</div>
<p><br />
&nbsp;<span style="font-size: larger"><u><strong>A systematic approach to trading and investing</strong></u></span></p>
<p>With the advent of the PC and new software capabilities, system trading is now a viable option for the individual investor, especially those with a desire to take control of their investment program. This &ldquo;do-it-yourself&rdquo; segment of the investing public is growing, as evidenced by the dramatic trend toward electronic trading and publications such as FuturesTruth.</p>
<p>Profitable trading strategies start with a consistent approach to the market. Consistency is difficult for many investors because decisions about money can be very emotional. Diversification is essential, but many investors have difficulty diversifying a portfolio. Additionally, money management and/or allocation of funds in a portfolio are crucial in order to balance risk. These three key elements are the primary reason why so many traders are turning to systems.</p>
<p>&bull; <strong>What is a System</strong>:<br />
<br />
A system is a method of trading, using objective entry and exit criteria, based on parameters validated by historical testing on quantifiable data. A system can be as simple as entering a 10 point stop on every new position or as complex as using fractal analysis to signal trades. In common terms, a system is derived from technical analysis of current and past price action in an attempt to forecast price direction. Using a computer, these results can be tested through millions of permutations to generate objective trading signals. When a developer''s computerized trading signals are combined with sound money management principles, a &ldquo;trading system&rdquo; is created. Investors use these systems to trade the futures and/or securities markets to satisfy their individual desire to control and customize their investment program.</p>
<p>&bull; <strong>Why Should I Trade a System:</strong><br />
<br />
A computerized trading system is able to process an enormous amount of information and data in an extremely short period of time. It is then able to use that analysis to produce a trading signal that is void of influences other that what it has been programmed to utilize. The system doesn&rsquo;t care when&nbsp;Ben Bernanke is talking. The system doesn&rsquo;t panic when the S&amp;Ps are limit down. The system is unaware of your particular emotional state at any particular moment. Trading the futures and equity markets using an objective trading system <em><strong>helps improve performance</strong></em>. Trading systems provide discipline to overcome the fear and greed that paralyze traders and prevent them from making proper decisions by removing the pressure of making specific buy/sell decisions on a trade-by-trade basis. Each order placed is governed by a pre-determined set of rules that does not deviate based on anything other than market action. A system will also include specific money management parameters and the mechanical placement of these orders ensures those rules are being followed.</p>
<p>&nbsp;</p>
<p style="text-align: left"><strong>&bull; What is the BEST system?</strong><br />
<br />
Trading systems come in all shapes and sizes. Here at Globex, we trade all types of different systems, from day trading systems entering and exiting in a matter of minutes to trend following systems holding positions over months. Traders always come to me and ask, &ldquo;What is your best System&rdquo;. This is an impossible question to answer. Are you looking to risk $500,000 or only $5000? Are you comfortable holding positions overnight or would you rather be out of the market at the end of the day? Do you have nightmares about the unemployment number every month? Does Bernanke give you heartburn? These are all questions you need to answer before deciding on a trading system. There is no secret formula and no magic solution to system trading. It is the same formula as all of investing:</p>
<p style="text-align: center"><strong>The higher the risk, the higher the possible returns</strong></p>
<p><br />
There is no way around this axiom. System trading involves a set amount of risk and a set return.<br />
<br />
The main measurement of a system&rsquo;s risk is the drawdown. This is the maximum amount of money a trader would have lost if they started the system at its equity peak and stopped trading the system at its equity bottom. Because of the ability to &ldquo;back-test&rdquo; a system, traders have the opportunity to study all of the strategy aspects (such as the track record, frequency of trade, number of profitable trades versus losing traders and draw-downs) before actually trading. You should always focus on the drawdown first and find a system that revolves around those numbers. From there, you can look at the profits and decide if it is something that you are comfortable with. Emotional traders look at drawdown and hope they will not happen again. In reality, when you look at drawdown, you need to be able to handle at least that much. Some traders like to add about 30% to the previous historical drawdown before they stop trading that particular system. This way they have given the system a little breathing room, and can handle a new MAX drawdown if that occurs. If you study the back tested results carefully and base your decision to start trading a system using the drawdown and profit, you are hoping that history will repeat itself. If you want history to repeat, don&rsquo;t be surprised if and when the drawdown happens again. If you are anticipating a specific positive return, you should also expect the inverse as well.<br />
&nbsp;</p>
<p>&nbsp;</p>
<p><strong>&bull; Intervening in an attempt to outperform the system</strong><br />
<br />
One of the most common ways that traders negatively influence the performance of a trading system is by intervening and deviating from the signals. I can usually tell you the exact moment when a system will come out of or begin its drawdown. The exact minute a drawdown will end is the exact moment the trader tries to outperform the system by &ldquo;moving to the sidelines&rdquo;. Time and time again, when a client stops trading the system, the system magically pulls out of the drawdown. Likewise, when clients start calling up, adding contracts and leveraging up on a system that is on a winning streak, it usually starts its drawdown immediately thereafter. Whether this is a real life example of statistical &ldquo;reverting to the mean&rdquo; or just a case of Murphy&rsquo;s Law, I don&rsquo;t know. It is definitely a case of letting emotions enter into an arena where they do not belong. The end result is that when a trader interjects his own opinions and biases into the system in attempt to better the returns, they have almost always ended up underperforming the system.</p>
<p>&nbsp;A broker can assist you in placing the system orders in the market as an objective third party. Using a broker eliminates the temptation to deviate from the system. Brokers stare at their screens all day so traders do not have to follow the markets. This insures that proper orders are placed and maintained as the system directs.<br />
&nbsp;</p>
<p style="text-align: center"><b><span style="font-size: larger">Types of System Platforms: Black Box, Grey Box, White Box.</span></b></p>
<p><br />
The way that systems are categorized usually falls into one of three types. The term <strong>Black Box</strong> has been used in conjunction with trading systems primarily to indicate systems where the user has no knowledge of the process code or ability to manipulate the inputs. <strong>Grey Box</strong> usually refers to systems where the process coding in unknown, but the user has the ability to control specific scenarios, and can allow for optimization that will alter the outcome of the signals from one set of variables to another. A <strong>White box</strong> system&rsquo;s source code is open and the strategy revealed. All inputs and variables can be manipulated. The type of system purchased really depends on what the intended use is. If someone is already an accomplished programmer, and has the ability to understand the intricacies of the indicators and strategies, a white box<strong> </strong>may prove to be a valuable tool. The trader may be able to install some of his own methodology to enhance the program and improve performance. For most individuals however, this added flexibility might have some unintended and ultimately negative outcomes. Unless you are extremely knowledgeable in proper back-testing procedures and statistical analysis, what may happen is that you have taken what was initially a robust system, and by changing the inputs or data, produced a system that is over optimized and curve fit to the specific time period. The end result will be a system that, even though the hypothetical results may look impressive, once the theory is put into practice the system fails to perform as expected because of slight changes in market conditions. The important point is not so much the type of box that you are trading, it is that your are trading a system that has been developed and tested correctly, and that fits your individual trading style and risk, reward, and capitalization perimeters.<br />
&nbsp;</p>
<p><b>The Potential Benefits of System Trading:</b><br />
<br />
To help traders control and customize investment decisions, systems:<br />
1. Provide historical risk and return parameters.<br />
2. Control trading by eliminating fear, greed and indecision.<br />
3. Provide consistent and specific trading signals.<br />
4. Preserve capital by applying money management techniques.<br />
5. Customize a portfolio for specific needs with your risk-reward parameters and capitalization.</p>
<p><strong>The Potential Risk of System Trading:</strong><br />
<br />
There are some risks associated with systems.<br />
1. Systems may be slow to adapt to changing market conditions.<br />
2. Traders must maintain the discipline to execute every trading signal.<br />
3. Traders must allocate the time and infrastructure to monitor the system.<br />
4. Have the proper capitalization to withstand the potential drawdowns.<br />
5. Hypothetical past performance of any system is not necessarily indicative of futures results.</p>
<p>In conclusion, It is important to find the system that is best for you by taking into consideration your specific capitalization, specific trading properties of the system, and the emotional impact of the trading methodology.</p>
<p><b>Making Sense out of Trading System Results:</b></p>
<p><br />
With the glut of new trading systems coming on the market over the past few years, and the frequency of advertisements touting incredible gains; traders now need, more than ever, a way to compare different trading systems. Simply looking at which system has performed the best over a given period of time can be an incredibly dangerous proposition.</p>
<p><br />
The problem inherent in comparing different systems is their infinitely complex structures. This is truly comparing apples to oranges. For example, one system may trade Nasdaq 100 futures 12 times a day for an annual return of 50% after commissions; and another system may trade Gold futures once in a year for an annual return of 50% after all costs. On the surface, an investor would be equally as wise to invest in either of these trading systems. There are of course, a couple of glaring omissions from this analysis, mainly that VOLATILITY and DRAWDOWN is not taken into consideration.</p>
<p>The investing public tends to focus only on returns. Best performance is a relative term that depends on what the individuals intended outcome is. Traders are fixated with returns, but it is even more important to think about how returns<br />
equate with the risk RISK. The goal is to maximize return per a given unit of risk.</p>
<p>But how can traders measure risk? Should they simply look at a system&rsquo;s historical max drawdown? Should they consider the volatility of returns? Luckily, the mathematicians have figured most of this out for us, devising numerous statistics for measuring the risk of an investment. There have been entire careers, doctorates, and government studies on the subject, but we should be able to give a brief overview in this space.</p>
<p><b>Standard Deviation</b></p>
<p><br />
The most common form of risk is variance, measured most often by Standard Deviation. The standard deviation is a statistic that illustrates how closely all the various points of data are clustered around the mean in a sample of data. When the examples are pretty tightly bunched together and the bell-shaped curve is steep, the standard deviation is small. When the examples are spread apart and the bell curve is relatively flat, that tells you have a relatively large standard deviation.</p>
<p><br />
In relation to trading system returns, a high standard deviation is telling you that you can expect a wide range of returns, from down 50% to UP 80% and several points in between. Similarly, low Standard Deviation values occur when returns are stable. This measure is often referred to as Volatility. Investors relate volatility with risk, as a high level of volatility implies that at any one point the investor could be experiencing the 50% DOWN period or the 80% UP period from the above example. This uncertainty of what the returns will be in the next period is why Standard deviation is used as a measure of risk.<br />
Staying with the above example, many investors would rather sacrifice the 80% return if it meant they could also eliminate the chance of a 50% loss. In a trading system where there is a lower volatility of returns, meaning lower Volatility, many of the extreme points have been removed, meaning a lower standard deviation, smoother equity curve, and more consistent results.</p>
<p><br />
Armed with this measure of risk, all the investor needs to do is find the investment with the lowest possible standard deviation, correct? NO. A standard deviation of ZERO can be achieved with a trading system losing 15% every month, or by a system making 100%. Remember, it is the variance from the monthly returns, not the returns themselves. Thus a low standard deviation means little more than the returns have been fairly steady, and says nothing about the returns.</p>
<p><b>Sharpe Ratio</b>:</p>
<p><br />
To help with this flaw in the Standard Deviation, Nobel Laureate William Sharpe developed the Sharpe Ratio, which relates risk with return. Sharpe theorized that the expected return of an investment equals the rate on a risk-free security plus a risk premium. If this expected return does not match or outperform the required return then the investment should not be undertaken. He assigned a premium to risk by assuming risk = volatility (a very Big assumption) and measuring volatility with Standard Deviation. The return portion of the Sharpe ratio therefore measures the rate of return OVER the risk free rate. The risk free rate is usually equal to the annualized rate of 90 day US T-Bills, an investment backed by the full weight of the US government and widely considered the safest investment in the world.</p>
<p><br />
The Sharpe ratio therefore measures a trading system&rsquo;s excess return per a given unit of risk, as measured by the Standard Deviation. Thus, through a little hard work, we finally have our measure of Return per unit of Risk, and have a tool for measuring the Apples and Oranges of the Trading System Industry. The ratio is used to evaluate the quality rather than the quantity of the returns of an investment. This ratio means little by itself, and should be used instead as a measuring stick when comparing various trading systems.</p>
<p><br />
A <u>Higher Sharpe Ratio</u> = <u>More Return per unit of Risk</u> (as measured by volatility)<br />
A <u>Lower Sharpe Ratio</u> = <u>Less Return per unit of Risk</u> (as measured by volatility)</p>
<p><br />
Globex Trading Solutions tracks the real&ndash;time results for several trading systems, and has compiled the following chart listing those systems which have the highest Sharpe ratios in real time trading. These results are from actual fills, but do not includes commissions. These numbers may seem considerably higher than other risk adjusted ratios you have seen, as the minimum performance history of some of the listed systems is only 6 months. It also must be noted that the return percentages are gauged off of the developer recommended minimum for trading the respective systems. These minimums are hypothetical guidelines, and returns can be much higher, or lower, depending on the actual capital of the individual trader. The most recent 90-day T-Bill rate was used as the Risk Free rate. Please see the disclaimer concerning hypothetical performance figures at the end of this article.<br />
#<br />
System<br />
Ann Ret<br />
Max DD<br />
Sharpe<br />
1<br />
System A<br />
212.00%<br />
-20.40%<br />
50.01<br />
2<br />
System B<br />
22.57%<br />
-4.14%<br />
15.48<br />
3<br />
System C<br />
73.13%<br />
-68.75%<br />
15.20<br />
4<br />
System D<br />
53.47%<br />
-12.40%<br />
11.33<br />
5<br />
System E<br />
25.97%<br />
-29.07%<br />
9.32<br />
6<br />
System F<br />
114.00%<br />
-34.20%<br />
8.44<br />
7<br />
System G<br />
15.19%<br />
-2.64%<br />
7.86<br />
8<br />
System H<br />
43.74%<br />
-25.53%<br />
7.80<br />
9<br />
System I<br />
45.40%<br />
-9.47%<br />
7.69<br />
This list does not represent the 10 Best systems, but rather the 10 &ldquo;steadiest&rdquo; systems tracked. The higher a system on this list, the better returns the system has had AND the smoother its equity curve will be. Notice the difference between System B and System F. System B has had a 22.57% average annualized return, while System F has had nearly 5 times that amount. However, there was much more volatility in achieving System F results. Its equity curve was much rockier, seeing spikes to new highs, and then new lows again and again. It therefore has a Sharpe ratio roughly half that of the System B system, and can be considered a riskier investment.</p>
<p><br />
Please note that the Sharpe ratio does not measure only downside risk (deviation), it also measures big moves to the upside. Thus a system which has equity spikes, with some months only returning 2% or 3% and other returning 80% or higher will rank quite low as measured by the Sharpe ration, but may in fact be a very profitable system.</p>
<p><br />
Does the wise investor merely have to go out and find the trading System with the highest comparable Sharpe ratios? I wish it were that simple, and so does the developer of System A.</p>
<p><br />
The reason we can&rsquo;t merely look at the Sharpe Ratio is that it has a flaw. The Sharpe ratio doesn&rsquo;t take into account the max drawdown a trading system has experienced. It views risk as the standard deviation only, a mistake made famous by the brains behind Long Term Capital Management&rsquo; collapse. (I highly recommend Roger Lowenstein&rsquo;s book, When Genius Failed : The Rise and Fall of Long-Term Capital Management). The max drawdown of a system simply can&rsquo;t be ignored.</p>
<p><br />
<u><strong>Sterling Ratio:</strong></u></p>
<p><br />
There is more to risk than volatility and the Sterling Ratio attempts to tackle that problem by incorporating a separate measure of risk named drawdown. A drawdown is any losing period during a system&rsquo;s performance record and equals the percentage difference between an equity peak and an equity valley. Many traders think of a drawdown as the max amount of loss they must endure before a system returns to its winning ways. For example, a trader who starts trading a system with $25,000; watches her equity climb to $50,000, fall to $40,000, then rebound to make new equity highs at $55,000 has had a $10,000, or 20%, Drawdown (50 K &ndash; 40 K = 10 K). For the trader who started the system with 25K on the day after it reached 50 K, the 10 K drawdown represents a 40% Drawdown. Basing the max drawdown on the minimum recommended account balance is referred to as &lsquo;Start &ndash;Trade&rsquo; drawdown. We use the &lsquo;start-trade&rsquo; drawdown as its Max Drawdown level.</p>
<p><br />
The Sterling ratio looks at a trading system&rsquo;s returns in relation to its max drawdown. The max drawdown is simply the largest percentage drawdown that has occurred over the performance history of the trading system. Thus, we have another method for comparing the Apples and Oranges of trading systems. Like the Sharpe ratio, the Sterling ratio means little by itself, and should be used as a measuring stick against other trading systems instead.</p>
<p><br />
A <u>Higher Sterling Ratio</u> = <u>More Return per unit of Risk</u> (as measured by drawdown)<br />
A <u>Lower Sterling Ratio</u> = <u>Less Return per unit of Risk</u> (as measured by drawdown)</p>
<p><br />
Globex Trading Solutions tracks the real&ndash;time results for several trading systems, and has compiled the following chart listing those systems which have the highest Sterling ratios in real time trading. These numbers may seem considerably higher than other risk adjusted ratios you have seen, as the minimum performance history of some of the listed systems is only 6 months. It also must be noted that the return and drawdown percentages are gauged off of the developer recommended minimum for trading the respective systems. These minimums are hypothetical guidelines, and returns can be much higher, or lower, depending on the actual capital of the individual trader. Please see the disclaimer concerning hypothetical performance figures at the end of this article.<br />
#<br />
System<br />
Ann Ret<br />
Max DD<br />
Sterling<br />
1<br />
System A<br />
212.00%<br />
-20.40%<br />
8.64</p>
<p><br />
2)<br />
System J<br />
87.83%<br />
-11.08%<br />
7.19<br />
3<br />
System D<br />
53.47%<br />
-12.40%<br />
3.29<br />
4<br />
System I<br />
45.40%<br />
-9.47%<br />
2.72<br />
5<br />
System F<br />
114.00%<br />
-34.20%<br />
2.58<br />
6<br />
System K<br />
93.13%<br />
-30.83%<br />
2.28<br />
7<br />
System L<br />
39.42%<br />
-12.90%<br />
2.04<br />
8<br />
System M<br />
46.00%<br />
-15.80%<br />
1.78<br />
9<br />
System H<br />
43.74%<br />
-25.53%<br />
1.75</p>
<p><br />
Again, this does not tell us what the best system. Rather, it gives us an idea of which systems have achieved the best return in relation to their max drawdowns. If a system is going to go through a large drawdown, the trader needs to have some idea if the possible return is worth the exposure to that drawdown. What level of return is satisfactory for a 20% drawdown? 50% drawdown? 75% drawdown? We can come up with all sorts of subjective answers to this question, but coming up with an objective answer usually slips the traders mind.</p>
<p><br />
<u><strong>Beyond the Math</strong></u></p>
<p><br />
What does all this mean? Should you rush out to trade the top three systems on each of these tables? Are a couple of risk adjusted ratios the solution to finding that mythical system with the High annual return, steady monthly performance, and low, low max drawdown? The answer to these questions is of course, NO, because that mythical system doesn&rsquo;t exist. There will always be tradeoffs. You may have to sacrifice some return in exchange for reduced volatility, or you may have to take on increased risk in the form of a larger max drawdown to achieve those large annual returns. There is still much to be done in evaluating the potential risk and reward of different systems, and much of it comes down to the risk profile of the individual investor.</p>
<p><br />
A couple of main ingredients for assessing a trader&rsquo;s risk profile are their investment objectives, maximum acceptable loss, and investment time frame. A trader with a very long investment time frame can take on more volatility in returns in exchange for higher annual returns. However, an individual in retirement, for example, with a very short investing time frame, must sacrifice some percentage of return in exchange for less volatility. The short-term dangers of volatility are very real; even an excellent long-term investment can be a disaster for you if your time horizon is short. For an example, look no further than the Nasdaq, where short-term moves can be devastating.</p>
<p><br />
Diversification reduces volatility more efficiently than most people understand: the volatility of a diversified portfolio is less than the average of the volatilities of its component parts. A scientific way to attain a diversified portfolio is by using the Sharpe Ratio to invest in lowly correlated systems.</p>
<p><span style="font-size: larger"><u><strong><br />
Consistency, Diversification and Money Management Using a portfolio approach.</strong></u></span></p>
<p><br />
Investing in trading system is a valuable diversification tool in that it presents the opportunity for investment returns that are not correlated with other investments such as the stock and bond markets. One of the key tenets of Modern Portfolio Theory, as developed by Nobel Prize economist Dr. Harry M. Markowitz, is that more efficient portfolios can be created by diversifying among asset categories with low to negative correlations. Using a combination of several trading systems can greatly reduce portfolio volatility risk when properly allocated and managed.</p>
<p><br />
Deciding on investing in a trading program is the first step in attempting to diversify your portfolio and lowering overall portfolio risk. The next step is diversifying between multiple trading systems. As has been mentioned earlier, investment decisions are based on risk/reward analysis. The advanced trader continuously adjusts and manages his or her risk downward, while always trying to increase reward. This delicate balancing act is the sole difference between successful and unsuccessful traders.<br />
The successful trader reduces his or her risk by trading a basket of trading systems. This basket must contain several trading systems that are lowly correlated. In order to achieve this low correlation between systems, the trader must look at the three main aspects which comprise trading system risk.</p>
<p><u><strong><br />
Trading System Risk Components:</strong></u></p>
<p><br />
<strong>Market Specific Risk:</strong> The market or markets on which a trading system is run is the main component of a trading system&rsquo;s risk profile. A trading system may trade the Wheat, the Nasdaq, Crude Oil, or any number of commodities, equities or derivatives. Market specific risk becomes a problem when a fundamental event affects the entire market or complex. The classic example of this is a surprise fed rate cut. The S&amp;P market will gyrate wildly both up and down in this scenario, causing many technical trading systems to return invalid signals and results. Such major fundamental events can make protective stops and money management levels useless, as the market encounters such events as limit moves. A trader who diversifies by trading five different S&amp;P programs has not escaped the market specific risk. That trader is still at risk of suffering major losses based on an event outside of the control of each system. To eliminate market specific risk, the trader should utilize trading systems that use their logic on not only several different markets, but several market complexes as well. Simply diversifying into soybeans, wheat and soy meal, for example, still leaves your portfolio at risk of severe losses in the face of a complex wide fundamental event such as drought or disease. The more prudent approach is to diversify across market complexes and into the grains, energies, softs, indices, and financials.</p>
<p><br />
<strong>Strategy Specific Risk:</strong> The strategy or strategies on which the trading system is based comprise the second element of risk. There is a multitude of trading strategies available, and one may see no correlation between them upon first review. Most indicators can be separated onto three categories, oscillator based, trend based and momentum based. Almost every trading system is built around some variant of one of these three methodologies. Oscillator based systems tend to perform well in choppy, sideways markets. Trend based systems do well in long-lived directional markets. Momentum systems tend to do well in swing trading markets that run hard in a certain direction, but only for short periods. Overloading your system-trading portfolio with too many of one type of system opens your portfolio up to the risk associated with that type of strategy, and may only function in that specific market condition. A diversified portfolio that contains a portion allocated to each type of system should overcome the individual systems limitations and be able to take advantage of whichever market condition is prevalent at a particular time.</p>
<p><br />
It is also important to take into account the effects different time frames have on the performance of different strategies. A daily chart showing several days of choppy market action may be a beautifully trending market to a 30 min chart. The same trading strategy, therefore, may have two very distinctly different performance records on each of these charts. When looking to diversify between strategies, be sure to pay attention to the time frame on which the strategy is applied as two similar strategies may lower their correlation by trading on different time frames.</p>
<p><strong><br />
Leverage Risk: </strong>The final type of risk associated with trading systems is the money management risk associated with deciding how many contracts or shares to execute each signal. The most dangerous mistake traders make is diversifying between systems, but allocating too much risk to one particular system. For instance, a trader may have 8 different systems trading everything from soybeans to the Nasdaq. The situation may be that this trader will be doing one lots of each market with each of the signals that the system generates. However, it must be taken into consideration that the risk associated with one contract of the Nasdaq is roughly 35 times that of Corn. The trader should risk 2%-5% of equity on every trade regardless of which system generated the signal. If one system is trading 1 lots of the Nasdaq, the system that is trading soybeans should allocate a comparable number of contracts, in this case at least 20, based on the risk that each position will be exposed.</p>
<p><br />
Trading a single system is like owning one stock or one mutual fund. You may do very well, or you may do poorly based solely on the management and performance of a single entity. Trading a single trading system is very similar. The trader that uses several non-correlated systems has added the element of diversification, and greatly reduces portfolio volatility risk. The end result can be a much smoother equity curve as losses in one system can be offset by profits I another.</p>
<p><br />
By trading multiple trading systems across different markets and time frames, the trader may reduce market specific and complex specific risk. By trading systems with different entry and exit strategies, the trader reduces system specific risk. By trading the appropriate number of contracts per signal or trading system in accordance with preset risk levels, the trader reduces leverage risk.</p>
<p><span style="font-size: larger"><u><strong><br />
Strengths of Trend Following Systems</strong></u></span></p>
<p><br />
Historically, traders have had the most success with trend following systems. Trend following systems, in their most basic form, use some type of formula or chart pattern to determine when a tradable direction has been established. The underlying purpose of these calculations is to attempt to filter out the underlying &ldquo;noise&rdquo; in the market to reveal true direction in whatever time frame you are working with. The formulas used can be something as relatively simple s a two period moving average crossover or can incorporate indicators as complex as exponential smoothing, parabolic and volatility sensitive inputs.</p>
<p><br />
Traders attempt to profit from these calculations by establishing trading rules and incorporating them into a systematic method of entering and exiting the market. Usually this involves some technique for buying the market when prices are above a certain level or selling when prices are below a certain level. Aggressive traders can use a short-term time frame, while more conservative traders and money managers normally use longer time periods. One of the problems with a system of this type is traders tend to want to &ldquo;cut profits short and let losses run&rdquo;.</p>
<p><br />
Trend following systems will show many open profits, and traders usually cash in early. This is exactly the opposite of what should be done. You should not limit upside potential by placing an arbitrary, non-systematic exit point on the trade. The grand majority of index trading systems are non-adaptive, taking fixed profits and fixed losses, even in the face of wildly gyrating price movements and volatility. This fixes profit and limits returns. The mantra of trend following systems is &ldquo;cut losses, and let profits run&rdquo;. Successful trend following systems are designed to take small losses, while they allow for maximum profit by remaining in the market for large moves. These large moves are the underlying strength of a diversified, trend following system.</p>
<p><span style="color: rgb(51,153,102)"><br />
</span><strong><span style="color: rgb(51,153,102)">Reasons to include Alternative Investments in an investment portfolio:</span></strong></p>
<p><br />
1.<strong> Balance portfolio volatility risk. </strong>This is possible because of the low to slightly negative correlation of managed futures with equities and bonds.</p>
<p>2.<strong> Enhance the investment portfolio.</strong> Including a balanced futures program improves overall diversification. This claim is substantiated by extensive bank of academic research, beginning with the landmark study of Dr. John Lintner</p>
<p>3. <strong>Ability to profit in any economic environment.</strong> Diversified managed futures accounts can take advantage of price trends, both positive and negative, during periods of hyperinflation as well as during deflationary times.</p>
<p>4. <strong>Participate in global markets.</strong> Managed futures accounts can participate in worldwide markets, with profit potential and risk reduction among a broad array of non-correlated markets<br />
Warning: There is a risk of loss in trading. It is the nature of commodity<br />
and securities that where there is the opportunity for profit, there is also<br />
the risk of loss. Commodity trading involves a certain degree of risk, and<br />
may not be suitable for all investors. Past performance is not necessarily<br />
indicative of future results. Please read additional risk matters on our web<br />
site. It is important you understand all the risks involved<br />
with trading, and you should only trade with risk capital.<b><br />
&nbsp;</b></p>
<p><span style="font-size: smaller">Warning: There is a risk of loss in trading. It is the nature of commodity<br />
and securities that where there is the opportunity for profit, there is also<br />
the risk of loss. Commodity trading involves a certain degree of risk, and<br />
may not be suitable for all investors. Past performance is not necessarily<br />
indicative of future results. Please read additional risk matters on our web<br />
site, <a href="http://www.gtsnyc.com">www.gtsnyc.com</a>. It is important you understand all the risks involved<br />
with trading, and you should only trade with risk capital.</span></p>', CAST(0x00009AE2011C9C93 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (13, N'A-Z Trading Glossary', NULL, NULL, NULL, N'<p>An A to Z of the world of futures and options, designed to equip you with all  the industry terms you need to trade with confidence. Sourced from Common Sense  Commodities LLC.</p>
<p>&nbsp;</p>
<p align="center" class="greyLinks"><a href="#letter_a">A</a> &nbsp;<a href="#letter_b">B</a> &nbsp;<a href="#letter_c">C</a> &nbsp;<a href="#letter_d">D</a> &nbsp;<a href="#letter_e">E</a> &nbsp;<a href="#letter_f">F</a> &nbsp;<a href="#letter_g">G</a> &nbsp;<a href="#letter_h">H</a> &nbsp;<a href="#letter_i">I</a> &nbsp;<a href="#letter_k">K</a> &nbsp;<a href="#letter_l">L</a> &nbsp;<a href="#letter_m">M</a> &nbsp;<a href="#letter_n">N</a> &nbsp;<a href="#letter_o">O</a> &nbsp;<a href="#letter_p">P</a> &nbsp;<a href="#letter_r">R</a> &nbsp;<a href="#letter_s">S</a> &nbsp;<a href="#letter_t">T</a> &nbsp;<a href="#letter_u">U</a> &nbsp;<a href="#letter_v">V</a> &nbsp;<a href="#letter_w">W</a></p>
<h6><a name="letter_a" id="letter_a"></a>A</h6>
<h3>Account Executive</h3>
<p>The agent of a commission house who serves customers/traders by entering  their commodity futures and options orders, reporting trade executions, advising  on trading strategies, etc.</p>
<p>&nbsp;</p>
<h3>ADP</h3>
<p>Alternative Delivery Procedure. A provision of a futures contract that allows  buyers and sellers to make and take delivery under terms or conditions that  differ from those prescribed in the contract. An ADP may occur at any time  during the delivery period, once long and short futures positions have been  matched for the purpose of delivery.</p>
<p>&nbsp;</p>
<h3>Alpha-Beta Trend Channel</h3>
<p>The Alpha-Beta Trend Channel study uses the standard deviation of price  variation to establish two trend lines, one above, and one below the moving  average of a price field. This creates a Channel (band) where the great majority  of price field values will occur.</p>
<p>&nbsp;</p>
<h3>Arbitrage</h3>
<p>The simultaneous purchase of one commodity against the sale of another in  order to profit from fluctuations in the usual price relationships. Variations  include the simultaneous purchase and sale of different delivery months of the  same commodity; of the same delivery month, but different grades of the same  commodity; and of different commodities.</p>
<p>&nbsp;</p>
<h3>At The Market</h3>
<p>An order to buy or sell a futures contract at whatever price is obtainable  when the order reaches the trading floor. Also called a market order.</p>
<p>&nbsp;</p>
<h3>At The Money</h3>
<p>An option whose exercise, or strike, price is closest to the futures  price.</p>
<p>&nbsp;</p>
<h6><a name="letter_b" id="letter_b"></a>B</h6>
<h3>Backwardation</h3>
<p>Market situation in which futures prices are lower in each succeeding  delivery month. Also known as an inverted market. The opposite of  &quot;contango&quot;.</p>
<p>&nbsp;</p>
<h3>Banker''s Acceptance</h3>
<p>A draft or bill of exchange accepted by a bank; payment is guaranteed by the  accepting institution.</p>
<p>&nbsp;</p>
<h3>Basis</h3>
<p>The differential that exists at any time between the cash, or spot price, of  a given commodity and the price of the nearest futures contract for the same or  a related commodity. Basis may reflect different time periods, product forms,  qualities or locations. Cash minus futures equals basis.</p>
<p>&nbsp;</p>
<h3>Basis Risk</h3>
<p>The uncertainty as to whether the cash futures spread will widen or narrow  between the time''s a hedge position is implemented and liquidated.</p>
<p>&nbsp;</p>
<h3>Bear</h3>
<p>One who anticipates a decline in price or volatility. Opposite of a  &quot;bull&quot;.</p>
<p>&nbsp;</p>
<h3>Bear Market</h3>
<p>Market in which prices are in a declining trend.</p>
<p>&nbsp;</p>
<h3>Bear Spread</h3>
<p>1) The simultaneous purchase and sale of two futures contracts in the same or  related commodities with the intention of profiting from a decline in prices,  but at the same time limiting the potential loss if this expectation is wrong.  This can usually be accomplished by selling a nearby delivery and buying a  deferred delivery (further out contract). 2) A delta negative option position  comprised of long and short options of the same type, either calls or puts,  designed to be profitable in a declining market. An option with a lower strike  price is bought and one with a higher strike price is sold.</p>
<p>&nbsp;</p>
<h3>Bid</h3>
<p>A motion to buy a futures or option contract at a specified price. Opposite  of &quot;offer&quot;.</p>
<p>&nbsp;</p>
<h3>Book Transfer</h3>
<p>Transfer of title without actually delivering the product.</p>
<p>&nbsp;</p>
<h3>Bollinger Bands</h3>
<p>Bollinger Bands plot trading bands above and below a simple moving average.  The standard deviation of closing prices for a period equal to the moving  average employed is used to determine the band width. This causes the bands to  tighten in quiet markets, and to loosen in volatile markets. The bands can be  used to determine overbought and oversold levels, locate reversal areas, project  targets for market moves, and determine appropriate stop levels. The bands are  used in conjunction with indicators such as RSI, MACD histogram, CCI, and Rate  of Change. Divergences between Bollinger bands and other indicators show  potential action points. As a general guideline, look for buying opportunities  when prices are in the lower band, and selling opportunities when the price  activity is in the upper band.</p>
<p>&nbsp;</p>
<h3>Box Spread</h3>
<p>An options market arbitrage in which both a bull spread and a bear spread are  established for a risk less profit. One spread includes put options, and the  other includes calls.</p>
<p>&nbsp;</p>
<h3>Brand</h3>
<p>Insignia identifying the producer of a specific commodity.</p>
<p>&nbsp;</p>
<h3>Break-Even Point</h3>
<p>The underlying futures price at which a given options strategy is neither  profitable nor unprofitable. For call options, it is the strike price plus the  premium. For put options, it is the strike price minus the premium.</p>
<p>&nbsp;</p>
<h3>Broker</h3>
<p>1) An individual who is paid a fee or commission for acting as an agent in  making contracts, sales, or purchases. 2) A floor broker is a person who  actually executes trading orders on the floor of an exchange. 3) An account  executive, registered commodity representative, or customers'' man, who deals  with customers and their orders in commission house offices.</p>
<p>&nbsp;</p>
<h3>Bulge</h3>
<p>A rapid advance in futures prices.</p>
<p>&nbsp;</p>
<h3>Bull</h3>
<p>One who anticipates an increase in price or volatility. Opposite of a  &quot;bear&quot;.</p>
<p>&nbsp;</p>
<h3>Bull Market</h3>
<p>Market in which prices are in an upward trend.</p>
<p>&nbsp;</p>
<h3>Bull Spread</h3>
<p>1) The simultaneous purchase and sale of two futures contracts in the same or  related commodities with the intention of profiting from a rise in prices, but,  at the same time, limiting the potential loss if this expectation is wrong. This  can be accomplished by buying the nearby delivery and selling the deferred. 2) A  delta positive options position composed of both long and short options of the  same type, either calls or puts, designed to be profitable in a rising market.  An option with a lower strike price is sold, and one with a higher strike price  is bought.</p>
<p>&nbsp;</p>
<h3>Buyer''s Market</h3>
<p>A condition of the market in which there is an abundance of goods available,  and, hence, buyers can afford to be selective and may be able to buy at less  than the price that had previously prevailed. See &quot;seller''s market&quot;.</p>
<p>&nbsp;</p>
<h3>Buying Hedge</h3>
<p>Also called a long hedge. Buying futures contracts to protect against  possible increased costs of commodities that will be needed in the future.</p>
<p>&nbsp;</p>
<h6><a name="letter_c" id="letter_c"></a>C</h6>
<h3>Calendar Spread</h3>
<p>An options position comprised of the purchase and sale of two options  contracts of the same type that have the same strike prices, but different  expiration dates. Also known as a horizontal, or time, spread.</p>
<p>&nbsp;</p>
<h3>Call Option</h3>
<p>An option that gives the buyer (holder) the right, but not the obligation, to  buy a futures contract (enter into a long futures position) for a specified  price within a specified period of time, in exchange for a onetime premium  payment. It obligates the seller (writer) of an option to sell the underlying  futures contract (enter into a short futures position) at the designated price,  should the option be exercised at that price.</p>
<p>&nbsp;</p>
<h3>Candlestick Charts</h3>
<p>Method of drawing stock (or commodity) charts which originated in Japan.  Requires the presence of Open, High, Low, and Close price data to be drawn.  There are two basic types of candles, the white body, and the black body. As  with regular bar charts, a vertical line is used to indicate the period''s  (normally daily) high to low. When prices close higher than they opened, a white  rectangle is drawn on top of the high-low line. This rectangle originates at the  opening price level and extends up towards the closing price. A down day is  drawn in black. The combination of several candles results in patterns (with  names like &quot;two crows&quot; or &quot;bullish engulfing pattern&quot;) which give insight into  future price activity. For other Japanese charting approaches also see Renko and  Kagi charts.</p>
<p>&nbsp;</p>
<h3>Cap</h3>
<p>A supply contract between a buyer and a seller, whereby the buyer is assured  that he will not have to pay more than a given maximum price. This type of  contract is analogous to a call option.</p>
<p>&nbsp;</p>
<h3>Carrying Charge</h3>
<p>The total cost of storing a physical commodity over a period of time.  Includes storage charges, insurance, interest, and opportunity costs.</p>
<p>&nbsp;</p>
<h3>Cash Commodity</h3>
<p>The actual physical commodity. Sometimes called a spot commodity, or  actuals.</p>
<p>&nbsp;</p>
<h3>Cash Market</h3>
<p>The market for a cash commodity where the actual physical product is  traded.</p>
<p>&nbsp;</p>
<h3>CFTC</h3>
<p>See Commodity Futures Trading Commission.</p>
<p>&nbsp;</p>
<h3>Chaikin Oscillator</h3>
<p>The Chaikin Oscillator is created by subtracting a 10 period exponential  moving average of the Accumulation/Distribution line from a 3 period moving  average of the Accumulation/Distribution Line.</p>
<p>&nbsp;</p>
<h3>Charting</h3>
<p>The use of graphs and charts in the analysis of market behavior, so as to  plot trends of price movements, average movements of price, volume, and open  interest, in the hope that such graphs and charts will help one to anticipate  and profit from price trends. Contrasts with &quot;fundamental analysis&quot;.</p>
<p>&nbsp;</p>
<h3>CIF</h3>
<p>Cost, Insurance, Freight. Term refers to a sale in which the buyer agrees to  pay a unit price that includes the Free On Board (FOB) Value at the port of  origin plus all costs of insurance and transportation. This type of transaction  differs from a &quot;delivered&quot; agreement in that it is generally ex duty, and the  buyer accepts the quantity and quality at the loading port, rather than pay on  quality and quantity as determined at the unloading port. Risk and title are  transferred from the seller to the buyer at the loading port, although the  seller is obliged to provide insurance in a transferable policy at the time of  loading.</p>
<p>&nbsp;</p>
<h3>Class Of Options</h3>
<p>All call options, or all put options, exercisable for the same underlying  futures contract and which expire on the same expiration date.</p>
<p>&nbsp;</p>
<h3>Clearing Member</h3>
<p>Clearing Members of the New York Mercantile Exchange accept responsibility  for all trades cleared through them, and share secondary responsibility for the  liquidity of the Exchange''s clearing operation. They earn commissions for  clearing their customers'' trades and enjoy special margin privileges. Original  margin requirements for Clearing Members are lower than for customers, and  Clearing Members may use letters of credit posted with the clearinghouse as  original margin for customer accounts, as well as for their own trades. Clearing  Members must meet a minimum capital requirement.</p>
<p>&nbsp;</p>
<h3>Clearinghouse</h3>
<p>An Exchange associated body charged with the function of insuring the  financial integrity of each trade. Orders are &quot;cleared&quot; by means of the  clearinghouse acting as the buyer to all sellers, and the seller, to all  buyers.</p>
<p>&nbsp;</p>
<h3>Closing Range</h3>
<p>A range of prices at which transactions took place at the closing of the  market; buying and selling orders during the closing period might have been  filled at any point within such a range.</p>
<p>&nbsp;</p>
<h3>Commission</h3>
<p>The fee charged by a futures broker for the execution of an order.</p>
<p>&nbsp;</p>
<h3>Commission House</h3>
<p>An organization that trades commodities and/or futures and options contracts  for customer accounts in return for a fee.</p>
<p>&nbsp;</p>
<h3>Commission Merchant</h3>
<p>One who makes a trade, either for another member of an exchange or for a  nonmember client, but who makes the trade in his own name and becomes liable as  principal to the other.</p>
<p>&nbsp;</p>
<h3>Commitment or Open Interest</h3>
<p>The number of open or outstanding contracts for which an individual or entity  is obligated to the Exchange, because that individual or entity has not yet made  an offsetting sale or purchase, an actual contract delivery, or, in the case of  options, exercised the option.</p>
<p>&nbsp;</p>
<h3>Commodity</h3>
<p>As defined by the CFTC, specifically enumerated agricultural commodities, all  other goods and articles, except onions and all services, rights and interests  in which contracts for future delivery are presently, or in the future may be,  dealt.</p>
<p>&nbsp;</p>
<h3>Commodity Futures Trading Commission</h3>
<p>A federal regulatory agency authorized under the Commodity Futures Trading  Commission Act of 1974 to regulate futures trading in all commodities. The  commission is comprised of five commissioners, one of whom is designated as  chairman, all appointed by the President, subject to Senate confirmation. The  CFTC is independent of the Cabinet departments.</p>
<p>&nbsp;</p>
<h3>Commodity Channel Index (CCI)</h3>
<p>The CCI is a timing system that is best applied to commodity contracts which  have cyclical or seasonal tendencies. CCI does not determine the length of  cycles - it is designed to detect when such cycles begin and end, through the  use of a statistical analysis which incorporates a moving average and a divisor,  reflecting both the possible and actual Trading Ranges. Although developed  primarily for commodities, the CCI could conceivably be used to analyze stocks  as well.</p>
<p>&nbsp;</p>
<h3>Commodity Selection Index</h3>
<p>The Commodity Selection Index is related to the Directional Movement Index.  Whereas the ADXR plot of the DMI is used to rate contracts from the longer term,  trend-following point of view, the CSI is used to rate items in the more  volatile short term. The Commodity Selection Index takes into account the ADXR  from the Directional Movement Index, the Average True Range, the value of a one  cent move, as well as margin and commission requirements. The higher the CSI  rating, the more attractive an item is for trading.</p>
<p>&nbsp;</p>
<h3>Commodity Pool</h3>
<p>A venture, usually a limited partnership, in which funds contributed by a  number of investors are combined for the purpose of trading futures. Also called  a commodity fund or a futures fund.</p>
<p>&nbsp;</p>
<h3>Commodity Pool Operator (CPO)</h3>
<p>Acts as a general partner of commodity pools. CPOs hire independent Commodity  Trade Advisors to handle daily trading decisions. Responsible for the pool''s  administration, and structure, and selecting and monitoring the traders who  conduct transactions using the fund''s money.</p>
<p>&nbsp;</p>
<h3>Commodity Trading Advisor (CTA)</h3>
<p>Directs trading in the managed accounts of a commodity pool. Professional  money managers who manage client assets on a discretionary basis, using global  futures markets as an investment medium.</p>
<p>&nbsp;</p>
<h3>Contango Market</h3>
<p>A market situation in which prices are higher in the succeeding delivery  months than in the nearest delivery month. Opposite of &quot;backwardation&quot;.</p>
<p>&nbsp;</p>
<h3>Contingency Order</h3>
<p>An order which becomes effective only upon the fulfillment of some condition  in the marketplace.</p>
<p>&nbsp;</p>
<h3>Contract</h3>
<p>1) A term of reference describing a unit of trading for a commodity future or  option. 2) An agreement to buy or sell a specified commodity, detailing the  amount and grade of the product, and the date on which the contract will mature  and become deliverable.</p>
<p>&nbsp;</p>
<h3>Contract Grade</h3>
<p>That grade of product established in the rules of a commodity futures  exchange as being suitable for delivery against a futures contract.</p>
<p>&nbsp;</p>
<h3>Contract Months</h3>
<p>See &quot;delivery month&quot;.</p>
<p>&nbsp;</p>
<h3>Conversion</h3>
<p>A delta neutral arbitrage transaction involving a long futures contract, a  long put option, and a short call option. The put and call options have the same  strike price, and the same expiration date.</p>
<p>&nbsp;</p>
<h3>Cover</h3>
<p>To close out a short futures or options position.</p>
<p>&nbsp;</p>
<h3>Covered Writing</h3>
<p>The sale of an option against an existing position in the underlying futures  contract. For example, short call and long futures.</p>
<p>&nbsp;</p>
<h3>Current Delivery Month</h3>
<p>The futures contract which matures and becomes deliverable during the present  month or the month closest to delivery. Also called the spot month.</p>
<p>&nbsp;</p>
<h3>Cutler''s RSI</h3>
<p>Cutler''s RSI is a slight variation of Welles Wilder''s original Relative  Strength Index. The RSI is a momentum oscillator used to identify overbought and  oversold conditions by keying on specific levels, generally 30 and 70, on a  chart scaled from 0 to 100. The study can also be used to detect the following:  Movement which might not be as readily apparent on the bar chart; failure swings  above 70, or below 30, which indicate reversals Support and resistance  Divergences between RSI and price. Cutler''s RSI is calculated as follows: RSI =  100 - (100 / ( 1 + RS ) ) RS = UPAV:x / DNAV:x and . . . UPAV:x = (E, period''s  Closes UP) / period DNAV:x = (z: period''s Closes DOWN) / period A Close UP (or  DOWN) = CLOSE - CLOSE previous. If the difference is positive, it is a Close UP.  If the difference is negative, the sign is changed and it is a Close DOWN.</p>
<p>&nbsp;</p>
<h6><a name="letter_d" id="letter_d"></a>D</h6>
<h3>Day Trade</h3>
<p>The purchase and sale of a futures or an options contract on the same day  that is sold or bought back generally on the same day (often within  minutes).</p>
<p>&nbsp;</p>
<h3>Delivery Notice</h3>
<p>A notice presented through an exchange''s clearing house, by a Clearing  Member, announcing the intention to deliver the actual commodity in satisfaction  of a contract obligation.</p>
<p>&nbsp;</p>
<h3>Delivery Point(s)</h3>
<p>Location(s) designated by an exchange, at which delivery may be made in  fulfillment of contract terms.</p>
<p>&nbsp;</p>
<h3>Delta</h3>
<p>The sensitivity of an option''s value to a change in the price of the  underlying futures contract. Also referred to as an option''s &quot;futures equivalent  position&quot;. Deltas are positive for bullish options positions, or calls, and  negative for bearish options positions, or puts. Deltas of &quot;deep in the money&quot;  options are approximately equal to one; deltas of &quot;at the money options&quot; are  0.5; and deltas of &quot;deep out of the money&quot; options approach zero.</p>
<p>&nbsp;</p>
<h3>Delta Neutral Spread</h3>
<p>A spread where the total delta position on the long side and the total delta  on the short side add up to approximately zero.</p>
<p>&nbsp;</p>
<h3>Demand Aggregate</h3>
<p>The Demand Aggregate is used similarly as the Demand Index, but adds Open  Interest as a consideration in the formula. In its simplest terms, the system  confirms price trends, by analyzing concurrent Volume and Open Interest trends.  For example, a rise in price, coupled with rising Volume and Open Interest  figures, is considered a bullish indicator. Interpretations are made with  respect to the relationship between the movement of Volume, Open Interest, and  Price.</p>
<p>&nbsp;</p>
<h3>Demand Index</h3>
<p>The Demand Index is a leading indicator which combines volume and price data  in such a way as to indicate a change in price trend. It is designed so that, at  the very least, it is a coincidental indicator, never a lagging one. The  calculation of this index is relatively complex. This analysis is based on the  general observation that volume tends to peak before prices peak, both in the  commodity and stock markets.</p>
<p>&nbsp;</p>
<h3>Depository or Warehouse Receipt</h3>
<p>A document issued by a bank or warehouse indicating ownership of a commodity  stored in a bank depository or warehouse. In the case of many commodities  deliverable against futures contracts, transfer of ownership of an appropriate  depository receipt may affect contract delivery.</p>
<p>&nbsp;</p>
<h3>Derivative</h3>
<p>Financial instrument derived from a cash market commodity, futures contract,  or other financial instrument. Derivatives can be traded on regulated exchange  markets or over the counter. For example, futures contracts are derivatives of  physical commodities, options on futures are derivatives of futures  contracts.</p>
<p>&nbsp;</p>
<h3>Detrend</h3>
<p>Detrend is simply another interpretation of a moving average. It provides a  means of identifying underlying cycles not apparent when the moving average is  viewed in its original form, by effectively hiding the major cycles from view.  The moving average line is drawn as a straight, horizontal basis line on the  Detrend chart. Price bars are then re-positioned along this line depending on  their relation to the moving average line.</p>
<p>&nbsp;</p>
<h3>Differentials</h3>
<p>Price differences between classes, grades, and locations of different stocks  of the same commodity.</p>
<p>&nbsp;</p>
<h3>Directional Movement Index</h3>
<p>Directional Movement uses a rather complicated set of calculations designed  to rate the directional movement of commodities or stocks on a scale from 0 to  100. For those traders who employ trend-following methods, commodities or stocks  rating in the upper end of the scale would be attractive. For those using  non-trending methods, commodities or stocks rating at the lower end of the scale  should be considered for trading. At its most basic, the Directional Movement  would affect trading in the following manner: Long positions would be taken when  the &quot;+DI&quot; line crosses over the &quot;-DI&quot; line. Short positions would be taken when  the &quot;-DI&quot; line crosses over the &quot;+DI&quot; line. Further components of this index are  the ADX and ADXR lines.</p>
<p>&nbsp;</p>
<h3>Discount</h3>
<p>1) A downward adjustment in price allowed for delivery of stocks of a  commodity of lesser than contract grade against a futures contract. 2) Sometimes  used to refer to the price differences between futures of different delivery  months.</p>
<p>&nbsp;</p>
<h3>Discretionary Account</h3>
<p>An arrangement by which the holder of an account gives written power of  attorney to someone else, often a broker, to buy and sell without prior approval  of the account holder. Often referred to as a &quot;managed account.&quot;</p>
<p>&nbsp;</p>
<h6><a name="letter_e" id="letter_e"></a>E</h6>
<h3>Electronic Trader</h3>
<p>A person who is authorized to enter orders for his own account and/or for  customers'' accounts on any exchange that offers electronic trading.</p>
<p>&nbsp;</p>
<h3>Elliott Wave</h3>
<p>Elliott wave theory goes beyond traditional charting techniques by providing  an overall view of market movement that helps explain why and where certain  chart patterns develop. The three major aspects of wave analysis are: pattern,  time, and ratio. The basic Elliott pattern consists of a 5 wave uptrend followed  by a three wave correction. Each &quot;leg&quot; of a wave, in turn, consists of smaller  waves. Elliott waves can be used to successfully define where the market  currently is in relation to &quot;the big picture&quot;, but is usually too unreliable for  short term trading.</p>
<p>&nbsp;</p>
<h3>Exchange Certified Stocks</h3>
<p>Stocks of commodities, held in depositories or warehouses, certified by an  Exchange approved inspection authority as constituting good delivery against a  futures contract position. Current total certified stocks are reported in the  press for many important commodities such as platinum.</p>
<p>&nbsp;</p>
<h3>Exchange Of Futures For Cash</h3>
<p>A transaction in which the buyer of a cash commodity transfers to the seller  a corresponding amount of long futures contracts, or receives from the seller a  corresponding amount of short futures, at a price difference mutually agreed  upon. In this way, the opposite hedges in futures of both parties are closed out  simultaneously.</p>
<p>&nbsp;</p>
<h3>Exchange Of Futures For Physicals</h3>
<p>A futures contract provision involving an agreement for delivery of physical  product (that does not necessarily conform to contract specifications in all  terms) from one market participant to another, and a concomitant assumption of  equal and opposite futures positions by the same participants at the time of the  agreement.</p>
<p>&nbsp;</p>
<h3>Exercise</h3>
<p>The process of converting an options contract into a futures position.</p>
<p>&nbsp;</p>
<h3>Exercise Price</h3>
<p>The price at which the underlying futures contract will be bought or sold in  the event an option is exercised. Also called the &quot;strike price&quot;.</p>
<p>&nbsp;</p>
<h3>Expiration Date</h3>
<p>The date and time after which trading in an options contract terminates and  after which all contract rights or obligations become null and void.</p>
<p>&nbsp;</p>
<h3>Extrinsic Value</h3>
<p>The amount by which the premium exceeds its intrinsic value. Also known as  &quot;time value&quot;.</p>
<p>&nbsp;</p>
<h6><a name="letter_f" id="letter_f"></a>F</h6>
<h3>Fair Value</h3>
<p>Theoretical value.</p>
<p>&nbsp;</p>
<h3>Fast Market</h3>
<p>Transactions in the pit or ring that take place in such volume, and with such  rapidity, that price reporters are behind with price quotations, so they insert  &quot;Fast&quot; and show a range of prices.</p>
<p>&nbsp;</p>
<h3>Fence</h3>
<p>A long (short) underlying position together with a long (short) out of the  money put and a short (long) out of the money call. All options must expire at  the same time.</p>
<p>&nbsp;</p>
<h3>FIA</h3>
<p>Futures Industry Association. A national not-for-profit futures industry  trade association, that represents the brokerage community on industry,  regulatory, political, and educational issues.</p>
<p>Fibonacci Ratios and Retracements ( I use these on EVERY trade)</p>
<p>They can be applied both to price and time, although it is more common to use  them on prices. The most common levels used in retracement analysis are 61.8%,  38%, and 50%. When a move starts to reverse, the 3 price levels are calculated  (and drawn using horizontal lines) using a movements low to high. These  retracement levels are then interpreted as likely levels where counter moves  will stop. It is interesting to note that the Fibonacci ratios were also known  to Greek and Egyptian mathematicians. The ratio was known as the Golden Mean,  and was applied in music and architecture. A Fibonacci spiral is a logarithmic  spiral that tracks natural growth patterns.</p>
<p>&nbsp;</p>
<h3>Fill</h3>
<p>The price at which an order is executed.</p>
<p>&nbsp;</p>
<h3>Fill Or Kill</h3>
<p>An order which must be filled immediately and in its entirety. Failing this,  the order will be canceled.</p>
<p>&nbsp;</p>
<h3>Floor</h3>
<p>1) The main trading area of an exchange. 2) A supply contract between a buyer  and seller of a commodity, whereby the seller is assured that he will receive at  least some minimum price. This type of contract is analogous to a put  option.</p>
<p>&nbsp;</p>
<h3>Floor Broker</h3>
<p>An exchange member who executes orders to buy or sell futures and options in  the trading ring on the floor of a commodities exchange.</p>
<p>&nbsp;</p>
<h3>Floor Trader or Local</h3>
<p>An exchange member who executes orders to buy or sell futures and options for  his own account.</p>
<p>&nbsp;</p>
<h3>Force Majeure</h3>
<p>A standard clause which indemnifies either or both parties to a transaction  whenever events which the Exchange declares to be reasonably beyond the control  of either party occur to prevent fulfillment of the terms of the contract.</p>
<p>&nbsp;</p>
<h3>Forward Contract</h3>
<p>A supply contract between a buyer and seller, whereby the buyer is obligated  to take delivery, and the seller is obligated to provide delivery, of a fixed  amount of a commodity at a predetermined price on a specified future date.  Payment in full is due at the time of, or following, delivery. This differs from  a futures contract, where settlement is made daily, resulting in partial  payments over the life of the contract.</p>
<p>&nbsp;</p>
<h3>Free On Board (FOB)</h3>
<p>A transaction in which the seller provides a commodity at an agreed unit  price, at a specified loading point, within a specified period; it is the  responsibility of the buyer to arrange for transportation and insurance.</p>
<p>&nbsp;</p>
<h3>Fundamental Analysis</h3>
<p>The study of pertinent supply and demand factors which influence the specific  price behavior of commodities. See also &quot;technical analysis&quot;.</p>
<p>&nbsp;</p>
<h3>Futures Contract</h3>
<p>A supply contract between a buyer and a seller, whereby the buyer is  obligated to take delivery, and the seller is obligated to provide delivery, of  a fixed amount of a commodity at a predetermined price at a specified location.  Futures contracts are traded exclusively on regulated exchanges, and are settled  daily, based on their current value in the marketplace.</p>
<p>&nbsp;</p>
<h3>Futures Commission Merchant</h3>
<p>An FCM is the only industry participant who receives, handles, and manages  customers'' funds, margin payments, and commission charges. He is also  responsible for confirmation of trade slips, customer statements, and  guarantees.</p>
<p>&nbsp;</p>
<h3>Futures Equivalent</h3>
<p>A term frequently used with reference to speculative position limits for  options on futures contracts. The futures equivalent of an option''s position is  the number of options multiplied by the previous day''s risk factor, or delta,  for the option series. For example, 10 &quot;deep out of the money&quot; options with a  risk factor of 0.20 would be considered two futures equivalent contracts. The  delta, or risk factor&quot; used for this purpose is the same as that used in delta  based margining and risk analysis systems.</p>
<p>&nbsp;</p>
<h6><a name="letter_g" id="letter_g"></a>G</h6>
<h3>Gamma</h3>
<p>The sensitivity of an option''s delta to changes in the price of the  underlying futures contract.</p>
<p>&nbsp;</p>
<h3>Gann Square</h3>
<p>The Gann Square is a mathematical system for finding support and resistance  based upon a commodity or stock''s extreme low or high price for a given period.  Attainment of a particular price level in a square tells you the next probable  price peak or valley of future movement. The probable price levels tend to be  more reliable if they are extrapolated from Gann Square values along one of the  major axes of the Gann Square. The Gann Square is generated from a central  value, normally an all-time, or cyclical, high or low. If a low is used, the  numbers are incremented by a constant amount to generate the Gann Square. If a  high is used, the numbers are decremented during the square generation.</p>
<p>&nbsp;</p>
<h6><a name="letter_h" id="letter_h"></a>H</h6>
<h3>Hedge</h3>
<p>The initiation of a position in a futures, or options, market that is  intended as a temporary substitute for the sale or purchase of the actual  commodity. The sale of futures contracts in anticipation of future sales of cash  commodities as a protection against possible price declines, or the purchase of  futures contracts, in anticipation of future purchases of cash commodities, as a  protection against the possible price increases.</p>
<p>&nbsp;</p>
<h3>Haurlan Index</h3>
<p>This indicator is calculated daily from the plurality of NYSE advances over  declines. There are three components of the Haurlan index: Short Term, Long  Term, and Intermediate Term.</p>
<p>1) Short Term. A 3 day, exponential, moving average is taken of the net NYSE  advances over declines, measuring the short term condition of the market. When  this index moves above +100, a market short term buy signal is generated. The  signal is in effect until the market drops below -150 at which time a sell  signal is generated. The sell signal remains in effect until the index again  moves above +100.</p>
<p>2) Intermediate Term. Same as above, but with a 20 day, exponential, moving  average. This index is considered the most important of the three. Market buys  and sells are determined in this index by the crossing of trend lines or  support/resistance levels, depending on the particular market in question. For  example, when the market is basing out in preparation for an uptrend, a  resistance level may be set up. Once its value is determined, buy and sell  signals could be generated for that market.</p>
<p>3) Long Term. Same as above, except with a 200 day, exponential, moving  average. Useful for determining trends, but not for signals.</p>
<p>&nbsp;</p>
<h3>Hedger</h3>
<p>A trader who enters the market with the specific intent of protecting an  existing, or anticipated, physical market exposure from unexpected or adverse  price fluctuations.</p>
<p>&nbsp;</p>
<h3>Hedge Ratio</h3>
<p>1) Ratio of the value of futures contracts purchased or sold to the value of  the cash commodity being hedged, a computation necessary to minimize basis risk.  2) The ratio, determined by an option''s delta, of futures to options required to  establish a riskless position. For example, if a $1/barrel change in the  underlying futures price leads to a $O.25/barrel change in the options premium,  the hedge ratio is four (four options for each futures contract).</p>
<p>&nbsp;</p>
<h3>Herrick Payoff Index</h3>
<p>This is a commodity trading tool, useful for the early spotting of changes in  price trend direction. The Payoff Index is best used to distinguish trends that  are destined to continue from those that will most likely be short-lived. The  Payoff Index is a commodity trading tool that is useful in the early  identification of changes in the direction of price trends. The Payoff Index  frequently helps distinguish between a rally in a trend that is destined to  continue, and a significant trend change that will provide a worthwhile trading  opportunity. The Payoff Index tends to give coincident signals within a day or  two before a significant change in price trend. This advance action is  accomplished through use of trading volume and contract open interest to modify  the price action. Analysts have observed that volume trends often change before  a price-trend change. There are also generally accepted relationships between  the price trend and the trend of open interest.</p>
<p>&nbsp;</p>
<h3>Historical Volatility</h3>
<p>The annualized standard deviation of percent changes in futures prices over a  specific period. It is an indication of past volatility in the marketplace.</p>
<p>&nbsp;</p>
<h3>Horizontal Spread</h3>
<p>Calendar, or time, spread.</p>
<p>&nbsp;</p>
<h6><a name="letter_i" id="letter_i"></a>I</h6>
<h3>Immediate or Cancel</h3>
<p>An order which must be filled immediately or be canceled. IOC orders need not  be filled in their entirety.</p>
<p>&nbsp;</p>
<h3>Implied Volatility</h3>
<p>A measurement of the market''s expected price range of the underlying  commodity futures, based on the market traded option premiums.</p>
<p>&nbsp;</p>
<h3>In The Money</h3>
<p>An option that can be exercised and immediately closed out against the  underlying market for a cash credit. The option is in the money if the  underlying futures price is above a call option''s strike price, or below a put  option''s strike price.</p>
<p>&nbsp;</p>
<h3>Independent</h3>
<p>Term generally applies to a non integrated oil or natural gas company,  usually active in only one or two sectors of the industry. An independent  marketer buys petroleum products from major, or independent, refiners and  resells them under his own brand name or buys natural gas from producers, and  resells it. There are also independents which are active exclusively either in  oil or gas production or refining.</p>
<p>&nbsp;</p>
<h3>Intrinsic Value</h3>
<p>The amount by which an option is &quot;in the money&quot;. An option which is not in  the money has no intrinsic value. For calls, intrinsic value equals the  difference between the underlying futures price and the option''s strike price.  For puts, intrinsic value equals the option''s strike price minus the underlying  futures price Intrinsic value is never less than zero.</p>
<p>&nbsp;</p>
<h3>Introducing Broker</h3>
<p>A firm engaged in soliciting, or in accepting orders for the purchase or sale  of any commodity for future delivery.</p>
<p>&nbsp;</p>
<h3>Inverted Market</h3>
<p>A futures market is said to be inverted when distant contract months are  selling at a discount compared to nearby contract months; also known as  &quot;backwardation&quot;.</p>
<p>&nbsp;</p>
<h3>Invisible Supply</h3>
<p>Uncounted stocks of a commodity, in the hands of wholesalers, manufacturers  and producers, which cannot be identified accurately; stocks outside commercial  channels, but theoretically available to the market.</p>
<p>&nbsp;</p>
<h6><a name="letter_k" id="letter_k"></a>K</h6>
<h3>Kagi Chart</h3>
<p>Like Candlestick and Renko charts, Kagi charts come from Japan, and were made  popular in the USA by Steve Nison. Kagi charts display a series of connecting  vertical lines where the thickness and direction of the lines are dependent on  the price action. If closing prices continue to move in the direction of the  prior vertical Kagi line, then that line is extended. However, if the closing  price reverses by a pre-determined &quot;reversal&quot; amount, a new Kagi line is drawn  in the next column in the opposite direction. An interesting aspect of the Kagi  chart is that when closing prices penetrate the prior column''s high or low, the  thickness of the Kagi line changes.</p>
<p>&nbsp;</p>
<h6><a name="letter_l" id="letter_l"></a>L</h6>
<h3>Last Notice Day</h3>
<p>The final day on which notices of intent to deliver on futures contracts may  be issued.</p>
<p>&nbsp;</p>
<h3>Last Trading Day (LTD)</h3>
<p>The final trading day for a particular delivery month futures contract or  option contract. Any futures contracts left open following this session must be  settled by delivery.</p>
<p>&nbsp;</p>
<h3>Limit</h3>
<p>The maximum daily allowable amount a futures price may advance, or decline,  in any one day''s trading session. Limits are also placed on the number of  positions a participant may hold in the market.</p>
<p>&nbsp;</p>
<h3>Limit Order</h3>
<p>A contingent order for an options or futures trade specifying a certain  maximum (or minimum) price, beyond which the order (buy or sell) is not to be  executed.</p>
<p>&nbsp;</p>
<h3>Liquidation</h3>
<p>The closing out of futures and options positions.</p>
<p>&nbsp;</p>
<h3>Liquidity</h3>
<p>A market is said to be &quot;liquid&quot; when it has a high level of trading activity  and open interest.</p>
<p>&nbsp;</p>
<h3>Liquid Market</h3>
<p>A market characterized by the ability to buy and sell with relative ease.</p>
<p>&nbsp;</p>
<h3>Local</h3>
<p>An exchange member who executes orders to buy or sell futures and options for  his own account.</p>
<p>&nbsp;</p>
<h3>Locked Market</h3>
<p>A market where prices have reached their daily trading limit and trading can  only be conducted at that price or prices which are closer to the previous  settlement price.</p>
<p>&nbsp;</p>
<h3>Long</h3>
<p>1) The market position of a futures contract buyer whose purchase obligates  him to accept delivery, unless he liquidates his contract with an offsetting  sale. 2) One who has bought a futures contract to establish a market position.  3) In the options market, position of the buyer of a call option contract.  Opposite of short.</p>
<p>&nbsp;</p>
<h3>Long Hedge</h3>
<p>Purchase of futures against the future &quot;market price&quot; purchase or &quot;fixed  price&quot; forward sale of a cash commodity, to protect against price increases.</p>
<p>&nbsp;</p>
<h3>Long The Basis</h3>
<p>A person or firm that has bought the spot commodity and hedged with a sale of  futures is said to be long the basis.</p>
<p>&nbsp;</p>
<h3>Lot</h3>
<p>Any definite quantity of a futures commodity of uniform grade; the standard  unit of trading.</p>
<p>&nbsp;</p>
<h6><a name="letter_m" id="letter_m"></a>M</h6>
<h3>MACD (Moving Average Convergence/Divergence)</h3>
<p>The MACD is used to determine overbought or oversold conditions in the  market. Created for stocks and stock indices, MACD can be used for commodities  as well. The MACD line is the difference between the long and short exponential  moving averages of the chosen item. The signal line is an exponential moving  average of the MACD line. Signals are generated by the relationship of the two  lines. As with RSI and Stochastics, divergences between the MACD and prices may  indicate an upcoming trend reversal.</p>
<p>&nbsp;</p>
<h3>McClellan Oscillator</h3>
<p>This index is based on New York Stock Exchange net advances over declines. It  provides a measure of such conditions as overbought/oversold and market  direction on a short-to- intermediate term basis. The McClellan Oscillator  measures a bear market selling climax when it registers a very negative reading,  in the vicinity of -150. A sharp buying pulse in the market would be indicated  by a very positive reading, well above 100.</p>
<p>&nbsp;</p>
<h3>Margin</h3>
<p>The amount of money or collateral deposited by a customer with his broker, or  deposited by a broker with a Clearing Member, or by a Clearing Member with the  Clearinghouse, for the purpose of insuring the broker or Clearinghouse against  adverse price movement on open futures contracts. The margin is not partial  payment on a purchase. 1) Initial margin is the minimum deposit per contract  required by the broker when a futures position is opened. 2) Maintenance margin  is a sum which must be maintained on deposit at all times. If the equity in a  customers'' account drops to, or under, that level because of an adverse price  movement, the broker must issue a &quot;margin call: to restore the customers''  equity. Margins are set by the Exchange based on its analysis of price risk  volatility in the market at that time. See &quot;variation margin&quot;.</p>
<p>&nbsp;</p>
<h3>Margin Call</h3>
<p>A demand for additional margin funds when futures prices move adverse to a  trader''s position, or if margin requirements are increased. Buyers of options  are not subject to margin calls.</p>
<p>&nbsp;</p>
<h3>Marked To Market</h3>
<p>Daily cash flow system used by U.S. futures exchanges to maintain a minimum  level of margin equity for a given futures or options contract position by  calculating the gain or loss in each contract position resulting from changes in  the price of the futures or options contracts at the end of each trading  day.</p>
<p>&nbsp;</p>
<h3>Market Correction</h3>
<p>In technical analysis, a small reversal in prices following a significant  trending period.</p>
<p>&nbsp;</p>
<h3>Market If Touched Order</h3>
<p>An order that becomes a market order when a particular price is reached. A  sell MIT is placed above the market; a buy MIT is placed below the market.</p>
<p>&nbsp;</p>
<h3>Market Maker</h3>
<p>An independent trader or trading firm which is prepared to buy and sell  futures or options contracts in a designated market. Market makers provide a two  sided (bid and ask) market and greater liquidity.</p>
<p>&nbsp;</p>
<h3>Market On Close</h3>
<p>An order to buy or sell at the end of the trading session at a price within  the closing range of prices.</p>
<p>&nbsp;</p>
<h3>Market Order</h3>
<p>An order to be filled immediately, at the current market price.</p>
<p>&nbsp;</p>
<h3>Maximum Price Fluctuation</h3>
<p>A commodity exchange''s established maximum limits for fluctuations in futures  prices during any one trading session.</p>
<p>&nbsp;</p>
<h3>Minimum Price Fluctuation</h3>
<p>Minimum unit by which a futures price or an option premium can fluctuate per  trade, also known as &quot;tick size&quot;.</p>
<p>&nbsp;</p>
<h3>Momentum</h3>
<p>Momentum provides an analysis of changes in prices (as opposed to changes in  price levels). Changes in the rate of ascent or descent are plotted. The  Momentum line is graphed positive or negative to a straight line representing  time. The position of the time line is determined by the price at the beginning  of the Momentum period. Traders use this analysis to determine overbought and  oversold conditions. When a maximum positive point is reached, the market is  said to be overbought, and a downward reaction is imminent. When a maximum  negative point is reached, the market is said to be oversold, and an upward  reaction is indicated.</p>
<p>&nbsp;</p>
<h3>Moving Averages</h3>
<p>The moving average is probably the best known, and most versatile, indicator  in the analysts tool chest. It can be used with the price of your choice (highs,  closes, or whatever) and can also be applied to other indicators, helping to  smooth out volatility.</p>
<p>As the name implies, the Moving Average is the average of a given amount of  data. For example, a 14 day average of closing prices is calculated by adding  the last 14 closes and dividing by 14. The result is noted on a chart. The next  day the same calculations are performed with the new result being connected  (using a solid or dotted line) to yesterday''s and so forth. Variations of the  basic Moving Average, are the Weighted, and Exponential moving averages.</p>
<p>&nbsp;</p>
<h6><a name="letter_n" id="letter_n"></a>N</h6>
<h3>Naked</h3>
<p>A long or short market position taken without having an offsetting short or  long position. A trader who executes one side of a spread is said to be naked  until he executes the other side.</p>
<p>&nbsp;</p>
<h3>National Futures Association</h3>
<p>Futures industry trade association which promulgates rules of conduct, and  mediates disputes between customers and brokers.</p>
<p>&nbsp;</p>
<h3>Net Position</h3>
<p>The difference between an individual or firm''s open long contracts and open  short contracts in any one commodity.</p>
<p>&nbsp;</p>
<h3>Neutral Spread</h3>
<p>Another name for a &quot;delta neutral&quot; spread. Spreads may also be lot neutral,  where the total number of long contracts and the total number of short contracts  of the same type are approximately equal.</p>
<p>&nbsp;</p>
<h3>Nominal Price</h3>
<p>The declared price for a futures month, sometimes used in place of a closing  price when no recent trading has taken place in that particular delivery month;  usually an average of the bid and asked prices.</p>
<p>&nbsp;</p>
<h3>Norton High/Low Indicator</h3>
<p>The Norton High/Low Indicator uses results from the Demand Index and the  Stochastic study, and is designed to pick tops and bottoms on long term price  charts. Two lines are generated: the NLP line and the NHP line. The system also  uses level lines at -2 and -3. The NLP line crossing -3 to the downside is the  signal that a new bottom will occur in 4-6 periods, using daily, weekly, or  monthly data. Similarly, the NHP line crossing -3 to the downside indicates a  new top in the same time frame.</p>
<p>The indicator tends to be more reliable using longer term data (weekly or  monthly). When either indicator drops below the - 3 level, a reversal may be  imminent. The reversal (or hook) is the signal to enter the market. For greater  reliability, use the Norton High/Low Indicator together with other studies for  confirmation.</p>
<p>&nbsp;</p>
<h3>Notis %V</h3>
<p>A way to measure volatility is to measure the daily ranges between the high  and the low. Volatility is high when the daily range is large, and low when the  daily range is small. The Notis %V study contains two separate indicators. It  divides market volatility into upward and downward components (UVLT and DVLT).  Both are plotted separately in the same window, and can be plotted as an  oscillator.</p>
<p>The upward component is also compared to the total volatility (UVLT + DVLT),  and is expressed as a percentage; thus the name, %V. Volatility can be a key to  options trading. A good sense of market volatility can help you avoid those  frustrating times when the market moves your way but your option still loses  value.</p>
<p>&nbsp;</p>
<h6><a name="letter_o" id="letter_o"></a>O</h6>
<h3>Offer</h3>
<p>A motion to sell a futures or option contract at a specified price. Opposite  of &quot;bid&quot;.</p>
<p>&nbsp;</p>
<h3>Offset</h3>
<p>A transaction which liquidates or closes out an open contract position. In  spread positions, one side offsets the other without liquidating the entire  position. Risk is reduced when one side offsets the other.</p>
<p>&nbsp;</p>
<h3>Omnibus Account</h3>
<p>An account, carried by one futures commission merchant with another in which  the transactions of two or more persons are combined rather than designated  separately, and the identity of the individual accounts is not disclosed.</p>
<p>&nbsp;</p>
<h3>On Balance Volume (OBV)</h3>
<p>OBV is one of the most popular volume indicators, and was developed by Joseph  Granville. Constructing an OBV line is very simple: The total volume for each  day is assigned a positive or negative value, depending on whether prices closed  higher or lower that day. A higher close results in the volume for that day to  get a positive value, while a lower close results in a negative value. A running  total is kept by adding or subtracting each day''s volume based on the direction  of the close. The direction of the OBV line is the thing to watch, not the  actual volume numbers. Formula: OBV=SUM(C-CP)/(ABS(C-CP)xV); C=Today''s Close  ;CP=Yesterday''s Close; V=Today''s Volume.</p>
<p>&nbsp;</p>
<h3>One Cancels The Other</h3>
<p>Two orders submitted simultaneously, either of which may be filled. If one  order is filled, the other is considered to be canceled.</p>
<p>&nbsp;</p>
<h3>Open Interest or Commitment</h3>
<p>The number of open or outstanding contracts for which an individual or entity  is obligated to the Exchange because that individual or entity has not yet made  an offsetting sale or purchase, an actual contract delivery, or, in the case of  options, exercised the option.</p>
<p>&nbsp;</p>
<h3>Open Order</h3>
<p>A resting order that is good until canceled.</p>
<p>&nbsp;</p>
<h3>Open Outcry</h3>
<p>A method of public auction for making verbal bids and offers for contracts in  the trading pits or rings of commodity exchanges.</p>
<p>&nbsp;</p>
<h3>Opening Price</h3>
<p>The price for a given futures commodity that is generated by trading through  open outcry during the opening range of trading on a commodity exchange.</p>
<p>&nbsp;</p>
<h3>Option</h3>
<p>A contract which gives the holder the right, but not the obligation, to  purchase or to sell the underlying futures contract at a specified price within  a specified period of time in exchange for a one time premium payment. The  contract also obligates the writer, who receives the premium, to meet these  obligations.</p>
<p>&nbsp;</p>
<h3>Original Margin</h3>
<p>The initial deposit of funds, as good faith moneys, at the outset of trading  a futures contract, in order to guarantee fulfillment of its obligations. Also  known as &quot;initial margin&quot;.</p>
<p>&nbsp;</p>
<h3>Out Of The Money</h3>
<p>An option which has no intrinsic value. For calls, an option whose exercise  price is above the market price of the underlying future. For puts, an option  whose exercise price is below the futures price.</p>
<p>&nbsp;</p>
<h3>Overbought</h3>
<p>A technical opinion that the market price has risen too steeply and too fast  in relation to underlying fundamental factors.</p>
<p>&nbsp;</p>
<h3>Oversold</h3>
<p>A technical opinion that the market price has fallen too quickly and too fast  in relation to underlying fundamental factors.</p>
<p>&nbsp;</p>
<h6><a name="letter_p" id="letter_p"></a>P</h6>
<h3>Parabolic (SAR)</h3>
<p>The Parabolic is a Time/Price system for the automatic setting of stops. The  stop is both a function of price and of time. The system allows a few days for  market reaction after a trade is initiated after which stops begin to move in  more rapid incremental daily amounts in the direction the trade was initiated.  For example, when a long position is taken the stop will move up regardless of  price direction. However, the distance that the stop moves up is determined by  the favorable distance the price has moved. If the price fails to move favorably  within a certain period of time, the stop reverses the position, and begins a  new time period.</p>
<p>&nbsp;</p>
<h3>Price Patterns</h3>
<p>Price Patterns are formations which appear on commodity and stock charts  which have shown to have a certain degree of predictive value. Some of the most  common patterns include: Head &amp; Shoulders (bearish), Inverse Head &amp;  Shoulders (bullish), Double Top (bearish), Double Bottom (bullish), and  Triangles, Flags, and Pennants (can be bullish or bearish depending on the  prevailing trend).</p>
<p>&nbsp;</p>
<h6><a name="letter_r" id="letter_r"></a>R</h6>
<h3>Random Walk Index</h3>
<p>This indicator, is defined as the ratio of an actual price move, to the  expected &quot;random walk&quot;. If the move is greater than a &quot;random walk&quot; and thus a  trend is present, its index will be larger that 1.0</p>
<p>&nbsp;</p>
<h3>Rate of Change</h3>
<p>Rate of Change is used to monitor momentum by making direct comparisons  between current and past prices on a continual basis. The results can be used to  determine the strength of price trends. Note: This study is the same as the  Momentum, except that Momentum uses subtraction in its calculations, while Rate  of Change uses division. The resulting lines of these two studies, operated over  the same data, will look exactly the same - only the scale values will  differ.</p>
<p>&nbsp;</p>
<h3>RSI - Relative Strength Index</h3>
<p>This indicator was developed by Welles Wilder Jr. Relative Strength is often  used to identify price tops and bottoms by keying on specific levels (usually  &quot;30&quot; and &quot;70&quot;) on the RSI chart which is scaled from 0-100. The study is also  useful for detecting the following:</p>
<p>1. Movement which might not be as readily apparent on the bar chart</p>
<p>2. Failure swings above 70 or below 30, which can warn of coming  reversals.</p>
<p>3. Support and resistance levels.</p>
<p>4. Divergence between the RSI, and price which is often a useful reversal  indicator.</p>
<p>The Relative Strength Index requires a certain amount of lead-up time in  order to operate successfully. The formula for calculating the RSI is:  rsi=100-(100/1-rs); rs= average of x day''s up closes divided by average of x  day''s down closes.</p>
<p>&nbsp;</p>
<h3>Renko Chart</h3>
<p>The Renko charting method probably got its name from &quot;renga&quot;, which is the  Japanese word for bricks. Introduced by Steve Nison, a well-known authority on  the Candlestick charting method, Renko charts are similar to Three Line Break  charts, except that, in a Renko chart, a line is drawn in the direction of the  prior move only if a fixed amount (i.e., the box size) has been exceeded. The  bricks are always equal in size.</p>
<p>&nbsp;</p>
<p>Example: With a five unit Renko chart, a 20 point rally is displayed as four  equally sized, five unit high, Renko bricks.</p>
<p>&nbsp;</p>
<h6><a name="letter_s" id="letter_s"></a>S</h6>
<h3>Short</h3>
<p>1) The market position of a futures contract seller whose sale obligates him  to deliver the commodity unless he liquidates his contract by an offsetting  purchase.</p>
<p>2) A trader whose net position in the futures market shows an excess of open  sales over open purchases.</p>
<p>3) The holder of a short position.</p>
<p>4) In the options market, the position of the seller of a call option. The  short in the options market is obliged to take a futures position if he is  assigned for exercise. Opposite of &quot;long&quot;.</p>
<p>&nbsp;</p>
<h3>Short Selling</h3>
<p>Selling a contract with the idea of delivering or of buying to offset it at a  later date.</p>
<p>&nbsp;</p>
<h3>Short The Basis</h3>
<p>The purchase of futures as a hedge against a commitment to sell in the cash  or spot markets. See &quot;hedging&quot;.</p>
<p>&nbsp;</p>
<h3>Speculative Position Limit</h3>
<p>The maximum position, either net long or net short, in one commodity futures  or option, or in all futures or options of one commodity combined, which may be  held or controlled by an entity without a hedge exemption as prescribed by an  exchange or the CFTC.</p>
<p>&nbsp;</p>
<h3>Speculator</h3>
<p>A trader who hopes to profit from the specific directional price move of a  futures or options contract, or commodity.</p>
<p>&nbsp;</p>
<h3>Spot</h3>
<p>Term which describes a one time open market case transaction, where a  commodity is purchased &quot;on the spot&quot; at current market rates. Spot transactions  are in contrast to term sales, which specify a steady supply of product over a  period of time.</p>
<p>&nbsp;</p>
<h3>Spot Month</h3>
<p>The futures contract closest to maturity. The nearby delivery month.</p>
<p>&nbsp;</p>
<h3>Spread (Futures)</h3>
<p>The simultaneous purchase of futures contracts and sale of futures contracts  for a different months, different commodities, or different grades of the same  commodity.</p>
<p>&nbsp;</p>
<h3>Spread (Options)</h3>
<p>The purchase and sale of options which vary in terms of type (call or put),  strike prices, expiration dates, or both. May also refer to an options contract  purchase (sale) and the simultaneous sale (purchase) of a futures contract for  the same underlying commodity.</p>
<p>&nbsp;</p>
<h3>Stoller STARC Bands</h3>
<p>STARC bands create a channel surrounding a simple moving average. The width  of the created channel varies with a period of the average range; thus the name  (''ST'' for Stoller, plus ''ARC'' for Average Range Channel). STARC Bands, in a  fashion similar to Bollinger Bands, will tighten in steady markets and loosen in  volatile markets. However, rather than being based on closes, the STARC Bands  are based on the average true range, thus giving a more in-depth picture of the  market volatility. While the penetration of a Bollinger Band may indicate a  continuation of a price move, the STARC Bands define upper and lower limits for  normal price action.</p>
<p>&nbsp;</p>
<h3>Swing Index</h3>
<p>The Swing Index (primarily for use with commodity trading) attempts to  determine real market direction and changes in direction, by making use of the  most significant comparisons between the results (Open-High-Low-Close) of the  current and previous day''s trading.</p>
<p>&nbsp;</p>
<h3>Stop Limit Order</h3>
<p>An order that goes into force as soon as there is a trade at the specified  stop price. The order, however, can only be filled at the limit price or better.  The stop price and the limit price can be the same or different. The stop price  is the price level specified in the order.</p>
<p>&nbsp;</p>
<h3>Stop Loss</h3>
<p>A resting order designed to close out a losing position when the price  reaches a level specified in the order. It becomes an &quot;at the market&quot; order when  the &quot;stop&quot; price is reached. Individuals also use stops to enter the market when  the prices reach a specified level.</p>
<p>&nbsp;</p>
<h3>Straddle (Futures)</h3>
<p>Also known as a &quot;spread&quot;. The purchase of one futures month against the sale  of another futures month of the same commodity. A straddle trade is based on a  price relationship between the two months.</p>
<p>&nbsp;</p>
<h3>Straddle (Options)</h3>
<p>The purchase or sale of both a put and a call having the same strike price  and expiration date. The buyer of a straddle benefits from increased volatility  and the seller benefits from decreased volatility.</p>
<p>&nbsp;</p>
<h3>Strangle</h3>
<p>An options position consisting of the purchase or sale of put and call  options having the same expiration date but different strike prices.</p>
<p>&nbsp;</p>
<h3>Strike Price</h3>
<p>The price at which the underlying futures contract is bought or sold in the  event an option is exercised. Also called an exercise price.</p>
<p>&nbsp;</p>
<h3>Support</h3>
<p>In technical analysis, a price area where new buying is likely to come in and  stem any decline.</p>
<p>&nbsp;</p>
<h3>Synthetic Futures</h3>
<p>A position created by combining call and put options. A synthetic long  futures position is created by combining a long call option, and a short put  option for the same expiration date, and the same strike price. A synthetic  short futures position is created by combining a long put and a short call, with  the same expiration date, and the same strike price.</p>
<p>&nbsp;</p>
<h6><a name="letter_t" id="letter_t"></a>T</h6>
<h3>Technical Analysis</h3>
<p>An approach to forecasting commodity prices which examines patterns of price  change, rates of change and changes in trading volume and open interest, without  regard to underlying fundamental market conditions.</p>
<p>&nbsp;</p>
<h3>Theoretical Value</h3>
<p>An option''s value generated by a mathematical model given certain prior  assumptions about the term of the option, the characteristics of the underlying  futures contract, and prevailing interest rates.</p>
<p>&nbsp;</p>
<h3>Theta</h3>
<p>The sensitivity of an option''s value to a change in the amount of time to  expiration.</p>
<p>&nbsp;</p>
<h3>Tick</h3>
<p>A minimum change in price, up or down.</p>
<p>&nbsp;</p>
<h3>Time Cycles</h3>
<p>Some analysts believe that &quot;price analysis&quot; alone offers only half the  information needed for successful trading. The other part is time, more exactly  time cycles, which give actual insight into understanding the movements of  markets. Common cycles are the seasonal cycles apparent in many commodity  markets, but cycles can be detected on intra-day charts as well.</p>
<p>&nbsp;</p>
<h3>Time Spread</h3>
<p>The selling of a nearby option and buying of a more deferred option with the  same strike price.</p>
<p>&nbsp;</p>
<h3>Time Value</h3>
<p>Part of the option premium which reflects the excess over the intrinsic  value, or the entire premium if there is no intrinsic value. At given price  levels, the option''s time value will decline until expiration. It is this  decrease in time value that makes options a &quot;wasting asset&quot;.</p>
<p>&nbsp;</p>
<h3>Trade House</h3>
<p>A firm which deals in the physical commodity.</p>
<p>&nbsp;</p>
<h3>Trading</h3>
<p>Buying and selling.</p>
<p>&nbsp;</p>
<h3>Trading Index</h3>
<p>This index (also known as the &quot;Arms&quot; index, or &quot;TRIN&quot;) measures the relative  strength of volume associated with advancing stocks against the strength of  volume associated with declining stocks. When used as a short term indicator,  readings below 1.0 are considered bullish, while readings above 1.0 are  considered bearish. An extreme bearish reading would be 1.5 or higher; an  extreme bullish reading would be .5 or lower. Readings of 2.0 or .3 would be  considered &quot;climactic&quot;.</p>
<p>For the intermediate term, a bearish sign is an index over 1.0, bullish is  under 1.0. For the long term, the Trading Index can be viewed as an overbought /  oversold indicator.</p>
<p>&nbsp;</p>
<h3>Trading Volume</h3>
<p>The number of contracts that change hands during a specified period of  time.</p>
<p>&nbsp;</p>
<h3>Trend</h3>
<p>The general direction of price movement.</p>
<p>&nbsp;</p>
<h3>Trix</h3>
<p>Single linear exponential smoothing was developed in the early 1950s as a  means of prediction along a straight line whose slope was based on previous  data. The Triple Exponential Smoothing Oscillator (Trix) has now been developed  to act on trends of a higher order than linear. Trix uses a one-day momentum of  a triple exponential smoothed price series to produce an indicator which is  cycle dependent.</p>
<p>Changes in the Trix direction are less prone to whipsaws than standard  cycle-momentum indicators. The period is chosen to filter out any insignificant  cycles shorter than the period. Fourier Analysis, or visual observation, may be  used to find the proper cycle length of a given market. Raising the number of  days will remove more small cycles, and smooth out the oscillator, but at the  loss of sensitivity. The more smoothing that is applied to the data, the more of  a lag in the oscillator, but not nearly the lag of a normal moving average.</p>
<p>&nbsp;</p>
<h3>Type Of Option</h3>
<p>Either puts or calls.</p>
<p>&nbsp;</p>
<h6><a name="letter_u" id="letter_u"></a>U</h6>
<h3>Underlying</h3>
<p>The stock, commodity, futures contract, or cash index against which the  futures or options contract is valued.</p>
<p>&nbsp;</p>
<h6><a name="letter_v" id="letter_v"></a>V</h6>
<h3>Variation Margin</h3>
<p>Payment made on a daily or intraday basis by a Clearing Member to the  Clearinghouse, to cover losses created by adverse price movement in positions  carried by the Clearing Member, calculated separately for customer and  proprietary positions.</p>
<p>&nbsp;</p>
<h3>Vega</h3>
<p>The sensitivity of an option''s value to a change in volatility.</p>
<p>&nbsp;</p>
<h3>Volatility</h3>
<p>The market''s price range and movement within that range. The direction of the  price move, whether up or down, is not relevant. &quot;Historic volatility&quot; indicates  how much prices have changed in the past, and is derived by using daily  settlement prices for futures. &quot;Implied volatility&quot; measures how much the market  thinks prices will change in the future, and is obtained from daily settlement  prices for options.</p>
<p>&nbsp;</p>
<h3>Volume Accumulation</h3>
<p>This volume indicator addresses some of On Balance Volume''s shortcomings, and  was developed by Marc Chaikin. Where OBV assigns all of a day''s volume a  positive or negative value, Volume Accumulation counts only a percentage of the  volume as positive or negative, depending on where the close is in relation to  the average price of the day. The only time the entire day''s volume is assigned  a positive value is when the close is the same as the day''s high. The opposite  applies for a close at the day''s low.</p>
<p>&nbsp;</p>
<h3>Volatility</h3>
<p>This analysis is based on the idea that stocks bottom from &quot;panic&quot; selling,  after which a rebound is imminent. One way of measuring this phenomenon is to  observe a widening range between high and low prices each day. In general, a  progressively wider range, observed over a relatively short period of time, can  indicate that a bottom is near. Price tops are generally reached at a more  leisurely pace, and can be characterized by a narrowing of the price range.</p>
<p>This measure of the Trading Range takes place over a specified period in  order to determine whether or not an issue is being &quot;dumped&quot; and is approaching  a bottom. A pre-requisite to a valid bottom is an increase in the volatility  line above the reference line. In a similar manner, an indication of an imminent  top would be a decrease in the volatility line below the reference line. As long  as volatility is rising, in all probability, a stock will not approach a top. It  should be noted that this study should be used in conjunction with trend  following analyses and momentum oscillators for confirmation and accuracy.</p>
<p>&nbsp;</p>
<h6><a name="letter_w" id="letter_w"></a>W</h6>
<h3>Writer</h3>
<p>The seller of an option. Also known as the grantor of the option.</p>
<p>&nbsp;</p>
<p align="center" style="background-image: none;"><a href="#top">Top of  page</a></p>', CAST(0x00009AE2011D1310 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (16, N'*RightBottomPage', NULL, NULL, NULL, N'<p class="blueUnderlinedTitle">The Globex Advantage</p>
<ul>
    <li style="font-weight: bold; margin-bottom: 5px">100% Mechanical Systems eliminate the human emotion involved in trading.</li>
    <li style="font-weight: bold; margin-bottom: 5px">Greed, Fear and Emotion stand in the way of profits.</li>
    <li style="font-weight: bold; margin-bottom: 5px">Cost - efficient, eliminates high brokerage fees.</li>
    <li style="font-weight: bold; margin-bottom: 5px">Diversify across all markets.</li>
</ul>
<p class="MsoNormal" style="text-align: left"><span style="font-size: medium"><span><b>Globex Trading Solutions, </b></span></span><span style="font-size: large"><span><b><br />
</b><span style="font-size: medium">The Only Solution For Your <br />
Trading Goals.</span><span><b><br />
</b></span></span></span></p>', CAST(0x00009AEE00B8F5A9 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (25, N'Chapter 5', NULL, NULL, NULL, N'<p>Some content some more content</p>
<p>&nbsp;</p>
<p>this is not big enough</p>
<p>&nbsp;</p>
<p><span style="font-size: xx-large">this is</span></p>', CAST(0x00009AEF00C92A44 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (26, N'Education', NULL, NULL, NULL, N'<p>&nbsp;</p>
<p><span style="font-size: larger"><u><strong>A systematic approach to trading and investing</strong></u></span></p>
<p>With the advent of the PC and new software capabilities, system trading is now a viable option for the individual investor, especially those with a desire to take control of their investment program. This &ldquo;do-it-yourself&rdquo; segment of the investing public is growing, as evidenced by the dramatic trend toward electronic trading and publications such as FuturesTruth.</p>
<p>Profitable trading strategies start with a consistent approach to the market. Consistency is difficult for many investors because decisions about money can be very emotional. Diversification is essential, but many investors have difficulty diversifying a portfolio. Additionally, money management and/or allocation of funds in a portfolio are crucial in order to balance risk. These three key elements are the primary reason why so many traders are turning to systems.</p>
<p>&bull; <strong>What is a System</strong>:<br />
<br />
A system is a method of trading, using objective entry and exit criteria, based on parameters validated by historical testing on quantifiable data. A system can be as simple as entering a 10 point stop on every new position or as complex as using fractal analysis to signal trades. In common terms, a system is derived from technical analysis of current and past price action in an attempt to forecast price direction. Using a computer, these results can be tested through millions of permutations to generate objective trading signals. When a developer''s computerized trading signals are combined with sound money management principles, a &ldquo;trading system&rdquo; is created. Investors use these systems to trade the futures and/or securities markets to satisfy their individual desire to control and customize their investment program.</p>
<p>&bull; <strong>Why Should I Trade a System:</strong><br />
<br />
A computerized trading system is able to process an enormous amount of information and data in an extremely short period of time. It is then able to use that analysis to produce a trading signal that is void of influences other that what it has been programmed to utilize. The system doesn&rsquo;t care when&nbsp;Ben Bernanke is talking. The system doesn&rsquo;t panic when the S&amp;Ps are limit down. The system is unaware of your particular emotional state at any particular moment. Trading the futures and equity markets using an objective trading system <em><strong>helps improve performance</strong></em>. Trading systems provide discipline to overcome the fear and greed that paralyze traders and prevent them from making proper decisions by removing the pressure of making specific buy/sell decisions on a trade-by-trade basis. Each order placed is governed by a pre-determined set of rules that does not deviate based on anything other than market action. A system will also include specific money management parameters and the mechanical placement of these orders ensures those rules are being followed.</p>
<p>&nbsp;</p>
<p style="text-align: left"><strong>&bull; What is the BEST system?</strong><br />
<br />
Trading systems come in all shapes and sizes. Here at Globex, we trade all types of different systems, from day trading systems entering and exiting in a matter of minutes to trend following systems holding positions over months. Traders always come to me and ask, &ldquo;What is your best System&rdquo;. This is an impossible question to answer. Are you looking to risk $500,000 or only $5000? Are you comfortable holding positions overnight or would you rather be out of the market at the end of the day? Do you have nightmares about the unemployment number every month? Does Bernanke give you heartburn? These are all questions you need to answer before deciding on a trading system. There is no secret formula and no magic solution to system trading. It is the same formula as all of investing:</p>
<p style="text-align: center"><strong>The higher the risk, the higher the possible returns</strong></p>
<p><br />
There is no way around this axiom. System trading involves a set amount of risk and a set return.<br />
<br />
The main measurement of a system&rsquo;s risk is the drawdown. This is the maximum amount of money a trader would have lost if they started the system at its equity peak and stopped trading the system at its equity bottom. Because of the ability to &ldquo;back-test&rdquo; a system, traders have the opportunity to study all of the strategy aspects (such as the track record, frequency of trade, number of profitable trades versus losing traders and draw-downs) before actually trading. You should always focus on the drawdown first and find a system that revolves around those numbers. From there, you can look at the profits and decide if it is something that you are comfortable with. Emotional traders look at drawdown and hope they will not happen again. In reality, when you look at drawdown, you need to be able to handle at least that much. Some traders like to add about 30% to the previous historical drawdown before they stop trading that particular system. This way they have given the system a little breathing room, and can handle a new MAX drawdown if that occurs. If you study the back tested results carefully and base your decision to start trading a system using the drawdown and profit, you are hoping that history will repeat itself. If you want history to repeat, don&rsquo;t be surprised if and when the drawdown happens again. If you are anticipating a specific positive return, you should also expect the inverse as well.<br />
&nbsp;</p>
<p>&nbsp;</p>
<p><strong>&bull; Intervening in an attempt to outperform the system</strong><br />
<br />
One of the most common ways that traders negatively influence the performance of a trading system is by intervening and deviating from the signals. I can usually tell you the exact moment when a system will come out of or begin its drawdown. The exact minute a drawdown will end is the exact moment the trader tries to outperform the system by &ldquo;moving to the sidelines&rdquo;. Time and time again, when a client stops trading the system, the system magically pulls out of the drawdown. Likewise, when clients start calling up, adding contracts and leveraging up on a system that is on a winning streak, it usually starts its drawdown immediately thereafter. Whether this is a real life example of statistical &ldquo;reverting to the mean&rdquo; or just a case of Murphy&rsquo;s Law, I don&rsquo;t know. It is definitely a case of letting emotions enter into an arena where they do not belong. The end result is that when a trader interjects his own opinions and biases into the system in attempt to better the returns, they have almost always ended up underperforming the system.</p>
<p>&nbsp;A broker can assist you in placing the system orders in the market as an objective third party. Using a broker eliminates the temptation to deviate from the system. Brokers stare at their screens all day so traders do not have to follow the markets. This insures that proper orders are placed and maintained as the system directs.<br />
&nbsp;</p>
<p style="text-align: center"><b><span style="font-size: larger">Types of System Platforms: Black Box, Grey Box, White Box.</span></b></p>
<p><br />
The way that systems are categorized usually falls into one of three types. The term <strong>Black Box</strong> has been used in conjunction with trading systems primarily to indicate systems where the user has no knowledge of the process code or ability to manipulate the inputs. <strong>Grey Box</strong> usually refers to systems where the process coding in unknown, but the user has the ability to control specific scenarios, and can allow for optimization that will alter the outcome of the signals from one set of variables to another. A <strong>White box</strong> system&rsquo;s source code is open and the strategy revealed. All inputs and variables can be manipulated. The type of system purchased really depends on what the intended use is. If someone is already an accomplished programmer, and has the ability to understand the intricacies of the indicators and strategies, a white box<strong> </strong>may prove to be a valuable tool. The trader may be able to install some of his own methodology to enhance the program and improve performance. For most individuals however, this added flexibility might have some unintended and ultimately negative outcomes. Unless you are extremely knowledgeable in proper back-testing procedures and statistical analysis, what may happen is that you have taken what was initially a robust system, and by changing the inputs or data, produced a system that is over optimized and curve fit to the specific time period. The end result will be a system that, even though the hypothetical results may look impressive, once the theory is put into practice the system fails to perform as expected because of slight changes in market conditions. The important point is not so much the type of box that you are trading, it is that your are trading a system that has been developed and tested correctly, and that fits your individual trading style and risk, reward, and capitalization perimeters.<br />
&nbsp;</p>
<p><b>The Potential Benefits of System Trading:</b><br />
<br />
To help traders control and customize investment decisions, systems:<br />
1. Provide historical risk and return parameters.<br />
2. Control trading by eliminating fear, greed and indecision.<br />
3. Provide consistent and specific trading signals.<br />
4. Preserve capital by applying money management techniques.<br />
5. Customize a portfolio for specific needs with your risk-reward parameters and capitalization.</p>
<p><strong>The Potential Risk of System Trading:</strong><br />
<br />
There are some risks associated with systems.<br />
1. Systems may be slow to adapt to changing market conditions.<br />
2. Traders must maintain the discipline to execute every trading signal.<br />
3. Traders must allocate the time and infrastructure to monitor the system.<br />
4. Have the proper capitalization to withstand the potential drawdowns.<br />
5. Hypothetical past performance of any system is not necessarily indicative of futures results.</p>
<p>In conclusion, It is important to find the system that is best for you by taking into consideration your specific capitalization, specific trading properties of the system, and the emotional impact of the trading methodology.</p>
<p><b>Making Sense out of Trading System Results:</b></p>
<p><br />
With the glut of new trading systems coming on the market over the past few years, and the frequency of advertisements touting incredible gains; traders now need, more than ever, a way to compare different trading systems. Simply looking at which system has performed the best over a given period of time can be an incredibly dangerous proposition.</p>
<p><br />
The problem inherent in comparing different systems is their infinitely complex structures. This is truly comparing apples to oranges. For example, one system may trade Nasdaq 100 futures 12 times a day for an annual return of 50% after commissions; and another system may trade Gold futures once in a year for an annual return of 50% after all costs. On the surface, an investor would be equally as wise to invest in either of these trading systems. There are of course, a couple of glaring omissions from this analysis, mainly that VOLATILITY and DRAWDOWN is not taken into consideration.</p>
<p>The investing public tends to focus only on returns. Best performance is a relative term that depends on what the individuals intended outcome is. Traders are fixated with returns, but it is even more important to think about how returns<br />
equate with the risk RISK. The goal is to maximize return per a given unit of risk.</p>
<p>But how can traders measure risk? Should they simply look at a system&rsquo;s historical max drawdown? Should they consider the volatility of returns? Luckily, the mathematicians have figured most of this out for us, devising numerous statistics for measuring the risk of an investment. There have been entire careers, doctorates, and government studies on the subject, but we should be able to give a brief overview in this space.</p>
<p><b>Standard Deviation</b></p>
<p><br />
The most common form of risk is variance, measured most often by Standard Deviation. The standard deviation is a statistic that illustrates how closely all the various points of data are clustered around the mean in a sample of data. When the examples are pretty tightly bunched together and the bell-shaped curve is steep, the standard deviation is small. When the examples are spread apart and the bell curve is relatively flat, that tells you have a relatively large standard deviation.</p>
<p><br />
In relation to trading system returns, a high standard deviation is telling you that you can expect a wide range of returns, from down 50% to UP 80% and several points in between. Similarly, low Standard Deviation values occur when returns are stable. This measure is often referred to as Volatility. Investors relate volatility with risk, as a high level of volatility implies that at any one point the investor could be experiencing the 50% DOWN period or the 80% UP period from the above example. This uncertainty of what the returns will be in the next period is why Standard deviation is used as a measure of risk.<br />
Staying with the above example, many investors would rather sacrifice the 80% return if it meant they could also eliminate the chance of a 50% loss. In a trading system where there is a lower volatility of returns, meaning lower Volatility, many of the extreme points have been removed, meaning a lower standard deviation, smoother equity curve, and more consistent results.</p>
<p><br />
Armed with this measure of risk, all the investor needs to do is find the investment with the lowest possible standard deviation, correct? NO. A standard deviation of ZERO can be achieved with a trading system losing 15% every month, or by a system making 100%. Remember, it is the variance from the monthly returns, not the returns themselves. Thus a low standard deviation means little more than the returns have been fairly steady, and says nothing about the returns.</p>
<p><b>Sharpe Ratio</b>:</p>
<p><br />
To help with this flaw in the Standard Deviation, Nobel Laureate William Sharpe developed the Sharpe Ratio, which relates risk with return. Sharpe theorized that the expected return of an investment equals the rate on a risk-free security plus a risk premium. If this expected return does not match or outperform the required return then the investment should not be undertaken. He assigned a premium to risk by assuming risk = volatility (a very Big assumption) and measuring volatility with Standard Deviation. The return portion of the Sharpe ratio therefore measures the rate of return OVER the risk free rate. The risk free rate is usually equal to the annualized rate of 90 day US T-Bills, an investment backed by the full weight of the US government and widely considered the safest investment in the world.</p>
<p><br />
The Shape ratio therefore measures a trading system&rsquo;s excess return per a given unit of risk, as measured by the Standard Deviation. Thus, through a little hard work, we finally have our measure of Return per unit of Risk, and have a tool for measuring the Apples and Oranges of the Trading System Industry. The ratio is used to evaluate the quality rather than the quantity of the returns of an investment. This ratio means little by itself, and should be used instead as a measuring stick when comparing various trading systems.</p>
<p><br />
A <u>Higher Sharpe Ratio</u> = <u>More Return per unit of Risk</u> (as measured by volatility)<br />
A <u>Lower Sharpe Ratio</u> = <u>Less Return per unit of Risk</u> (as measured by volatility)</p>
<p><br />
Globex Trading Solutions tracks the real&ndash;time results for several trading systems, and has compiled the following chart listing those systems which have the highest Sharpe ratios in real time trading. These results are form actual fills, but do not includes commissions. These numbers may seem considerably higher than other risk adjusted ratios you have seen, as the minimum performance history of some of the listed systems is only 6 months. It also must be noted that the return percentages are gauged off of the developer recommended minimum for trading the respective systems. These minimums are hypothetical guidelines, and returns can be much higher, or lower, depending on the actual capital of the individual trader. The most recent 90-day T-Bill rate was used as the Risk Free rate. Please see the disclaimer concerning hypothetical performance figures at the end of this article.<br />
#<br />
System<br />
Ann Ret<br />
Max DD<br />
Sharpe<br />
1<br />
System A<br />
212.00%<br />
-20.40%<br />
50.01<br />
2<br />
System B<br />
22.57%<br />
-4.14%<br />
15.48<br />
3<br />
System C<br />
73.13%<br />
-68.75%<br />
15.20<br />
4<br />
System D<br />
53.47%<br />
-12.40%<br />
11.33<br />
5<br />
System E<br />
25.97%<br />
-29.07%<br />
9.32<br />
6<br />
System F<br />
114.00%<br />
-34.20%<br />
8.44<br />
7<br />
System G<br />
15.19%<br />
-2.64%<br />
7.86<br />
8<br />
System H<br />
43.74%<br />
-25.53%<br />
7.80<br />
9<br />
System I<br />
45.40%<br />
-9.47%<br />
7.69<br />
This list does not represent the 10 Best systems, but rather the 10 &ldquo;steadiest&rdquo; systems tracked. The higher a system on this list, the better returns the system has had AND the smoother its equity curve will be. Notice the difference between System B and System F. System B has had a 22.57% average annualized return, while System F has had nearly 5 times that amount. However, there was much more volatility in achieving System F results. Its equity curve was much rockier, seeing spikes to new highs, and then new lows again and again. It therefore has a Sharpe ratio roughly half that of the System B system, and can be considered a riskier investment.</p>
<p><br />
Please note that the Sharpe ratio does not measure only downside risk (deviation), it also measures big moves to the upside. Thus a system which has equity spikes, with some months only returning 2% or 3% and other returning 80% or higher will rank quite low as measured by the Sharpe ration, but may in fact be a very profitable system.</p>
<p><br />
Does the wise investor merely have to go out and find the trading System with the highest comparable Sharpe ratios? I wish it were that simple, and so does the developer of System A.</p>
<p><br />
The reason we can&rsquo;t merely look at the Sharpe Ratio is that it has a flaw. The Sharpe ratio doesn&rsquo;t take into account the max drawdown a trading system has experienced. It views risk as the standard deviation only, a mistake made famous by the brains behind Long Term Capital Management&rsquo; collapse. (I highly recommend Roger Lowenstein&rsquo;s book, When Genius Failed : The Rise and Fall of Long-Term Capital Management). The max drawdown of a system simply can&rsquo;t be ignored.</p>
<p><br />
<u><strong>Sterling Ratio:</strong></u></p>
<p><br />
There is more to risk than volatility and the Sterling Ratio attempts to tackle that problem by incorporating a separate measure of risk named drawdown. A drawdown is any losing period during a system&rsquo;s performance record and equals the percentage difference between an equity peak and an equity valley. Many traders think of a drawdown as the max amount of loss they must endure before a system returns to its winning ways. For example, a trader who starts trading a system with $25,000; watches her equity climb to $50,000, fall to $40,000, then rebound to make new equity highs at $55,000 has had a $10,000, or 20%, Drawdown (50 K &ndash; 40 K = 10 K). For the trader who started the system with 25K on the day after it reached 50 K, the 10 K drawdown represents a 40% Drawdown. Basing the max drawdown on the minimum recommended account balance is referred to as &lsquo;Start &ndash;Trade&rsquo; drawdown. We use the &lsquo;start-trade&rsquo; drawdown as its Max Drawdown level.</p>
<p><br />
The Sterling ratio looks at a trading system&rsquo;s returns in relation to its max drawdown. The max drawdown is simply the largest percentage drawdown that has occurred over the performance history of the trading system. Thus, we have another method for comparing the Apples and Oranges of trading systems. Like the Sharpe ratio, the Sterling ratio means little by itself, and should be used as a measuring stick against other trading systems instead.</p>
<p><br />
A <u>Higher Sterling Ratio</u> = <u>More Return per unit of Risk</u> (as measured by drawdown)<br />
A <u>Lower Sterling Ratio</u> = <u>Less Return per unit of Risk</u> (as measured by drawdown)</p>
<p><br />
Globex Trading Solutions tracks the real&ndash;time results for several trading systems, and has compiled the following chart listing those systems which have the highest Sterling ratios in real time trading. These numbers may seem considerably higher than other risk adjusted ratios you have seen, as the minimum performance history of some of the listed systems is only 6 months. It also must be noted that the return and drawdown percentages are gauged off of the developer recommended minimum for trading the respective systems. These minimums are hypothetical guidelines, and returns can be much higher, or lower, depending on the actual capital of the individual trader. Please see the disclaimer concerning hypothetical performance figures at the end of this article.<br />
#<br />
System<br />
Ann Ret<br />
Max DD<br />
Sterling<br />
1<br />
System A<br />
212.00%<br />
-20.40%<br />
8.64</p>
<p><br />
2)<br />
System J<br />
87.83%<br />
-11.08%<br />
7.19<br />
3<br />
System D<br />
53.47%<br />
-12.40%<br />
3.29<br />
4<br />
System I<br />
45.40%<br />
-9.47%<br />
2.72<br />
5<br />
System F<br />
114.00%<br />
-34.20%<br />
2.58<br />
6<br />
System K<br />
93.13%<br />
-30.83%<br />
2.28<br />
7<br />
System L<br />
39.42%<br />
-12.90%<br />
2.04<br />
8<br />
System M<br />
46.00%<br />
-15.80%<br />
1.78<br />
9<br />
System H<br />
43.74%<br />
-25.53%<br />
1.75</p>
<p><br />
Again, this does not tell us what the best system. Rather, it gives us an idea of which systems have achieved the best return in relation to their max drawdowns. If a system is going to go through a large drawdown, the trader needs to have some idea if the possible return is worth the exposure to that drawdown. What level of return is satisfactory for a 20% drawdown? 50% drawdown? 75% drawdown? We can come up with all sorts of subjective answers to this question, but coming up with an objective answer usually slips the traders mind.</p>
<p><br />
<u><strong>Beyond the Math</strong></u></p>
<p><br />
What does all this mean? Should you rush out to trade the top three systems on each of these tables? Are a couple of risk adjusted ratios the solution to finding that mythical system with the High annual return, steady monthly performance, and low, low max drawdown? The answer to these questions is of course, NO, because that mythical system doesn&rsquo;t exist. There will always be tradeoffs. You may have to sacrifice some return in exchange for reduced volatility, or you may have to take on increased risk in the form of a larger max drawdown to achieve those large annual returns. There is still much to be done in evaluating the potential risk and reward of different systems, and much of it comes down to the risk profile of the individual investor.</p>
<p><br />
A couple of main ingredients for assessing a trader&rsquo;s risk profile are their investment objectives, maximum acceptable loss, and investment time frame. A trader with a very long investment time frame can take on more volatility in returns in exchange for higher annual returns. However, an individual in retirement, for example, with a very short investing time frame, must sacrifice some percentage of return in exchange for less volatility. The short-term dangers of volatility are very real; even an excellent long-term investment can be a disaster for you if your time horizon is short. For an example, look no further than the Nasdaq, where short-term moves can be devastating.</p>
<p><br />
Diversification reduces volatility more efficiently than most people understand: the volatility of a diversified portfolio is less than the average of the volatilities of its component parts. A scientific way to attain a diversified portfolio is by using the Sharpe Ratio to invest in lowly correlated systems.</p>
<p><span style="font-size: larger"><u><strong><br />
Consistency, Diversification and Money Management Using a portfolio approach.</strong></u></span></p>
<p><br />
Investing in trading system is a valuable diversification tool in that it presents the opportunity for investment returns that are not correlated with other investments such as the stock and bond markets. One of the key tenets of Modern Portfolio Theory, as developed by Nobel Prize economist Dr. Harry M. Markowitz, is that more efficient portfolios can be created by diversifying among asset categories with low to negative correlations. Using a combination of several trading systems can greatly reduce portfolio volatility risk when properly allocated and managed.</p>
<p><br />
Deciding on investing in a trading program is the first step in attempting to diversify your portfolio and lowering overall portfolio risk. The next step is diversifying between multiple trading systems. As has been mentioned earlier, investment decisions are based on risk/reward analysis. The advanced trader continuously adjusts and manages his or her risk downward, while always trying to increase reward. This delicate balancing act is the sole difference between successful and unsuccessful traders.<br />
The successful trader reduces his or her risk by trading a basket of trading systems. This basket must contain several trading systems that are lowly correlated. In order to achieve this low correlation between systems, the trader must look at the three main aspects which comprise trading system risk.</p>
<p><u><strong><br />
Trading System Risk Components:</strong></u></p>
<p><br />
<strong>Market Specific Risk:</strong> The market or markets on which a trading system is run is the main component of a trading system&rsquo;s risk profile. A trading system may trade the Wheat, the Nasdaq, Crude Oil, or any number of commodities, equities or derivatives. Market specific risk becomes a problem when a fundamental event affects the entire market or complex. The classic example of this is a surprise fed rate cut. The S&amp;P market will gyrate wildly both up and down in this scenario, causing many technical trading systems to return invalid signals and results. Such major fundamental events can make protective stops and money management levels useless, as the market encounters such events as limit moves. A trader who diversifies by trading five different S&amp;P programs has not escaped the market specific risk. That trader is still at risk of suffering major losses based on an event outside of the control of each system. To eliminate market specific risk, the trader should utilize trading systems that use their logic on not only several different markets, but several market complexes as well. Simply diversifying into soybeans, wheat and soy meal, for example, still leaves your portfolio at risk of severe losses in the face of a complex wide fundamental event such as drought or disease. The more prudent approach is to diversify across market complexes and into the grains, energies, softs, indices, and financials.</p>
<p><br />
<strong>Strategy Specific Risk:</strong> The strategy or strategies on which the trading system is based comprise the second element of risk. There is a multitude of trading strategies available, and one may see no correlation between them upon first review. Most indicators can be separated onto three categories, oscillator based, trend based and momentum based. Almost every trading system is built around some variant of one of these three methodologies. Oscillator based systems tend to perform well in choppy, sideways markets. Trend based systems do well in long-lived directional markets. Momentum systems tend to do well in swing trading markets that run hard in a certain direction, but only for short periods. Overloading your system-trading portfolio with too many of one type of system opens your portfolio up to the risk associated with that type of strategy, and may only function in that specific market condition. A diversified portfolio that contains a portion allocated to each type of system should overcome the individual systems limitations and be able to take advantage of whichever market condition is prevalent at a particular time.</p>
<p><br />
It is also important to take into account the effects different time frames have on the performance of different strategies. A daily chart showing several days of choppy market action may be a beautifully trending market to a 30 min chart. The same trading strategy, therefore, may have two very distinctly different performance records on each of these charts. When looking to diversify between strategies, be sure to pay attention to the time frame on which the strategy is applied as two similar strategies may lower their correlation by trading on different time frames.</p>
<p><strong><br />
Leverage Risk: </strong>The final type of risk associated with trading systems is the money management risk associated with deciding how many contracts or shares to execute each signal. The most dangerous mistake traders make is diversifying between systems, but allocating too much risk to one particular system. For instance, a trader may have 8 different systems trading everything from soybeans to the Nasdaq. The situation may be that this trader will be doing one lots of each market with each of the signals that the system generates. However, it must be taken into consideration that the risk associated with one contract of the Nasdaq is roughly 35 times that of Corn. The trader should risk 2%-5% of equity on every trade regardless of which system generated the signal. If one system is trading 1 lots of the Nasdaq, the system that is trading soybeans should allocate a comparable number of contracts, in this case at least 20, based on the risk that each position will be exposed.</p>
<p><br />
Trading a single system is like owning one stock or one mutual fund. You may do very well, or you may do poorly based solely on the management and performance of a single entity. Trading a single trading system is very similar. The trader that uses several non-correlated systems has added the element of diversification, and greatly reduces portfolio volatility risk. The end result can be a much smoother equity curve as losses in one system can be offset by profits I another.</p>
<p><br />
By trading multiple trading systems across different markets and time frames, the trader may reduce market specific and complex specific risk. By trading systems with different entry and exit strategies, the trader reduces system specific risk. By trading the appropriate number of contracts per signal or trading system in accordance with preset risk levels, the trader reduces leverage risk.</p>
<p><span style="font-size: larger"><u><strong><br />
Strengths of Trend Following Systems</strong></u></span></p>
<p><br />
Historically, traders have had the most success with trend following systems. Trend following systems, in their most basic form, use some type of formula or chart pattern to determine when a tradable direction has been established. The underlying purpose of these calculations is to attempt to filter out the underlying &ldquo;noise&rdquo; in the market to reveal true direction in whatever time frame you are working with. The formulas used can be something as relatively simple s a two period moving average crossover or can incorporate indicators as complex as exponential smoothing, parabolic and volatility sensitive inputs.</p>
<p><br />
Traders attempt to profit from these calculations by establishing trading rules and incorporating them into a systematic method of entering and exiting the market. Usually this involves some technique for buying the market when prices are above a certain level or selling when prices are below a certain level. Aggressive traders can use a short-term time frame, while more conservative traders and money managers normally use longer time periods. One of the problems with a system of this type is traders tend to want to &ldquo;cut profits short and let losses run&rdquo;.</p>
<p><br />
Trend following systems will show many open profits, and traders usually cash in early. This is exactly the opposite of what should be done. You should not limit upside potential by placing an arbitrary, non-systematic exit point on the trade. The grand majority of index trading systems are non-adaptive, taking fixed profits and fixed losses, even in the face of wildly gyrating price movements and volatility. This fixes profit and limits returns. The mantra of trend following systems is &ldquo;cut losses, and let profits run&rdquo;. Successful trend following systems are designed to take small losses, while they allow for maximum profit by remaining in the market for large moves. These large moves are the underlying strength of a diversified, trend following system.</p>
<p><span style="color: rgb(51,153,102)"><br />
</span><strong><span style="color: rgb(51,153,102)">Reasons to include Alternative Investments in an investment portfolio:</span></strong></p>
<p><br />
1.<strong> Balance portfolio volatility risk. </strong>This is possible because of the low to slightly negative correlation of managed futures with equities and bonds.</p>
<p>2.<strong> Enhance the investment portfolio.</strong> Including a balanced futures program improves overall diversification. This claim is substantiated by extensive bank of academic research, beginning with the landmark study of Dr. John Lintner</p>
<p>3. <strong>Ability to profit in any economic environment.</strong> Diversified managed futures accounts can take advantage of price trends, both positive and negative, during periods of hyperinflation as well as during deflationary times.</p>
<p>4. <strong>Participate in global markets.</strong> Managed futures accounts can participate in worldwide markets, with profit potential and risk reduction among a broad array of non-correlated markets<br />
Warning: There is a risk of loss in trading. It is the nature of commodity<br />
and securities that where there is the opportunity for profit, there is also<br />
the risk of loss. Commodity trading involves a certain degree of risk, and<br />
may not be suitable for all investors. Past performance is not necessarily<br />
indicative of future results. Please read additional risk matters on our web<br />
site. It is important you understand all the risks involved<br />
with trading, and you should only trade with risk capital.<b><br />
&nbsp;</b></p>
<p><span style="font-size: smaller">Warning: There is a risk of loss in trading. It is the nature of commodity<br />
and securities that where there is the opportunity for profit, there is also<br />
the risk of loss. Commodity trading involves a certain degree of risk, and<br />
may not be suitable for all investors. Past performance is not necessarily<br />
indicative of future results. Please read additional risk matters on our web<br />
site, <a href="http://www.gtsnyc.com">www.gtsnyc.com</a>. It is important you understand all the risks involved<br />
with trading, and you should only trade with risk capital.</span></p>', CAST(0x00009AF001095186 AS DateTime), 0, NULL, NULL, 0)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (27, N'Software demo', NULL, NULL, NULL, N'<embed src="http://www.eclipptv.com/embedPlayer.php?vid=f95ec3de395b4bce25b39ef61" FlashVars="config=http://www.eclipptv.com/embconfigXmlCode.php?pg=video_3610_no_0_extsite" quality="high" bgcolor="#000000" width="600" height="370" name="flvplayer" align="middle" allowScriptAccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" allowFullScreen="true" />
<p><strong>Mini ER2</strong><strong>000&nbsp; Short Trade</strong></p>
<embed height="370" align="middle" width="600" allowfullscreen="true" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" allowscriptaccess="always" bgcolor="#000000" quality="high" flashvars="config=http://eclipptv.com/embconfigXmlCode.php?pg=video_2962_no_0_extsite" src="http://eclipptv.com/embedPlayer.php?vid=3b2d8f129ae2f408f2153cd9c" name="flvplayer"></embed>
<p><strong>Mini ER2000 Long Trade</strong></p>', CAST(0x00009AF801053000 AS DateTime), 0, NULL, NULL, 1)
INSERT [dbo].[Pages] ([PageId], [Title], [MetaDescription], [MetaKeywords], [Summery], [Body], [DateCreated], [DisplayOrder], [UniqueName], [PageTitle], [PageCatId]) VALUES (28, N'Trade Log', NULL, NULL, NULL, N'<p>&nbsp;</p>
<p>20080200, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080201, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080201, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080201, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080201, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080201, RetraceEMD, $470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080201, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080201, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080201, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080201, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080201, Score-ER, $820, Number of trades:,1 ,pc time:1509.59</p>
<p>20080201, TurboUltimateER-rw, $790, Number of trades:,1 ,pc time:1509.59</p>
<p>20080201, TurboUltimateER, $790, Number of trades:,1 ,pc time:1509.59</p>
<p>20080201, TurboElite-ES, $138, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080201, Elite-ES, $138, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080201, Elite-ES1, $138, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080201, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080201, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080201, TurboUltimateER, $910, Number of trades:,1 ,pc time:831.03</p>
<p>20080201, TurboUltimateER-rw, $910, Number of trades:,1 ,pc time:831.03</p>
<p>20080201, TurboElite-ES, $138, Number oF trades:,1 , Not real time ,pc time:831.03</p>
<p>20080201, Elite-ES1, $138, Number oF trades:,1 , Not real time ,pc time:831.03</p>
<p>20080201, Elite-ES, $138, Number oF trades:,1 , Not real time ,pc time:831.03</p>
<p>20080201, TurboUltimateER, $910, Number of trades:,1 ,pc time:832.01</p>
<p>20080201, TurboUltimateER-rw, $910, Number of trades:,1 ,pc time:832.01</p>
<p>20080201, TurboUltimateER-rw, $910, Number of trades:,1 ,pc time:833.01</p>
<p>20080201, TurboUltimateER, $910, Number of trades:,1 ,pc time:833.01</p>
<p>20080201, Elite-ES1, $138, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080201, Elite-ES, $138, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080201, TurboElite-ES, $138, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080201, TurboUltimateER-rw, $910, Number of trades:,1 ,pc time:834.01</p>
<p>20080201, TurboUltimateER, $910, Number of trades:,1 ,pc time:834.01</p>
<p>20080203, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080204, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080204, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080204, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080204, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080204, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080204, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080204, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080204, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080204, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080204, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080204, Score-ER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080204, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080204, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080204, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080204, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080204, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080204, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080204, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080204, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080204, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080204, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080204, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080204, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080204, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080204, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080204, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080204, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080204, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080204, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080204, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080204, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080204, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.01</p>
<p>20080205, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080205, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080205, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080205, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080205, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080205, RetraceEMD, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080205, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080205, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080205, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080205, TurboElitesES-Brkoutmodule, $900, Number of trades:,1 ,pc time:1508.59</p>
<p>20080205, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080205, Score-ER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080205, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080205, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080205, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080205, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080205, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080205, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080205, Results delayed by one day TrendfriendER, 0, Number of trades:,1 ,pc time:930.01</p>
<p>20080206, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080206, Breakout @EMD.D, $540, Number of trades:,1 ,, real time :1504.59</p>
<p>20080206, Breakout @ES.D, $188, Number of trades:,1 ,, real time :1504.59</p>
<p>20080206, Breakout @ER2.D, $380, Number of trades:,1 ,, real time :1504.59</p>
<p>20080206, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080206, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080206, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080206, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080206, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080206, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080206, Score-ER, $750, Number of trades:,1 ,pc time:1509.59</p>
<p>20080206, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080206, Elite-ES, $588, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080206, Elite-ES1, $588, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080206, TurboElite-ES, $588, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080206, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080206, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080206, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080207, DaxTF, Euro-625, Number of trades:,2 ,pc time:1501.59</p>
<p>20080207, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080207, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080207, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080207, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080207, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080207, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080207, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080207, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080207, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080207, Score-ER, $-300, Number of trades:,1 ,pc time:1509.59</p>
<p>20080207, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080207, Elite-ES, $-1250, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080207, Elite-ES1, $-625, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080207, TurboElite-ES, $-1875, Number oF trades:,3 , real time ,pc time:1509.59</p>
<p>20080207, VisionEmd, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080207, Russellelite, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080207, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080207, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080207, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080208, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080208, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080208, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080208, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080208, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080208, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080208, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080208, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080208, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080208, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080208, Score-ER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080208, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080208, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080208, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080208, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080208, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080208, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080208, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080208, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080208, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.02</p>
<p>20080208, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.02</p>
<p>20080208, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.02</p>
<p>20080208, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.02</p>
<p>20080208, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.02</p>
<p>20080208, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.02</p>
<p>20080208, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.02</p>
<p>20080208, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.02</p>
<p>20080208, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.02</p>
<p>20080208, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.02</p>
<p>20080208, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.02</p>
<p>20080208, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.02</p>
<p>20080210, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080211, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1337.59</p>
<p>20080211, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080211, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080211, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080211, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080211, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080211, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080211, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080211, RetraceEMD, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080211, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1509.01</p>
<p>20080211, Score-ER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080211, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080211, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080211, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080211, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080211, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080211, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080211, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:2240.17</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:2240.43</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:2253.03</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:2253.22</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:2312.40</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:2313.16</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:2331.15</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:2331.36</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:2349.47</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:2350.02</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:8.47</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:8.53</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:27.31</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:27.41</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:45.49</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:45.56</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:104.33</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:104.49</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:123.00</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:123.17</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:141.40</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:142.08</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:146.07</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:146.11</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:204.00</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:204.26</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:206.21</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:206.41</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:208.27</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:208.34</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:210.23</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:210.34</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:212.15</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:212.34</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:214.25</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:214.45</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:216.16</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:216.18</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:219.34</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:219.40</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:221.12</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:221.15</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:222.25</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:222.39</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:224.35</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:225.03</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:226.38</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:226.45</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:228.25</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:228.42</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:230.18</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:230.24</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:232.37</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:232.42</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:234.31</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:234.38</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:236.42</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:236.59</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:238.33</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:238.45</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:240.26</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:240.34</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:242.38</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:242.51</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:244.23</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:244.37</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:246.20</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:246.34</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:248.14</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:248.46</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:250.17</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:250.46</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:252.33</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:253.02</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:254.26</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:254.39</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:256.25</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:256.32</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:258.37</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:258.46</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:300.34</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:300.40</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:302.55</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:302.57</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:304.40</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:304.58</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:306.21</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:306.47</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:308.23</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:308.54</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:310.26</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:310.40</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:333.12</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:333.30</p>
<p>20080211, VisionEmd, $0, Number of trades:,0 ,pc time:352.02</p>
<p>20080211, Russellelite, $0, Number of trades:,0 ,pc time:352.24</p>
<p>20080211, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080211, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080211, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080211, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080211, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080211, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080211, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080211, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080211, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080211, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080211, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080211, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080211, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080211, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080211, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080212, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080212, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080212, Bounce@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080212, BounceLT@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080212, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080212, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080212, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080212, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080212, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080212, Elite-ES, $-1250, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080212, TurboElite-ES, $-1875, Number oF trades:,3 , real time ,pc time:1509.59</p>
<p>20080212, TurboUltimateER, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080212, Elite-ES1, $-625, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080212, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080212, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1517.00</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080212, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1517.00</p>
<p>20080212, Elite-ES, $-1250, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080212, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080212, Elite-ES1, $-625, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080212, TurboUltimateER, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080212, TurboElite-ES, $-1875, Number oF trades:,3 , Not real time ,pc time:831.01</p>
<p>20080212, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.01</p>
<p>20080212, TurboUltimateER, $-430, Number of trades:,1 ,pc time:832.01</p>
<p>20080212, Elite-ES, $-1250, Number oF trades:,2 , Not real time ,pc time:833.01</p>
<p>20080212, Elite-ES1, $-625, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080212, TurboElite-ES, $-1875, Number oF trades:,3 , Not real time ,pc time:833.01</p>
<p>20080212, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.01</p>
<p>20080212, TurboUltimateER, $-430, Number of trades:,1 ,pc time:833.01</p>
<p>20080212, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:834.01</p>
<p>20080212, TurboUltimateER, $-430, Number of trades:,1 ,pc time:834.01</p>
<p>20080212, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080213, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080213, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080213, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080213, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080213, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080213, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080213, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080213, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080213, Breakout @ER2.D, $90, Number of trades:,1 ,pc time:1505.59</p>
<p>20080213, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080213, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080213, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080213, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080213, TurboUltimateER, $190, Number of trades:,1 ,pc time:1509.59</p>
<p>20080213, TurboUltimateER-rw, $190, Number of trades:,1 ,pc time:1509.59</p>
<p>20080213, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080213, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080213, Results delayed by one day TrendfriendER, 90, Number of trades:,0 ,pc time:930.01</p>
<p>20080214, TrendfriendER $90.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080214, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1430</p>
<p>20080214, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080214, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080214, RetraceEMD, $620, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080214, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080214, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080214, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080214, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080214, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080214, TurboElitesES-Brkoutmodule, $138, Number of trades:,1 ,pc time:1509.00</p>
<p>20080214, Elite-ES, $-475, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080214, Elite-ES1, $-238, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080214, TurboElite-ES, $-713, Number oF trades:,3 , real time ,pc time:1509.59</p>
<p>20080214, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080214, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080214, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080214, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080214, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.01</p>
<p>20080215, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1250.59</p>
<p>20080215, TrendfriendER $-440.00 , 1 , -1 ,noTeod, 1430</p>
<p>20080215, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080215, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080215, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080215, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080215, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080215, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080215, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080215, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1509.00</p>
<p>20080215, Russellelite, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080215, VisionEmd, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080215, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080215, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080215, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080215, TurboUltimateER-rw, $-410, Number of trades:,1 ,pc time:1509.59</p>
<p>20080215, TurboUltimateER, $-410, Number of trades:,1 ,pc time:1509.59</p>
<p>20080215, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080215, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1517.00</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080218, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080215, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080215, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.01</p>
<p>20080215, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:831.01</p>
<p>20080215, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080215, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080215, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080215, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.01</p>
<p>20080215, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.01</p>
<p>20080215, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:832.01</p>
<p>20080215, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.01</p>
<p>20080215, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.01</p>
<p>20080215, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:833.01</p>
<p>20080215, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080215, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080215, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080215, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:834.01</p>
<p>20080215, TurboUltimateER, $-450, Number of trades:,1 ,pc time:834.01</p>
<p>20080215, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:834.01</p>
<p>20080218, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.01</p>
<p>20080219, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080219, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080219, Bounce@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080219, BounceLT@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080219, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080219, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080219, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080219, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080219, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080219, VisionEmd, $-460, Number of trades:,1 ,pc time:1509.59</p>
<p>20080219, Russellelite, $-570, Number of trades:,1 ,pc time:1509.59</p>
<p>20080219, TurboUltimateER-rw, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080219, TurboUltimateER, $-350, Number of trades:,1 ,pc time:1509.59</p>
<p>20080219, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080219, TurboElite-ES, $-1675, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080219, Elite-ES, $-1675, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080219, Elite-ES1, $-838, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080219, Bounce@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>20080219, BounceLT@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080219, TurboElite-ES, $-1675, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080219, TurboElite-ES, $-1675, Number oF trades:,2 , Not real time ,pc time:833.01</p>
<p>20080219, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080220, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080220, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080220, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080220, RetraceEMD, $1740, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080220, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080220, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080220, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080220, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080220, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080220, TurboUltimateER-rw, $120, Number of trades:,1 ,pc time:1509.59</p>
<p>20080220, TurboUltimateER, $100, Number of trades:,1 ,pc time:1509.59</p>
<p>20080220, TurboUltimateEMD, $920, Number of trades:,1 ,pc time:1509.59</p>
<p>20080220, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080220, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080220, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080220, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080220, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080220, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080221, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080221, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080221, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080221, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080221, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080221, Breakout @EMD.D, $190, Number of trades:,1 ,, real time :1504.59</p>
<p>20080221, RetraceER, $950, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080221, RetraceEMD, $800, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080221, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080221, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080221, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080221, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080221, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080221, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080221, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080221, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080221, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.599</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080221, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080222, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080222, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080222, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080222, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080222, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080222, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080222, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080222, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080222, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080222, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080222, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080222, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080222, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080222, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080222, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080222, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080222, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080222, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080222, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080222, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080222, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.03</p>
<p>20080222, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.03</p>
<p>20080222, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.03</p>
<p>20080222, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080222, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080222, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080222, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080222, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080222, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080222, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080222, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080222, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080222, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080222, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080222, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080224, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080225, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080225, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080225, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080225, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080225, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080225, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080225, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080225, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080225, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080225, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1510.13</p>
<p>20080225, TurboUltimateER, $0, Number of trades:,0 ,pc time:1510.13</p>
<p>20080225, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1510.14</p>
<p>20080225, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1510.15</p>
<p>20080225, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1510.15</p>
<p>20080225, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1510.15</p>
<p>20080225, Bounce@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>20080225, BounceLT@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080225, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080225, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080225, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080225, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080225, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080225, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080225, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080225, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080225, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080225, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080225, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080225, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080225, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.02</p>
<p>20080225, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.02</p>
<p>20080225, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.02</p>
<p>20080225, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080225, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080225, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080225, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080226, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1407.59</p>
<p>20080226, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080226, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080226, BounceLT@ER2.D, $1790, Number of trades:,0 ,pc time:1504.59</p>
<p>20080226, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080226, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080226, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080226, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080226, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080226, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080226, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080226, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080226, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080226, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080226, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080226, VisionEmd, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080226, Russellelite, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080226, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080226, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080226, VisionEmd, $0, Number of trades:,0 ,pc time:11.44</p>
<p>20080226, Russellelite, $0, Number of trades:,0 ,pc time:15.21</p>
<p>20080226, VisionEmd, $0, Number of trades:,0 ,pc time:208.15</p>
<p>20080226, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080226, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080226, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080226, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080226, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.02</p>
<p>20080227, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080227, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080227, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080227, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080227, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080227, Breakout @ES.D, $-150, Number of trades:,1 ,, real time :1504.59</p>
<p>20080227, RetraceEMD, $-380, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080227, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080227, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080227, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080227, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080227, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080227, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080227, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080227, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080227, VisionEmd, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080227, Russellelite, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080227, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080227, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080227, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080227, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.02</p>
<p>20080227, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080227, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080227, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080228, DaxTF, Euro-475, Number of trades:,1 ,pc time:1501.59</p>
<p>20080228, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080228, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080228, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080228, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080228, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080228, RetraceEMD, $350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080228, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080228, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080228, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080228, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080228, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080228, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080228, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080228, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080228, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080228, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080228, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080228, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080228, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080228, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080228, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080228, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080228, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080228, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080228, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080229, Breakout @ER2.D, $310, Number of trades:,1 ,pc time:1458.59</p>
<p>20080229, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080229, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080229, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080229, Breakout @EMD.D, $520, Number of trades:,1 ,, real time :1504.59</p>
<p>20080229, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080229, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080229, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080229, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080229, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080229, TurboUltimateER-rw, $380, Number of trades:,1 ,pc time:1509.59</p>
<p>20080229, TurboUltimateEMD, $470, Number of trades:,1 ,pc time:1509.59</p>
<p>20080229, TurboUltimateER, $360, Number of trades:,1 ,pc time:1509.59</p>
<p>20080229, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080229, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080229, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080229, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080229, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080229, TurboUltimateEMD, $450, Number of trades:,1 ,pc time:831.03</p>
<p>20080229, TurboUltimateER-rw, $290, Number of trades:,1 ,pc time:831.03</p>
<p>20080229, TurboUltimateER, $270, Number of trades:,1 ,pc time:831.03</p>
<p>20080229, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.03</p>
<p>20080229, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.03</p>
<p>20080229, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.03</p>
<p>20080229, TurboUltimateEMD, $450, Number of trades:,1 ,pc time:832.01</p>
<p>20080229, TurboUltimateER-rw, $290, Number of trades:,1 ,pc time:832.01</p>
<p>20080229, TurboUltimateER, $270, Number of trades:,1 ,pc time:832.01</p>
<p>20080229, TurboUltimateEMD, $450, Number of trades:,1 ,pc time:833.01</p>
<p>20080229, TurboUltimateER-rw, $290, Number of trades:,1 ,pc time:833.01</p>
<p>20080229, TurboUltimateER, $270, Number of trades:,1 ,pc time:833.01</p>
<p>20080229, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080229, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080229, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080229, TurboUltimateER-rw, $290, Number of trades:,1 ,pc time:834.01</p>
<p>20080229, TurboUltimateEMD, $450, Number of trades:,1 ,pc time:834.01</p>
<p>20080229, TurboUltimateER, $270, Number of trades:,1 ,pc time:834.01</p>
<p>20080302, Results delayed by one day TrendfriendER, 800, Number of trades:,0 ,pc time:930.01</p>
<p>20080303, TrendfriendER $800.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080303, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080303, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080303, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080303, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080303, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080303, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080303, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080303, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080303, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080303, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080303, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080303, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080303, Elite-ES, $-1650, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080303, TurboElite-ES, $-1650, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080303, Elite-ES1, $-825, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080303, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080303, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080303, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080304, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080304, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080304, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080304, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080304, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080304, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080304, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080304, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080304, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080304, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080304, TurboUltimateER-rw, $-440, Number of trades:,1 ,pc time:1509.59</p>
<p>20080304, TurboUltimateER, $-460, Number of trades:,1 ,pc time:1509.59</p>
<p>20080304, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080304, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080304, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080304, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080304, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080304, TurboUltimateER, $-450, Number of trades:,1 ,pc time:838.05</p>
<p>20080304, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:838.05</p>
<p>20080304, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:838.05</p>
<p>20080304, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:839.01</p>
<p>20080304, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:839.01</p>
<p>20080304, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:839.01</p>
<p>20080304, TurboUltimateER, $-450, Number of trades:,1 ,pc time:839.01</p>
<p>20080304, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:839.01</p>
<p>20080304, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:839.01</p>
<p>20080304, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080305, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080305, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080305, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080305, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080305, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080305, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080305, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080305, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080305, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080305, Elite-ES1, $-413, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080305, Elite-ES, $-875, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080305, TurboElite-ES, $-875, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080305, TurboUltimateER, $-30, Number of trades:,1 ,pc time:1509.59</p>
<p>20080305, TurboUltimateER-rw, $-10, Number of trades:,1 ,pc time:1509.59</p>
<p>20080305, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1509.59</p>
<p>20080305, Russellelite, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080305, VisionEmd, $0, Number of trades:,0 ,pc time:1514.59</p>
<p>20080305, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080305, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080305, TurboElite-ES, $-413, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080305, TurboElite-ES, $-413, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080305, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080306, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1430</p>
<p>20080306, DaxTF, Euro730, Number of trades:,2 ,pc time:1501.59</p>
<p>20080306, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080306, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080306, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080306, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080306, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080306, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080306, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080306, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080306, Russellelite, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080306, VisionEmd, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080306, Elite-ES1, $538, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080306, Elite-ES, $1075, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080306, TurboElite-ES, $538, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080306, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080306, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080306, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080306, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080306, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080306, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.01</p>
<p>20080307, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080307, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080307, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080307, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080307, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080307, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080307, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080307, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080307, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080307, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080307, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1510.00</p>
<p>20080307, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1510.00</p>
<p>20080307, TurboUltimateER, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080307, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080307, TurboUltimateEMD, $-210, Number of trades:,1 ,pc time:1510.00</p>
<p>20080307, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080307, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080307, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080307, TurboUltimateEMD, $-210, Number of trades:,1 ,pc time:831.01</p>
<p>20080307, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080307, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080307, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080307, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080307, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080307, TurboUltimateEMD, $-210, Number of trades:,1 ,pc time:832.01</p>
<p>20080307, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080307, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080307, TurboUltimateEMD, $-210, Number of trades:,1 ,pc time:833.01</p>
<p>20080307, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080307, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080307, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080307, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080307, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080307, TurboUltimateEMD, $-210, Number of trades:,1 ,pc time:834.01</p>
<p>20080307, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080309, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080310, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080310, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080310, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080310, Breakout @EMD.D, $170, Number of trades:,1 ,, real time :1504.59</p>
<p>20080310, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080310, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080310, RetraceEMD, $1110, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080310, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080310, TurboUltimateER-rw, $490, Number of trades:,1 ,pc time:1509.59</p>
<p>20080310, TurboUltimateEMD, $480, Number of trades:,1 ,pc time:1509.59</p>
<p>20080310, TurboUltimateER, $470, Number of trades:,1 ,pc time:1509.59</p>
<p>20080310, TurboElite-ES, $-125, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080310, Elite-ES, $-125, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080310, Elite-ES1, $-125, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080310, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080310, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080310, Results delayed by one day TrendfriendER, 80, Number of trades:,0 ,pc time:930.01</p>
<p>20080311, TrendfriendER $80.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080311, Bounce@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080311, BounceLT@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080311, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080311, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080311, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080311, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080311, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080311, Breakout @ER2.D, $550, Number of trades:,1 ,pc time:1505.59</p>
<p>20080311, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080311, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080311, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080311, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080311, TurboElite-ES, $900, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080311, Elite-ES, $1800, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080311, Elite-ES1, $900, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080311, Bounce@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>20080311, BounceLT@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080311, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080312, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080312, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080312, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080312, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080312, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080312, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080312, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080312, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080312, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080312, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080312, TurboUltimateER, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080312, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1510.00</p>
<p>20080312, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1510.00</p>
<p>20080312, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1510.00</p>
<p>20080312, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080312, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1517.00</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080312, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080312, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080312, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080312, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080312, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080312, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080312, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080312, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080312, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080312, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080312, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080312, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080312, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080312, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080312, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080312, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080312, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080312, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080312, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080313, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080313, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080313, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080313, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080313, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080313, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080313, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080313, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080313, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080313, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080313, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080313, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080313, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080313, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080313, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080313, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080313, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080314, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080314, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080314, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080314, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080314, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080314, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080314, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080314, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080314, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080314, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080314, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080314, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080314, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080314, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080314, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080316, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080317, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080317, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080317, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080317, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080317, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080317, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080317, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080317, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080317, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080317, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080317, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080317, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080317, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080317, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080317, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080317, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080317, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.02</p>
<p>20080318, Breakout @EMD.D, $-390, Number of trades:,1 ,, real time :1314.59</p>
<p>20080318, Breakout @ER2.D, $-230, Number of trades:,1 ,pc time:1314.59</p>
<p>20080318, Bounce@ER2.D, $-200, Number of trades:,1 ,pc time:1504.59</p>
<p>20080318, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080318, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080318, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080318, RetraceEMD, $350, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080318, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080318, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080318, TurboUltimateER-rw, $-420, Number of trades:,1 ,pc time:1509.59</p>
<p>20080318, TurboUltimateEMD, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080318, TurboUltimateER, $-400, Number of trades:,1 ,pc time:1509.59</p>
<p>20080318, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080318, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080318, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080318, Bounce@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>20080318, BounceLT@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080318, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:831.01</p>
<p>20080318, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080318, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.01</p>
<p>20080318, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080318, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080318, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080318, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:832.01</p>
<p>20080318, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.01</p>
<p>20080318, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.01</p>
<p>20080318, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:833.01</p>
<p>20080318, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.01</p>
<p>20080318, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.01</p>
<p>20080318, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080318, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080318, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080318, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:834.01</p>
<p>20080318, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:834.01</p>
<p>20080318, TurboUltimateER, $-450, Number of trades:,1 ,pc time:834.01</p>
<p>20080318, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080319, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080319, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080319, RetraceEMD, $1400, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080319, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080319, RetraceER, $1410, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080319, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080319, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080319, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080319, TurboUltimateEMD, $1370, Number of trades:,1 ,pc time:1509.59</p>
<p>20080319, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080319, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080319, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080319, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080319, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080319, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080319, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080319, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080319, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080319, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080319, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080319, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080319, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080319, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080320, TrendfriendER $20.00 , 1 , 1 ,noTeod, 1505</p>
<p>20080320, RetraceEMD, $940, Number of trades:,1 , ,reAltime ,pc time:1505.01</p>
<p>20080320, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1505.01</p>
<p>20080320, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1505.01</p>
<p>20080320, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1505.01</p>
<p>20080320, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1505.01</p>
<p>20080320, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1505.01</p>
<p>20080320, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1505.01</p>
<p>20080320, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1509.00</p>
<p>20080320, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080320, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080320, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080320, Elite-ES1, $0, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080320, Elite-ES, $0, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080320, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080320, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080320, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080320, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080320, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080320, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080320, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.01</p>
<p>20080320, Elite-ES, $0, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080320, Elite-ES1, $0, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080320, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080320, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080320, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080320, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080320, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080320, Elite-ES, $0, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080320, Elite-ES1, $0, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080320, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080320, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080320, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080320, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080320, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080323, Results delayed by one day TrendfriendER, 20, Number of trades:,0 ,pc time:930.01</p>
<p>20080324, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1408.59</p>
<p>20080324, Breakout @ER2.D, $-350, Number of trades:,1 ,pc time:1429.59</p>
<p>20080324, Breakout @ER2.D, $-500, Number of trades:,1 ,, real time :1445.59</p>
<p>20080324, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080324, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080324, TrendfriendER $-440.00 , 1 , 1 ,noTeod, 1505</p>
<p>20080324, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080324, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080324, Breakout @ES.D, $-250, Number of trades:,1 ,, real time :1504.59</p>
<p>20080324, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080324, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080324, TurboUltimateER, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080324, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080324, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080324, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080324, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080324, Bounce@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>20080324, BounceLT@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080324, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.01</p>
<p>20080325, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080325, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080325, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080325, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080325, Breakout @ES.D, $-100, Number of trades:,1 ,, real time :1504.59</p>
<p>20080325, Breakout @ER2.D, $150, Number of trades:,1 ,, real time :1504.59</p>
<p>20080325, Breakout @EMD.D, $50, Number of trades:,1 ,, real time :1504.59</p>
<p>20080325, Breakout @ER2.D, $160, Number of trades:,1 ,pc time:1505.59</p>
<p>20080325, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080325, TurboUltimateER-rw, $290, Number of trades:,1 ,pc time:1509.59</p>
<p>20080325, TurboUltimateER, $270, Number of trades:,1 ,pc time:1509.59</p>
<p>20080325, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080325, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080325, TurboUltimateEMD, $110, Number of trades:,1 ,pc time:1509.59</p>
<p>20080325, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080325, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080325, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080325, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080326, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1333.59</p>
<p>20080326, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080326, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080326, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080326, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080326, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080326, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080326, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080326, TurboUltimateER-rw, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080326, TurboUltimateER, $-470, Number of trades:,1 ,pc time:1509.59</p>
<p>20080326, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080326, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080326, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080326, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080326, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080326, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080326, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.08</p>
<p>20080327, TrendfriendER $-440.00 , 1 , -1 ,noTeod, 1130</p>
<p>20080327, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080327, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080327, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080327, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080327, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080327, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080327, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080327, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080327, TurboUltimateER-rw, $-180, Number of trades:,1 ,pc time:1510.00</p>
<p>20080327, TurboUltimateER, $-200, Number of trades:,1 ,pc time:1510.00</p>
<p>20080327, Elite-ES, $-1250, Number oF trades:,2 , real time ,pc time:1510.00</p>
<p>20080327, Elite-ES1, $-625, Number oF trades:,1 , real time ,pc time:1510.00</p>
<p>20080327, TurboUltimateEMD, $-90, Number of trades:,1 ,pc time:1510.00</p>
<p>20080327, TurboElite-ES, $-625, Number oF trades:,1 , real time ,pc time:1510.00</p>
<p>20080327, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080327, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080327, Results delayed by one day TrendfriendER, -440, Number of trades:,1 ,pc time:930.01</p>
<p>20080328, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080328, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080328, Breakout @ES.D, $438, Number of trades:,1 ,, real time :1504.59</p>
<p>20080328, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080328, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080328, Breakout @ER2.D, $480, Number of trades:,1 ,, real time :1504.59</p>
<p>20080328, Breakout @EMD.D, $170, Number of trades:,1 ,, real time :1504.59</p>
<p>20080328, Breakout @ER2.D, $450, Number of trades:,1 ,pc time:1505.59</p>
<p>20080328, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080328, Elite-ES, $525, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080328, Elite-ES1, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080328, TurboElite-ES, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080328, TurboUltimateER-rw, $550, Number of trades:,1 ,pc time:1510.00</p>
<p>20080328, TurboUltimateER, $530, Number of trades:,1 ,pc time:1510.00</p>
<p>20080328, TurboUltimateEMD, $150, Number of trades:,2 ,pc time:1510.00</p>
<p>20080328, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080328, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080328, TurboUltimateER-rw, $590, Number of trades:,1 ,pc time:831.01</p>
<p>20080328, TurboUltimateER, $570, Number of trades:,1 ,pc time:831.01</p>
<p>20080328, Elite-ES1, $263, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080328, Elite-ES, $525, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080328, TurboElite-ES, $263, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080328, TurboUltimateEMD, $60, Number of trades:,2 ,pc time:831.01</p>
<p>20080328, TurboUltimateER-rw, $590, Number of trades:,1 ,pc time:832.01</p>
<p>20080328, TurboUltimateER, $570, Number of trades:,1 ,pc time:832.01</p>
<p>20080328, TurboUltimateEMD, $60, Number of trades:,2 ,pc time:832.01</p>
<p>20080328, TurboUltimateEMD, $60, Number of trades:,2 ,pc time:833.01</p>
<p>20080328, TurboUltimateER-rw, $590, Number of trades:,1 ,pc time:833.01</p>
<p>20080328, TurboUltimateER, $570, Number of trades:,1 ,pc time:833.01</p>
<p>20080328, Elite-ES1, $263, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080328, Elite-ES, $525, Number oF trades:,2 , Not real time ,pc time:833.01</p>
<p>20080328, TurboElite-ES, $263, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080328, TurboUltimateER-rw, $590, Number of trades:,1 ,pc time:834.01</p>
<p>20080328, TurboUltimateER, $570, Number of trades:,1 ,pc time:834.01</p>
<p>20080328, TurboUltimateEMD, $60, Number of trades:,2 ,pc time:834.01</p>
<p>20080330, Results delayed by one day TrendfriendER, 430, Number of trades:,0 ,pc time:930.01</p>
<p>20080331, TrendfriendER $430.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080331, TrendfriendER $20.00 , 1 , 1 ,noTeod, 1330</p>
<p>20080331, Breakout @EMD.D, $-300, Number of trades:,1 ,, real time :1352.59</p>
<p>20080331, DaxTF, Euro-348, Number of trades:,1 ,pc time:1501.59</p>
<p>20080331, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080331, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080331, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080331, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080331, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080331, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080331, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080331, TurboUltimateER-rw, $-250, Number of trades:,1 ,pc time:1509.59</p>
<p>20080331, TurboUltimateER, $-310, Number of trades:,1 ,pc time:1509.59</p>
<p>20080331, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080331, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080331, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080331, TurboUltimateEMD, $300, Number of trades:,1 ,pc time:1509.59</p>
<p>20080331, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080331, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080331, TurboUltimateER-rw, $-230, Number of trades:,1 ,pc time:831.01</p>
<p>20080331, TurboUltimateER, $-250, Number of trades:,1 ,pc time:831.01</p>
<p>20080331, TurboUltimateER-rw, $-230, Number of trades:,1 ,pc time:832.01</p>
<p>20080331, TurboUltimateER, $-250, Number of trades:,1 ,pc time:832.01</p>
<p>20080331, TurboUltimateER-rw, $-230, Number of trades:,1 ,pc time:833.04</p>
<p>20080331, TurboUltimateER, $-250, Number of trades:,1 ,pc time:833.04</p>
<p>20080331, TurboUltimateER-rw, $-230, Number of trades:,1 ,pc time:834.01</p>
<p>20080331, TurboUltimateER, $-250, Number of trades:,1 ,pc time:834.01</p>
<p>20080400, Results delayed by one day TrendfriendER, 20, Number of trades:,0 ,pc time:930.01</p>
<p>20080401, Breakout @ER2.D, $420, Number of trades:,1 ,, real time :1500.59</p>
<p>20080401, Breakout @ES.D, $438, Number of trades:,1 ,, real time :1500.59</p>
<p>20080401, DaxTF, Euro1415, Number of trades:,1 ,pc time:1501.59</p>
<p>20080401, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080401, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080401, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080401, RetraceER, $1050, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080401, RetraceEMD, $1470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080401, Breakout @ER2.D, $530, Number of trades:,1 ,pc time:1505.59</p>
<p>20080401, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080401, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080401, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080401, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080401, TurboUltimateER-rw, $450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080401, TurboUltimateER, $420, Number of trades:,1 ,pc time:1509.59</p>
<p>20080401, TurboUltimateEMD, $910, Number of trades:,1 ,pc time:1509.59</p>
<p>20080401, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080401, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080401, Results delayed by one day TrendfriendER, 510, Number of trades:,0 ,pc time:930.02</p>
<p>20080402, TrendfriendER $510.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080402, DaxTF, Euro-348, Number of trades:,1 ,pc time:1501.59</p>
<p>20080402, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080402, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080402, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080402, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080402, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080402, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080402, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080402, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080402, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080402, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080402, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080402, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080402, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080402, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080402, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080402, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080402, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.02</p>
<p>20080403, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080403, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080403, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080403, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080403, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080403, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080403, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080403, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080403, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080403, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080403, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080403, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080403, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080403, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080403, Elite-ES1, $-225, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080403, Elite-ES, $-450, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080403, TurboElite-ES, $-225, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080403, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080403, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080403, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080403, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080403, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080403, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.01</p>
<p>20080403, Elite-ES1, $-225, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080403, Elite-ES, $-450, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080403, TurboElite-ES, $-225, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080403, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080403, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080403, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.01</p>
<p>20080403, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080403, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080403, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080403, Elite-ES1, $-225, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080403, Elite-ES, $-450, Number oF trades:,2 , Not real time ,pc time:833.01</p>
<p>20080403, TurboElite-ES, $-225, Number oF trades:,1 , Not real time ,pc time:833.01</p>
<p>20080403, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080403, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080403, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080403, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080404, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080404, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080404, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080404, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080404, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080404, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080404, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080404, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080404, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080404, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080404, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080404, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080404, TurboElite-ES, $188, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080404, Elite-ES1, $188, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080404, Elite-ES, $413, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080404, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080404, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080404, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080404, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080404, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080404, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080404, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080404, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080404, TurboElite-ES, $188, Number oF trades:,1 , Not real time ,pc time:831.00</p>
<p>20080404, Elite-ES1, $188, Number oF trades:,1 , Not real time ,pc time:831.00</p>
<p>20080404, Elite-ES, $325, Number oF trades:,2 , Not real time ,pc time:831.00</p>
<p>20080404, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080404, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080404, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080404, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080404, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080404, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080404, TurboElite-ES, $188, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080404, Elite-ES1, $188, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080404, Elite-ES, $325, Number oF trades:,2 , Not real time ,pc time:833.00</p>
<p>20080404, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080404, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080404, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080406, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080407, DaxTF, Euro-98, Number of trades:,1 ,pc time:1501.59</p>
<p>20080407, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080407, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080407, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080407, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080407, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080407, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080407, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080407, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080407, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080407, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080407, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080407, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080407, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080407, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080407, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080407, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080407, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080407, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080407, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080407, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080407, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080407, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080407, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080407, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080407, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080407, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080407, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080407, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080407, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080407, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080407, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080407, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080407, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080407, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080407, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080407, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080407, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080407, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080408, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080408, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080408, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080408, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080408, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080408, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080408, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080408, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080408, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080408, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080408, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080408, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080408, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080408, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080408, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080408, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080408, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080408, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080408, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080408, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080408, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080408, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080408, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080408, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080408, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080408, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080408, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080408, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080408, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.00</p>
<p>20080409, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080409, Breakout @EMD.D, $390, Number of trades:,1 ,, real time :1500.59</p>
<p>20080409, DaxTF, Euro1105, Number of trades:,2 ,pc time:1501.59</p>
<p>20080409, pr-trinity, $130, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080409, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080409, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080409, plater-1m, $120, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080409, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>Some clients missed this trade, others has over a point slippage. Execution error. :(</p>
<p>20080409, RetraceEMD, $930, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080409, pr-global, $120, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080409, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080409, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080409, Breakout @ER2.D, $210, Number of trades:,1 ,pc time:1505.59</p>
<p>20080409, TurboElitesES-Brkoutmodule, $113, Number of trades:,1 ,pc time:1508.59</p>
<p>20080409, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080409, TurboUltimateEMD, $240, Number of trades:,1 ,pc time:1509.59</p>
<p>20080409, Elite-ES1, $-175, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080409, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080409, Elite-ES, $-488, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080409, TurboElite-ES, $-175, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080409, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080409, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080409, Results delayed by one day TrendfriendER, 0, Number of trades:,1 ,pc time:930.00</p>
<p>20080410, Breakout @ER2.D, $-370, Number of trades:,1 ,pc time:1434.59</p>
<p>20080410, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1442.59</p>
<p>20080410, Breakout @ER2.D, $-500, Number of trades:,1 ,, real time :1445.59</p>
<p>20080410, Breakout @ES.D, $-238, Number of trades:,1 ,, real time :1500.59</p>
<p>20080410, DaxTF, Euro-348, Number of trades:,1 ,pc time:1501.59</p>
<p>20080410, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080410, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080410, TrendfriendER $-440.00 , 1 , 1 ,noTeod, 1505</p>
<p>20080410, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080410, RetraceER-v2, $-50, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080410, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080410, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080410, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080410, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080410, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080410, TurboUltimateER, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080410, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080410, Elite-ES1, $288, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080410, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080410, Elite-ES, $250, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080410, TurboElite-ES, $288, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080410, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080410, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080410, Elite-ES1, $288, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080410, Elite-ES, $250, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080410, TurboElite-ES, $288, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080410, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:831.01</p>
<p>20080410, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080410, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.01</p>
<p>20080410, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:832.00</p>
<p>20080410, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.00</p>
<p>20080410, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.00</p>
<p>20080410, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:833.00</p>
<p>20080410, TurboElite-ES, $288, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080410, Elite-ES1, $288, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080410, Elite-ES, $250, Number oF trades:,2 , Not real time ,pc time:833.00</p>
<p>20080410, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.00</p>
<p>20080410, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.00</p>
<p>20080410, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:834.00</p>
<p>20080410, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:834.00</p>
<p>20080410, TurboUltimateER, $-450, Number of trades:,1 ,pc time:834.00</p>
<p>20080410, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.00</p>
<p>20080411, Breakout @EMD.D, $350, Number of trades:,1 ,, real time :1500.59</p>
<p>20080411, Breakout @ER2.D, $470, Number of trades:,1 ,, real time :1500.59</p>
<p>20080411, Breakout @ES.D, $338, Number of trades:,1 ,, real time :1500.59</p>
<p>20080411, DaxTF, Euro-348, Number of trades:,1 ,pc time:1501.59</p>
<p>20080411, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080411, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080411, pr-trinity, $900, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080411, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080411, RetraceEMD, $560, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080411, RetraceER-v2, $520, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080411, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080411, RetraceER, $790, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080411, Breakout @ER2.D, $480, Number of trades:,1 ,pc time:1505.59</p>
<p>20080411, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080411, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080411, Elite-ES1, $325, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080411, Elite-ES, $325, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080411, TurboUltimateER-rw, $200, Number of trades:,2 ,pc time:1509.59</p>
<p>20080411, TurboUltimateER, $40, Number of trades:,2 ,pc time:1509.59</p>
<p>20080411, TurboUltimateEMD, $260, Number of trades:,2 ,pc time:1509.59</p>
<p>20080411, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080411, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080411, TurboUltimateEMD, $300, Number of trades:,2 ,pc time:831.00</p>
<p>20080411, Elite-ES, $325, Number oF trades:,1 , Not real time ,pc time:831.00</p>
<p>20080411, Elite-ES1, $325, Number oF trades:,1 , Not real time ,pc time:831.00</p>
<p>20080411, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080411, TurboUltimateER-rw, $170, Number of trades:,2 ,pc time:831.00</p>
<p>20080411, TurboUltimateER, $70, Number of trades:,2 ,pc time:831.00</p>
<p>20080411, TurboUltimateEMD, $300, Number of trades:,2 ,pc time:832.00</p>
<p>20080411, TurboUltimateER-rw, $170, Number of trades:,2 ,pc time:832.00</p>
<p>20080411, TurboUltimateER, $70, Number of trades:,2 ,pc time:832.00</p>
<p>20080411, TurboUltimateER-rw, $170, Number of trades:,2 ,pc time:833.06</p>
<p>20080411, TurboUltimateEMD, $300, Number of trades:,2 ,pc time:833.06</p>
<p>20080411, TurboUltimateER, $70, Number of trades:,2 ,pc time:833.06</p>
<p>20080411, Elite-ES1, $325, Number oF trades:,1 , Not real time ,pc time:833.06</p>
<p>20080411, Elite-ES, $325, Number oF trades:,1 , Not real time ,pc time:833.06</p>
<p>20080411, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.06</p>
<p>20080411, TurboUltimateEMD, $300, Number of trades:,2 ,pc time:834.00</p>
<p>20080411, TurboUltimateER-rw, $170, Number of trades:,2 ,pc time:834.00</p>
<p>20080411, TurboUltimateER, $70, Number of trades:,2 ,pc time:834.00</p>
<p>20080413, Results delayed by one day TrendfriendER, 640, Number of trades:,0 ,pc time:930.00</p>
<p>20080414, TrendfriendER $640.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080414, DaxTF, Euro-348, Number of trades:,1 ,pc time:1501.59</p>
<p>20080414, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080414, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080414, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080414, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080414, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080414, pr-global, $390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080414, pr-trinity, $360, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080414, plater-1m, $390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080414, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080414, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080414, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080414, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080414, TurboUltimateEMD, $-10, Number of trades:,1 ,pc time:1509.59</p>
<p>20080414, Elite-ES, $-38, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080414, Elite-ES1, $-38, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080414, TurboElite-ES, $-38, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080414, TurboUltimateER-rw, $-70, Number of trades:,1 ,pc time:1509.59</p>
<p>20080414, TurboUltimateER, $-90, Number of trades:,1 ,pc time:1509.59</p>
<p>20080414, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080414, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080414, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080415, TrendfriendER $-440.00 , 1 , -1 ,noTeod, 1230</p>
<p>20080415, DaxTF, Euro-348, Number of trades:,1 ,pc time:1501.59</p>
<p>20080415, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080415, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080415, pr-global, $-40, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080415, pr-trinity, $-210, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080415, plater-1m, $-40, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080415, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080415, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080415, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080415, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080415, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080415, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080415, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080415, TurboUltimateEMD, $160, Number of trades:,1 ,pc time:1509.59</p>
<p>20080415, TurboUltimateER-rw, $190, Number of trades:,1 ,pc time:1509.59</p>
<p>20080415, TurboUltimateER, $170, Number of trades:,1 ,pc time:1509.59</p>
<p>20080415, Elite-ES, $-175, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080415, Elite-ES1, $-25, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080415, TurboElite-ES, $-25, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080415, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080415, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080415, Results delayed by one day TrendfriendER, -440, Number of trades:,1 ,pc time:930.00</p>
<p>20080416, TrendfriendER $-440.00 , 1 , 1 ,noTeod, 1330</p>
<p>20080416, Breakout @ER2.D, $190, Number of trades:,1 ,, real time :1500.59</p>
<p>20080416, Breakout @ES.D, $275, Number of trades:,1 ,, real time :1500.59</p>
<p>20080416, DaxTF, Euro1415, Number of trades:,1 ,pc time:1501.59</p>
<p>20080416, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080416, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080416, RetraceER-v2, $370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080416, RetraceEMD, $730, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080416, pr-global, $250, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080416, pr-trinity, $190, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080416, plater-1m, $270, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080416, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080416, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080416, Breakout @ER2.D, $380, Number of trades:,1 ,pc time:1505.59</p>
<p>20080416, TurboElitesES-Brkoutmodule, $1013, Number of trades:,1 ,pc time:1508.59</p>
<p>20080416, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080416, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080416, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080416, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080416, TurboUltimateER-rw, $-440, Number of trades:,1 ,pc time:1509.59</p>
<p>20080416, TurboUltimateER, $-460, Number of trades:,1 ,pc time:1509.59</p>
<p>20080416, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080416, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080416, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080416, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080416, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080416, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080416, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.01</p>
<p>20080416, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:831.01</p>
<p>20080416, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.00</p>
<p>20080416, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.00</p>
<p>20080416, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:832.00</p>
<p>20080416, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080416, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080416, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080416, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.00</p>
<p>20080416, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.00</p>
<p>20080416, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:833.00</p>
<p>20080416, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:834.00</p>
<p>20080416, TurboUltimateER, $-450, Number of trades:,1 ,pc time:834.00</p>
<p>20080416, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:834.00</p>
<p>20080416, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.00</p>
<p>20080417, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080417, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080417, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080417, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080417, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080417, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080417, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080417, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080417, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080417, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080417, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080417, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080417, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080417, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080417, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080417, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080417, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080417, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080417, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080417, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080417, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080417, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080418, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1311.00</p>
<p>20080418, DaxTF, Euro-60, Number of trades:,1 ,pc time:1501.59</p>
<p>20080418, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080418, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080418, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080418, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080418, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080418, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080418, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080418, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080418, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080418, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080418, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080418, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080418, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080418, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080418, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080418, TurboUltimateER-rw, $-440, Number of trades:,1 ,pc time:1509.59</p>
<p>20080418, TurboUltimateER, $-460, Number of trades:,1 ,pc time:1509.59</p>
<p>20080418, TurboUltimateEMD, $-250, Number of trades:,1 ,pc time:1509.59</p>
<p>20080418, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080418, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080420, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080421, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080421, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080421, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080421, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080421, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080421, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080421, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080421, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080421, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080421, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080421, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080421, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080421, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080421, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080421, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080421, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080421, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080421, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080421, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080421, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080421, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080421, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080422, Breakout @ES.D, $-350, Number of trades:,1 ,, real time :1500.59</p>
<p>20080422, DaxTF, Euro365, Number of trades:,1 ,pc time:1501.59</p>
<p>20080422, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080422, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080422, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080422, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080422, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080422, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1505.00</p>
<p>20080422, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1505.00</p>
<p>20080422, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080422, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080422, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080422, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080422, Elite-ES, $-588, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080422, TurboElite-ES, $-288, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080422, Elite-ES1, $-288, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080422, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080422, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080422, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080422, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080422, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080422, Elite-ES, $-588, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080422, TurboElite-ES, $-288, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080422, Elite-ES1, $-288, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080422, Elite-ES, $-588, Number oF trades:,2 , Not real time ,pc time:833.00</p>
<p>20080422, TurboElite-ES, $-288, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080422, Elite-ES1, $-288, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080422, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080423, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080423, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080423, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080423, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080423, plater-1m, $320, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080423, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080423, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080423, pr-global, $530, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080423, pr-trinity, $200, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080423, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080423, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080423, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080423, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080423, Elite-ES, $-613, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080423, TurboElite-ES, $-213, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080423, Elite-ES1, $-213, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080423, TurboUltimateER-rw, $320, Number of trades:,1 ,pc time:1509.59</p>
<p>20080423, TurboUltimateER, $340, Number of trades:,1 ,pc time:1509.59</p>
<p>20080423, TurboUltimateEMD, $260, Number of trades:,1 ,pc time:1509.59</p>
<p>20080423, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080423, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080423, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080424, Breakout @ER2.D, $-280, Number of trades:,1 ,pc time:1443.59</p>
<p>20080424, DaxTF, Euro1450, Number of trades:,1 ,pc time:1501.59</p>
<p>20080424, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080424, RetraceER, $940, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080424, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080424, pr-global, $-220, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080424, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080424, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080424, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080424, RetraceER-v2, $940, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080424, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080424, RetraceEMD, $740, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080424, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080424, TurboElitesES-Brkoutmodule, $-300, Number of trades:,1 ,pc time:1508.59</p>
<p>20080424, Elite-ES, $-438, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080424, TurboElite-ES, $-438, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080424, Elite-ES1, $-438, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080424, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080424, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080424, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080424, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080424, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080424, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080425, Breakout @EMD.D, $590, Number of trades:,1 ,, real time :1500.59</p>
<p>20080425, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080425, plater-1m, $250, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080425, Breakout @ER2.D, $100, Number of trades:,1 ,pc time:1504.59</p>
<p>20080425, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080425, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080425, pr-global, $170, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080425, pr-trinity, $160, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080425, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080425, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080425, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080425, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080425, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080425, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080425, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080425, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080425, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080425, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080425, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080425, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080425, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080425, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080425, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.02</p>
<p>20080425, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.02</p>
<p>20080425, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.02</p>
<p>20080425, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080425, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080425, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.02</p>
<p>20080425, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.02</p>
<p>20080425, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.02</p>
<p>20080425, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080425, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080425, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080425, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080425, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080425, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080425, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080425, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080425, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.01</p>
<p>20080427, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.02</p>
<p>20080427, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:941.30</p>
<p>20080428, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080428, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080428, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080428, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080428, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080428, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080428, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080428, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080428, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080428, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080428, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080428, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080428, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080428, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080428, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080428, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080428, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080428, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080428, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080428, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080429, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080429, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080429, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080429, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080429, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080429, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080429, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080429, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080429, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080429, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080429, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080429, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080429, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080429, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080429, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080429, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080429, TurboElite-ES, $-50, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080429, Elite-ES1, $-50, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080429, Elite-ES, $-100, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080429, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080429, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080429, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080430, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1317.45</p>
<p>20080430, Breakout @ER2.D, $-350, Number of trades:,1 ,pc time:1317.45</p>
<p>20080430, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080430, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080430, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080430, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080430, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080430, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080430, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080430, pr-trinity, $-700, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080430, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080430, plater-1m, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080430, RetraceER, $-415, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080430, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1509.00</p>
<p>20080430, TurboUltimateER-rw, $-200, Number of trades:,1 ,pc time:1509.59</p>
<p>20080430, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080430, TurboUltimateER, $-210, Number of trades:,1 ,pc time:1509.59</p>
<p>20080430, TurboElite-ES, $525, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080430, Elite-ES1, $525, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080430, Elite-ES, $1050, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080430, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080430, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080430, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.01</p>
<p>20080430, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.01</p>
<p>20080430, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:831.01</p>
<p>20080430, TurboElite-ES, $525, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080430, Elite-ES1, $525, Number oF trades:,1 , Not real time ,pc time:831.01</p>
<p>20080430, Elite-ES, $1050, Number oF trades:,2 , Not real time ,pc time:831.01</p>
<p>20080430, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.00</p>
<p>20080430, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.00</p>
<p>20080430, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:832.00</p>
<p>20080430, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.00</p>
<p>20080430, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.00</p>
<p>20080430, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:833.00</p>
<p>20080430, TurboElite-ES, $525, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080430, Elite-ES1, $525, Number oF trades:,1 , Not real time ,pc time:833.00</p>
<p>20080430, Elite-ES, $1050, Number oF trades:,2 , Not real time ,pc time:833.00</p>
<p>20080430, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:834.01</p>
<p>20080430, TurboUltimateER, $-450, Number of trades:,1 ,pc time:834.01</p>
<p>20080430, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:834.01</p>
<p>20080500, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.01</p>
<p>20080501, Breakout @EMD.D, $50, Number of trades:,1 ,, real time :1500.59</p>
<p>20080501, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080501, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080501, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080501, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080501, plater-1m, $-10, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080501, pr-trinity, $0, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080501, pr-global, $-60, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080501, RetraceEMD, $580, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080501, RetraceER-v2, $430, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080501, RetraceER, $405, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080501, TurboElitesES-Brkoutmodule, $438, Number of trades:,1 ,pc time:1508.59</p>
<p>20080501, TurboUltimateER-rw, $320, Number of trades:,1 ,pc time:1509.59</p>
<p>20080501, TurboUltimateER, $300, Number of trades:,1 ,pc time:1509.59</p>
<p>20080501, TurboUltimateEMD, $550, Number of trades:,1 ,pc time:1509.59</p>
<p>20080501, TurboElite-ES, $825, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080501, Elite-ES1, $825, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080501, Elite-ES, $1475, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080501, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080501, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080501, TurboUltimateEMD, $600, Number of trades:,1 ,pc time:831.29</p>
<p>20080501, TurboUltimateER, $320, Number of trades:,1 ,pc time:831.31</p>
<p>20080501, TurboUltimateER-rw, $340, Number of trades:,1 ,pc time:831.31</p>
<p>20080501, Elite-ES1, $825, Number oF trades:,1 , Not real time ,pc time:831.32</p>
<p>20080501, Elite-ES, $1475, Number oF trades:,2 , Not real time ,pc time:831.32</p>
<p>20080501, TurboElite-ES, $825, Number oF trades:,1 , Not real time ,pc time:831.32</p>
<p>20080501, TurboUltimateEMD, $600, Number of trades:,1 ,pc time:832.17</p>
<p>20080501, TurboUltimateER-rw, $340, Number of trades:,1 ,pc time:832.19</p>
<p>20080501, TurboUltimateER, $320, Number of trades:,1 ,pc time:832.19</p>
<p>20080501, TurboUltimateEMD, $600, Number of trades:,1 ,pc time:833.12</p>
<p>20080501, TurboUltimateER-rw, $340, Number of trades:,1 ,pc time:833.13</p>
<p>20080501, TurboUltimateER, $320, Number of trades:,1 ,pc time:833.13</p>
<p>20080501, Elite-ES1, $825, Number oF trades:,1 , Not real time ,pc time:833.14</p>
<p>20080501, Elite-ES, $1475, Number oF trades:,2 , Not real time ,pc time:833.14</p>
<p>20080501, TurboElite-ES, $825, Number oF trades:,1 , Not real time ,pc time:833.14</p>
<p>20080501, TurboUltimateER-rw, $340, Number of trades:,1 ,pc time:834.20</p>
<p>20080501, TurboUltimateEMD, $600, Number of trades:,1 ,pc time:834.20</p>
<p>20080501, TurboUltimateER, $320, Number of trades:,1 ,pc time:834.20</p>
<p>20080501, Results delayed by one day TrendfriendER, 460, Number of trades:,0 ,pc time:930.00</p>
<p>20080502, TrendfriendER $460.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080502, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080502, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080502, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080502, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080502, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080502, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080502, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080502, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080502, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080502, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080502, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080502, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080502, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080502, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080502, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080502, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080502, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080502, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080502, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080502, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080502, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080502, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080502, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080502, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080502, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080502, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080502, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080502, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080502, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080502, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080502, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080502, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080502, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.01</p>
<p>20080502, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080502, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080502, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080502, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080502, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080502, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080504, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080505, DaxTF, Euro-213, Number of trades:,1 ,pc time:1501.59</p>
<p>20080505, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080505, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080505, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080505, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080505, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080505, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080505, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080505, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080505, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080505, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080505, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080505, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080505, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080505, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080505, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080505, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080505, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080505, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080505, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080505, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080505, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080505, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080505, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080505, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080505, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080505, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080505, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080505, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080505, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080505, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080505, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080505, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080505, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080505, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080505, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080505, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080505, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080505, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080505, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080506, TrendfriendER $-440.00 , 1 , -1 ,noTeod, 1030</p>
<p>20080506, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1322.59</p>
<p>20080506, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080506, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080506, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080506, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080506, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080506, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080506, plater-1m, $-60, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080506, pr-trinity, $-50, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080506, pr-global, $-210, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080506, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080506, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080506, RetraceER, $-125, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080506, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080506, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1509.59</p>
<p>20080506, TurboUltimateER, $-250, Number of trades:,1 ,pc time:1509.59</p>
<p>20080506, TurboUltimateER-rw, $-220, Number of trades:,1 ,pc time:1509.59</p>
<p>20080506, TurboElite-ES, $-338, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080506, Elite-ES1, $-338, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080506, Elite-ES, $-675, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080506, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080506, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080506, Results delayed by one day TrendfriendER, -440, Number of trades:,1 ,pc time:929.59</p>
<p>20080507, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080507, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080507, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080507, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080507, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080507, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080507, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080507, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080507, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080507, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080507, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080507, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080507, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080507, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080507, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080507, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080507, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080508, TrendfriendER $-440.00 , 1 , -1 ,noTeod, 1230</p>
<p>20080508, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080508, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080508, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080508, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080508, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080508, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080508, plater-1m, $-350, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080508, pr-trinity, $-480, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080508, pr-global, $-350, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080508, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080508, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080508, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080508, pr-ts, $-350, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080508, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080508, TurboUltimateER-rw, $-860, Number of trades:,2 ,pc time:1509.59</p>
<p>20080508, TurboUltimateEMD, $-660, Number of trades:,2 ,pc time:1509.59</p>
<p>20080508, TurboUltimateER, $-900, Number of trades:,2 ,pc time:1509.59</p>
<p>20080508, TurboElite-ES, $-300, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080508, Elite-ES1, $-300, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080508, Elite-ES, $-600, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080508, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080508, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080508, Results delayed by one day TrendfriendER, -440, Number of trades:,1 ,pc time:929.59</p>
<p>20080509, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080509, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080509, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080509, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080509, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080509, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080509, plater-1m, $-470, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080509, pr-trinity, $-520, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080509, pr-global, $-470, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080509, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080509, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080509, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080509, pr-ts, $-470, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080509, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080509, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080509, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080509, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080509, TurboUltimateER-rw, $430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080509, TurboUltimateER, $300, Number of trades:,1 ,pc time:1509.59</p>
<p>20080509, TurboUltimateEMD, $450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080509, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080509, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080509, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080509, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080509, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080509, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080509, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080509, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080509, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080509, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080509, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080509, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080509, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080509, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080509, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080509, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080509, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080509, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080509, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080509, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080511, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080512, DaxTF, Euro1363, Number of trades:,1 ,pc time:1501.59</p>
<p>20080512, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080512, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080512, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080512, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080512, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080512, pr-ts, $80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, plater-1m, $40, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, pr-global, $40, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, pr-trinity, $90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, RetraceER-v2, $630, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, RetraceER, $605, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080512, Breakout @ER2.D, $70, Number of trades:,1 ,pc time:1505.59</p>
<p>20080512, TurboElitesES-Brkoutmodule, $350, Number of trades:,1 ,pc time:1508.59</p>
<p>20080512, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080512, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080512, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080512, TurboElite-ES, $575, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080512, Elite-ES1, $575, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080512, Elite-ES, $1150, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080512, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080512, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080512, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080512, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080512, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.02</p>
<p>20080512, TurboElite-ES, $575, Number oF trades:,1 , Not real time ,pc time:831.02</p>
<p>20080512, Elite-ES1, $575, Number oF trades:,1 , Not real time ,pc time:831.02</p>
<p>20080512, Elite-ES, $1150, Number oF trades:,2 , Not real time ,pc time:831.02</p>
<p>20080512, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.09</p>
<p>20080512, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.09</p>
<p>20080512, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.09</p>
<p>20080512, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.05</p>
<p>20080512, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.05</p>
<p>20080512, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.05</p>
<p>20080512, Elite-ES1, $575, Number oF trades:,1 , Not real time ,pc time:833.05</p>
<p>20080512, TurboElite-ES, $575, Number oF trades:,1 , Not real time ,pc time:833.05</p>
<p>20080512, Elite-ES, $1150, Number oF trades:,2 , Not real time ,pc time:833.05</p>
<p>20080512, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.12</p>
<p>20080512, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.12</p>
<p>20080512, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.12</p>
<p>20080512, Results delayed by one day TrendfriendER, 150, Number of trades:,0 ,pc time:929.59</p>
<p>20080513, TrendfriendER $150.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080513, Breakout @ES.D, $50, Number of trades:,1 ,, real time :1500.59</p>
<p>20080513, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080513, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080513, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080513, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080513, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080513, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080513, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080513, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080513, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080513, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080513, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080513, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080513, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080513, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080513, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080513, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080514, Breakout @ES.D, $-463, Number of trades:,1 ,, real time :1437.59</p>
<p>20080514, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080514, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080514, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080514, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080514, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080514, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080514, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080514, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080514, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080514, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080514, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080514, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080514, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080514, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080514, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080514, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080515, Breakout @ES.D, $400, Number of trades:,1 ,, real time :1500.59</p>
<p>20080515, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080515, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080515, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080515, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080515, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080515, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080515, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080515, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080515, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080515, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080515, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080515, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080515, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080515, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080515, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080515, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080516, DaxTF, Euro-313, Number of trades:,1 ,pc time:1501.59</p>
<p>20080516, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080516, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080516, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080516, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080516, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080516, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080516, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080516, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080516, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080516, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080516, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080516, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080516, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080516, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080516, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080516, EurexTF, Euro43800, Number of trades:,0 ,pc time:2200.00</p>
<p>20080516, EurexTF, Euro43080, Number of trades:,0 ,pc time:2200.00</p>
<p>20080516, EurexTF, Euro1430, Number of trades:,0 ,pc time:2200.00</p>
<p>20080516, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080516, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080516, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080516, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080516, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080516, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080518, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080519, DaxTF, Euro0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080519, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1508.49</p>
<p>20080519, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1508.49</p>
<p>20080519, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1508.49</p>
<p>20080519, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1509.01</p>
<p>20080519, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1509.03</p>
<p>20080519, EurexTF, Euro1430, Number of trades:,0 ,pc time:2200.00</p>
<p>20080519, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080519, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1510.00</p>
<p>20080519, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1510.00</p>
<p>20080519, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080519, TurboUltimateER, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080519, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080519, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080519, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1510.00</p>
<p>20080519, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1510.00</p>
<p>20080519, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1510.00</p>
<p>20080519, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1510.00</p>
<p>20080519, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1511.07</p>
<p>20080519, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1511.09</p>
<p>20080519, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1511.09</p>
<p>20080519, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1514.53</p>
<p>20080519, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1517.19</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080519, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1517.19</p>
<p>20080519, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1517.19</p>
<p>20080519, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1517.19</p>
<p>20080519, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1517.20</p>
<p>20080519, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1517.20</p>
<p>20080519, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1517.20</p>
<p>20080519, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1517.21</p>
<p>20080519, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1517.21</p>
<p>20080519, DaxTF, $0, Number of trades:,0 ,pc time:1522.38</p>
<p>20080519, DaxTF, $0, Number of trades:,0 ,pc time:1530.20</p>
<p>20080519, EurexTF, Euro1430, Number of trades:,0 ,pc time:2200.00</p>
<p>20080519, DaxTF, $0, Number of trades:,0 ,pc time:1624.43</p>
<p>20080519, DaxTF, $0, Number of trades:,0 ,pc time:2233.21</p>
<p>20080519, EurexTF, Euro1430, Number of trades:,0 ,pc time:2200.00</p>
<p>20080519, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080519, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080519, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080519, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080519, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080519, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080519, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080519, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080519, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080519, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080519, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080519, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080519, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080519, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080519, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:833.00</p>
<p>20080519, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080519, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080519, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080519, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080520, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1130</p>
<p>20080520, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080520, IM9-829-ER, $-910, Number of trades:,3 , ,reAltime ,pc time:1500.04</p>
<p>20080520, IM9-829-ER, $-500, Number of trades:,3 , ,reAltime ,pc time:1500.04</p>
<p>20080520, IM9-829-ER, $-910, Number of trades:,3 , ,reAltime ,pc time:1501.59</p>
<p>20080520, IM9-829-ER, $-500, Number of trades:,3 , ,reAltime ,pc time:1501.59</p>
<p>20080520, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080520, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080520, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080520, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080520, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080520, pr-ts, $-510, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080520, plater-1m, $-610, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080520, pr-global, $-460, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080520, pr-trinity, $-410, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080520, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080520, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080520, RetraceER, $-125, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080520, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080520, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080520, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080520, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080520, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080520, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080520, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:1509.59</p>
<p>20080520, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080520, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080520, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080520, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080520, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:830.59</p>
<p>20080520, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080520, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080520, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080520, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.00</p>
<p>20080521, DaxTF, $1450, Number of trades:,1 ,pc time:1454.59</p>
<p>20080521, IM9-829-ER, $750, Number of trades:,2 , ,reAltime ,pc time:1500.00</p>
<p>20080521, IM9-829-ER, $1130, Number of trades:,2 , ,reAltime ,pc time:1500.02</p>
<p>20080521, IM9-829-ER, $750, Number of trades:,2 , ,reAltime ,pc time:1501.59</p>
<p>20080521, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080521, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080521, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080521, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080521, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080521, pr-ts, $900, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080521, plater-1m, $920, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080521, pr-global, $920, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080521, pr-trinity, $910, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080521, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080521, RetraceEMD, $1340, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080521, RetraceER, $-415, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080521, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080521, TurboElite-ES, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080521, Elite-ES1, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080521, Elite-ES, $525, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080521, TurboUltimateER-rw, $-1, Number of trades:,2 ,pc time:1509.59</p>
<p>20080521, TurboUltimateER, $-1, Number of trades:,2 ,pc time:1509.59</p>
<p>20080521, TurboUltimateEMD, $1080, Number of trades:,2 ,pc time:1509.59</p>
<p>20080521, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080521, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080522, EurexTF, Euro490, Number of trades:,0 ,pc time:129.59</p>
<p>20080521, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080522, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1312.00</p>
<p>20080522, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1330</p>
<p>20080522, Breakout @ER2.D, $-500, Number of trades:,1 ,, real time :1424.01</p>
<p>20080522, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080522, IM9-829-ER, $-360, Number of trades:,3 , ,reAltime ,pc time:1459.59</p>
<p>20080522, IM9-829-ER, $-250, Number of trades:,3 , ,reAltime ,pc time:1500.01</p>
<p>20080522, Breakout @ES.D, $-250, Number of trades:,1 ,, real time :1500.59</p>
<p>20080522, IM9-829-ER, $-360, Number of trades:,3 , ,reAltime ,pc time:1501.59</p>
<p>20080522, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080522, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080522, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080522, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080522, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080522, pr-ts, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080522, plater-1m, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080522, pr-global, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080522, pr-trinity, $-590, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080522, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080522, TurboUltimateER-rw, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080522, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1509.59</p>
<p>20080522, TurboUltimateER, $-480, Number of trades:,1 ,pc time:1509.59</p>
<p>20080522, TurboElite-ES, $-25, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080522, Elite-ES1, $-25, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080522, Elite-ES, $-275, Number oF trades:,2 , real time ,pc time:1509.59</p>
<p>20080522, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080522, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080522, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:929.59</p>
<p>20080523, DaxTF, $0, Number of trades:,1 ,pc time:1454.59</p>
<p>20080523, IM9-829-ER, $-480, Number of trades:,1 , ,reAltime ,pc time:1459.59</p>
<p>20080523, IM9-829-ER, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080523, IM9-829-ER, $-480, Number of trades:,1 , ,reAltime ,pc time:1501.59</p>
<p>20080523, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080523, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080523, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080523, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080523, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080523, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080523, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080523, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080523, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080523, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080523, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080523, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080523, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1509.00</p>
<p>20080523, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080523, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080523, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080523, TurboElite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080523, Elite-ES1, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080523, Elite-ES, $0, Number oF trades:,0 , real time ,pc time:1509.59</p>
<p>20080523, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080523, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080523, EurexTF, Euro1920, Number of trades:,1 ,pc time:2200.00</p>
<p>20080523, DaxTF, $1000, Number of trades:,1 ,pc time:1823.25</p>
<p>20080526, EurexTF, Euro220, Number of trades:,0 ,pc time:129.59</p>
<p>20080523, DaxTF, $1000, Number of trades:,1 ,pc time:149.16</p>
<p>20080526, DaxTF, $0, Number of trades:,0 ,pc time:1645.21</p>
<p>20080526, EurexTF, Euro1950, Number of trades:,0 ,pc time:2200.00</p>
<p>20080523, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080523, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080523, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080523, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080523, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080523, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:831.00</p>
<p>20080523, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080523, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080523, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080523, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080523, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080523, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080523, Elite-ES1, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080523, TurboElite-ES, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080523, Elite-ES, $0, Number oF trades:,0 , Not real time ,pc time:832.59</p>
<p>20080523, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080523, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080523, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080526, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080527, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080527, IM9-829-ER, $490, Number of trades:,1 , ,reAltime ,pc time:1500.00</p>
<p>20080527, IM9-829-ER, $520, Number of trades:,1 , ,reAltime ,pc time:1500.00</p>
<p>20080527, IM9-829-ER, $520, Number of trades:,1 , ,reAltime ,pc time:1501.59</p>
<p>20080527, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080527, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080527, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, pr-trinity, $560, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, pr-global, $580, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, RetraceER, $-415, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080527, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080527, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080527, pr-ts, $550, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, plater-1m, $580, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080527, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080527, Elite-ES1, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080527, TurboElite-ES, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080527, Elite-ES, $263, Number oF trades:,1 , real time ,pc time:1509.59</p>
<p>20080527, TurboUltimateER-rw, $520, Number of trades:,1 ,pc time:1509.59</p>
<p>20080527, TurboUltimateEMD, $520, Number of trades:,1 ,pc time:1509.59</p>
<p>20080527, TurboUltimateER, $490, Number of trades:,1 ,pc time:1509.59</p>
<p>20080527, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080527, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080527, Results delayed by one day TrendfriendER, 120, Number of trades:,0 ,pc time:930.00</p>
<p>20080528, TrendfriendER $120.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080528, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080528, IM9-829-EMD, $-270, Number of trades:,2 , ,reAltime ,pc time:1459.59</p>
<p>20080528, IM9-829-ER, $10, Number of trades:,3 , ,reAltime ,pc time:1459.59</p>
<p>20080528, IM9-829-ER, $10, Number of trades:,3 , ,reAltime ,pc time:1501.59</p>
<p>20080528, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080528, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080528, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080528, pr-trinity, $90, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080528, pr-global, $110, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080528, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080528, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080528, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080528, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080528, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080528, pr-ts, $40, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080528, plater-1m, $80, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080528, TurboElitesES-Brkoutmodule, $175, Number of trades:,1 ,pc time:1508.59</p>
<p>20080528, TurboUltimateER-rw, $-560, Number of trades:,2 ,pc time:1509.59</p>
<p>20080528, TurboUltimateEMD, $-310, Number of trades:,2 ,pc time:1509.59</p>
<p>20080528, TurboUltimateER, $-560, Number of trades:,2 ,pc time:1509.59</p>
<p>20080528, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080528, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080528, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080529, TrendfriendER $20.00 , 1 , 1 ,noTeod, 1030</p>
<p>20080529, Breakout @ER2.D, $100, Number of trades:,1 ,pc time:1403.59</p>
<p>20080529, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080529, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080529, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080529, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080529, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080529, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080529, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080529, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080529, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080529, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080529, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080529, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080529, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080529, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080529, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080529, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080529, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080529, TurboUltimateER-rw, $230, Number of trades:,1 ,pc time:1509.59</p>
<p>20080529, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1509.59</p>
<p>20080529, TurboUltimateER, $210, Number of trades:,1 ,pc time:1509.59</p>
<p>20080529, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080529, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080530, EurexTF, Euro-250, Number of trades:,0 ,pc time:129.59</p>
<p>20080529, Results delayed by one day TrendfriendER, 20, Number of trades:,1 ,pc time:929.59</p>
<p>20080530, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080530, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080530, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080530, Breakout @ES.D, $-213, Number of trades:,1 ,, real time :1500.59</p>
<p>20080530, Breakout @EMD.D, $170, Number of trades:,1 ,, real time :1500.59</p>
<p>20080530, Breakout @ER2.D, $-60, Number of trades:,1 ,, real time :1500.59</p>
<p>20080530, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080530, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080530, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080530, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080530, Breakout @ER2.D, $150, Number of trades:,1 ,pc time:1505.59</p>
<p>20080530, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080530, TurboUltimateER-rw, $160, Number of trades:,1 ,pc time:1509.59</p>
<p>20080530, TurboUltimateEMD, $280, Number of trades:,1 ,pc time:1509.59</p>
<p>20080530, TurboUltimateER, $0, Number of trades:,1 ,pc time:1509.59</p>
<p>20080530, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080530, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080530, DaxTF, $-313, Number of trades:,1 ,pc time:2008.34</p>
<p>20080530, EurexTF, Euro1450, Number of trades:,1 ,pc time:2200.00</p>
<p>20080602, EurexTF, Euro-150, Number of trades:,0 ,pc time:129.59</p>
<p>20080530, TurboUltimateER-rw, $210, Number of trades:,1 ,pc time:830.59</p>
<p>20080530, TurboUltimateEMD, $290, Number of trades:,1 ,pc time:830.59</p>
<p>20080530, TurboUltimateER, $-50, Number of trades:,1 ,pc time:830.59</p>
<p>20080530, TurboUltimateER-rw, $210, Number of trades:,1 ,pc time:831.59</p>
<p>20080530, TurboUltimateEMD, $290, Number of trades:,1 ,pc time:831.59</p>
<p>20080530, TurboUltimateER, $-50, Number of trades:,1 ,pc time:831.59</p>
<p>20080530, TurboUltimateER-rw, $210, Number of trades:,1 ,pc time:832.59</p>
<p>20080530, TurboUltimateEMD, $290, Number of trades:,1 ,pc time:832.59</p>
<p>20080530, TurboUltimateER, $-50, Number of trades:,1 ,pc time:832.59</p>
<p>20080530, TurboUltimateER-rw, $210, Number of trades:,1 ,pc time:833.59</p>
<p>20080530, TurboUltimateEMD, $290, Number of trades:,1 ,pc time:833.59</p>
<p>20080530, TurboUltimateER, $-50, Number of trades:,1 ,pc time:833.59</p>
<p>20080601, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080602, TrendfriendER $20.00 , 1 , -1 ,noTeod, 1330</p>
<p>20080602, Breakout @ER2.D, $-250, Number of trades:,1 ,pc time:1331.59</p>
<p>20080602, Breakout @EMD.D, $-300, Number of trades:,1 ,, real time :1445.59</p>
<p>20080602, Breakout @ER2.D, $-300, Number of trades:,1 ,, real time :1446.59</p>
<p>20080602, DaxTF, $1450, Number of trades:,1 ,pc time:1454.59</p>
<p>20080602, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080602, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080602, Breakout @ES.D, $-138, Number of trades:,1 ,, real time :1500.59</p>
<p>20080602, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080602, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080602, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080602, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080602, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080602, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080602, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080602, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080602, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080602, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080602, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080602, TurboUltimateER-rw, $10, Number of trades:,1 ,pc time:1509.59</p>
<p>20080602, TurboUltimateEMD, $150, Number of trades:,1 ,pc time:1509.59</p>
<p>20080602, TurboUltimateER, $-10, Number of trades:,1 ,pc time:1509.59</p>
<p>20080602, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080602, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080603, EurexTF, Euro90, Number of trades:,0 ,pc time:129.59</p>
<p>20080602, Results delayed by one day TrendfriendER, 20, Number of trades:,0 ,pc time:929.59</p>
<p>20080603, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1230.59</p>
<p>20080603, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080603, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080603, IM9-829-ER, $430, Number of trades:,1 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080603, IM9-829-ER, $430, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080603, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080603, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080603, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, pr-global, $510, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, pr-trinity, $430, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080603, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080603, pr-ts, $470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, plater-1m, $470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080603, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080603, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080603, TurboUltimateER-rw, $-420, Number of trades:,1 ,pc time:1509.59</p>
<p>20080603, TurboUltimateEMD, $-530, Number of trades:,2 ,pc time:1509.59</p>
<p>20080603, TurboUltimateER, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080603, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080603, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080603, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080604, Breakout @ER2.D, $-250, Number of trades:,1 ,pc time:1319.00</p>
<p>20080604, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080604, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080604, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080604, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080604, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080604, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080604, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080604, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080604, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080604, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080604, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080604, RetraceEMD, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080604, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080604, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080604, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080604, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080604, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080604, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080604, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080604, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080604, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080604, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080604, DaxTF, $-313, Number of trades:,1 ,pc time:2343.20</p>
<p>20080604, EurexTF, Euro1560, Number of trades:,1 ,pc time:2200.00</p>
<p>20080605, EurexTF, Euro50, Number of trades:,0 ,pc time:130.01</p>
<p>20080605, EurexTF, Euro2020, Number of trades:,0 ,pc time:900.00</p>
<p>20080604, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080604, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080604, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080604, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080604, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080604, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080604, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080604, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080604, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080604, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080604, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080604, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080604, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080605, Breakout @ER2.D, $100, Number of trades:,1 ,pc time:1321.59</p>
<p>20080605, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1322.59</p>
<p>20080605, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080605, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080605, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.03</p>
<p>20080605, Breakout @ES.D, $288, Number of trades:,1 ,, real time :1500.59</p>
<p>20080605, Breakout @ER2.D, $600, Number of trades:,1 ,, real time :1500.59</p>
<p>20080605, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080605, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080605, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080605, plater-1m, $220, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080605, pr-ts, $190, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080605, pr-trinity, $200, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080605, pr-global, $220, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080605, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080605, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080605, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080605, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080605, TurboUltimateEMD, $600, Number of trades:,1 ,pc time:1509.59</p>
<p>20080605, TurboUltimateER-rw, $550, Number of trades:,1 ,pc time:1509.59</p>
<p>20080605, TurboUltimateER, $490, Number of trades:,1 ,pc time:1509.59</p>
<p>20080605, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080605, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080605, TurboUltimateER-rw, $550, Number of trades:,1 ,pc time:831.00</p>
<p>20080605, TurboUltimateER, $510, Number of trades:,1 ,pc time:831.00</p>
<p>20080605, TurboUltimateER-rw, $550, Number of trades:,1 ,pc time:831.59</p>
<p>20080605, TurboUltimateER, $510, Number of trades:,1 ,pc time:831.59</p>
<p>20080605, TurboUltimateER-rw, $550, Number of trades:,1 ,pc time:833.05</p>
<p>20080605, TurboUltimateER, $510, Number of trades:,1 ,pc time:833.05</p>
<p>20080605, TurboUltimateER-rw, $550, Number of trades:,1 ,pc time:834.07</p>
<p>20080605, TurboUltimateER, $510, Number of trades:,1 ,pc time:834.07</p>
<p>20080605, Results delayed by one day TrendfriendER, 1290, Number of trades:,0 ,pc time:930.00</p>
<p>20080606, TrendfriendER $1290.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080606, DaxTF, $1450, Number of trades:,1 ,pc time:1454.59</p>
<p>20080606, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.03</p>
<p>20080606, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.03</p>
<p>Chart time:1500</p>
<p>20080606, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.03</p>
<p>20080606, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080606, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080606, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080606, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080606, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080606, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080606, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080606, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080606, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080606, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080606, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080606, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080606, EurexTF, Euro2020, Number of trades:,1 ,pc time:2200.00</p>
<p>20080606, DaxTF, $1450, Number of trades:,1 ,pc time:1055.12</p>
<p>20080609, EurexTF, Euro2850, Number of trades:,0 ,pc time:1030.00</p>
<p>20080606, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080606, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080606, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080606, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080606, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080606, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080606, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080606, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080608, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080609, Breakout @ES.D, $-150, Number of trades:,1 ,, real time :1442.03</p>
<p>20080609, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080609, TurboUltimateEMD, $-290, Number of trades:,2 ,pc time:1500.00</p>
<p>20080609, IM9-829-ER, $-20, Number of trades:,2 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080609, IM9-829-EMD, $-270, Number of trades:,2 , ,reAltime ,pc time:1500.00</p>
<p>20080609, Breakout @ER2.D, $-290, Number of trades:,1 ,, real time :1500.59</p>
<p>20080609, Breakout @EMD.D, $-210, Number of trades:,1 ,, real time :1500.59</p>
<p>20080609, IM9-829-ER, $-20, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080609, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080609, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080609, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080609, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080609, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080609, pr-global, $-260, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080609, pr-ts, $-100, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080609, pr-trinity, $-150, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080609, plater-1m, $-100, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080609, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080609, TurboUltimateER-rw, $-1, Number of trades:,2 ,pc time:1509.59</p>
<p>20080609, TurboUltimateER, $-1, Number of trades:,2 ,pc time:1509.59</p>
<p>20080609, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080609, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080609, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080610, TrendfriendER $-440.00 , 1 , -1 ,noTeod, 1430</p>
<p>20080610, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080610, IM9-829-EMD, $-580, Number of trades:,3 , ,reAltime ,pc time:1500.00</p>
<p>20080610, IM9-829-ER, $-140, Number of trades:,2 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080610, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.01</p>
<p>20080610, IM9-829-ER, $-140, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080610, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080610, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080610, pr-global, $-20, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080610, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080610, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080610, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080610, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080610, pr-ts, $-140, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080610, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080610, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080610, pr-trinity, $-110, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080610, plater-1m, $-30, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080610, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080610, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080610, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080610, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080610, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080610, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:929.59</p>
<p>20080611, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1324.01</p>
<p>20080611, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1330</p>
<p>20080611, DaxTF, $-625, Number of trades:,2 ,pc time:1454.59</p>
<p>20080611, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080611, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1500.00</p>
<p>20080611, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080611, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1516.05</p>
<p>Chart time:1500</p>
<p>20080611, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1516.07</p>
<p>20080611, Breakout @ER2.D, $400, Number of trades:,1 ,, real time :1516.08</p>
<p>20080611, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1516.09</p>
<p>20080611, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1516.09</p>
<p>20080611, Breakout @ES.D, $338, Number of trades:,1 ,, real time :1516.11</p>
<p>20080611, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1516.15</p>
<p>20080611, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1516.15</p>
<p>20080611, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1516.15</p>
<p>20080611, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1516.15</p>
<p>20080611, Breakout @ER2.D, $460, Number of trades:,1 ,pc time:1516.17</p>
<p>20080611, TurboUltimateER-rw, $0, Number of trades:,1 ,pc time:1516.21</p>
<p>20080611, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1516.23</p>
<p>20080611, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1516.23</p>
<p>20080611, TurboUltimateER, $440, Number of trades:,1 ,pc time:1516.29</p>
<p>20080611, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1516.33</p>
<p>20080611, DaxTF, $-625, Number of trades:,2 ,pc time:1521.47</p>
<p>20080611, EurexTF, Euro2850, Number of trades:,1 ,pc time:2200.00</p>
<p>20080612, EurexTF, Euro130, Number of trades:,0 ,pc time:129.59</p>
<p>20080611, DaxTF, $-625, Number of trades:,2 ,pc time:157.48</p>
<p>20080612, EurexTF, Euro2980, Number of trades:,0 ,pc time:830.00</p>
<p>20080612, EurexTF, Euro2980, Number of trades:,0 ,pc time:900.00</p>
<p>20080612, EurexTF, Euro2980, Number of trades:,0 ,pc time:1230.00</p>
<p>20080611, TurboUltimateER-rw, $410, Number of trades:,1 ,pc time:830.59</p>
<p>20080611, TurboUltimateER, $410, Number of trades:,1 ,pc time:830.59</p>
<p>20080611, TurboUltimateER-rw, $410, Number of trades:,1 ,pc time:832.00</p>
<p>20080611, TurboUltimateER, $410, Number of trades:,1 ,pc time:832.00</p>
<p>20080611, TurboUltimateER-rw, $410, Number of trades:,1 ,pc time:832.59</p>
<p>20080611, TurboUltimateER, $410, Number of trades:,1 ,pc time:832.59</p>
<p>20080611, TurboUltimateER-rw, $410, Number of trades:,1 ,pc time:833.59</p>
<p>20080611, TurboUltimateER, $410, Number of trades:,1 ,pc time:833.59</p>
<p>20080611, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:929.59</p>
<p>20080612, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080612, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.00</p>
<p>20080612, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080612, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080612, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080612, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080612, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080612, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080612, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080612, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080612, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080612, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080612, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080612, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080612, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080612, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080612, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080613, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080613, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080613, IM9-829-ER, $520, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080613, IM9-829-EMD, $440, Number of trades:,1 , ,reAltime ,pc time:1459.59</p>
<p>20080613, IM9-829-ER, $520, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080613, Bounce@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080613, BounceLT@ER2.D, $-650, Number of trades:,1 ,pc time:1504.59</p>
<p>20080613, pr-trinity, $490, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, pr-global, $500, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080613, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080613, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080613, pr-ts, $480, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, plater-1m, $500, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080613, TurboElitesES-Brkoutmodule, $413, Number of trades:,1 ,pc time:1509.00</p>
<p>20080613, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080613, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080613, Bounce@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>20080613, BounceLT@EMD.D, $0, Number of trades:,1 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080613, DaxTF, $0, Number of trades:,0 ,pc time:226.49</p>
<p>20080613, EurexTF, Euro2040, Number of trades:,0 ,pc time:2200.00</p>
<p>20080616, EurexTF, Euro2370, Number of trades:,0 ,pc time:1130.00</p>
<p>20080613, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080613, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.00</p>
<p>20080613, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080613, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080613, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080613, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.01</p>
<p>20080613, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080613, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080615, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080616, DaxTF, Euro-313, Number of trades:,1 ,pc time:1455.59</p>
<p>20080616, IM9-829-ER, $-450, Number of trades:,2 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080616, IM9-829-EMD, $-490, Number of trades:,2 , ,reAltime ,pc time:1459.59</p>
<p>20080616, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080616, Breakout @EMD.D, $220, Number of trades:,1 ,, real time :1500.59</p>
<p>20080616, Breakout @ER2.D, $310, Number of trades:,1 ,, real time :1500.59</p>
<p>20080616, Breakout @ES.D, $138, Number of trades:,1 ,, real time :1500.59</p>
<p>20080616, IM9-829-ER, $-450, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080616, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080616, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080616, pr-trinity, $-320, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080616, plater-1m, $-210, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080616, pr-ts, $-220, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080616, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080616, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080616, pr-global, $-420, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080616, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080616, Breakout @ER2.D, $200, Number of trades:,1 ,pc time:1505.59</p>
<p>20080616, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080616, TurboUltimateER-rw, $210, Number of trades:,1 ,pc time:1509.59</p>
<p>20080616, TurboUltimateER, $200, Number of trades:,1 ,pc time:1509.59</p>
<p>20080616, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080616, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080617, EurexTF, Euro-180, Number of trades:,0 ,pc time:129.59</p>
<p>20080616, Results delayed by one day TrendfriendER, 160, Number of trades:,0 ,pc time:930.00</p>
<p>20080617, TrendfriendER $160.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080617, Breakout @EMD.D, $-310, Number of trades:,1 ,, real time :1424.00</p>
<p>20080617, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1424.00</p>
<p>20080617, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080617, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080617, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080617, TurboUltimateEMD, $-550, Number of trades:,2 ,pc time:1500.00</p>
<p>20080617, Breakout @ER2.D, $80, Number of trades:,1 ,, real time :1500.59</p>
<p>20080617, Breakout @ES.D, $175, Number of trades:,1 ,, real time :1500.59</p>
<p>20080617, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080617, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080617, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080617, pr-trinity, $-70, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080617, plater-1m, $-110, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080617, pr-ts, $-120, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080617, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080617, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080617, pr-global, $-90, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080617, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080617, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080617, TurboUltimateER-rw, $-430, Number of trades:,2 ,pc time:1509.59</p>
<p>20080617, TurboUltimateER, $-470, Number of trades:,2 ,pc time:1509.59</p>
<p>20080617, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080617, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080617, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080618, TrendfriendER $20.00 , 1 , -1 ,noTeod, 1130</p>
<p>20080618, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1352.59</p>
<p>20080618, DaxTF, $0, Number of trades:,1 ,pc time:1454.59</p>
<p>20080618, IM9-829-ER, $-890, Number of trades:,2 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080618, IM9-829-EMD, $-120, Number of trades:,1 , ,reAltime ,pc time:1500.00</p>
<p>20080618, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1500.00</p>
<p>20080618, IM9-829-ER, $-890, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080618, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080618, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080618, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080618, pr-trinity, $-700, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080618, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080618, plater-1m, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080618, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080618, pr-ts, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080618, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080618, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080618, pr-global, $-710, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080618, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080618, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080618, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080618, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080618, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080618, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080618, Results delayed by one day TrendfriendER, 20, Number of trades:,1 ,pc time:929.59</p>
<p>20080619, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080619, IM9-829-ER, $0, Number of trades:,2 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080619, IM9-829-EMD, $-230, Number of trades:,3 , ,reAltime ,pc time:1500.00</p>
<p>20080619, TurboUltimateEMD, $-200, Number of trades:,1 ,pc time:1500.00</p>
<p>20080619, IM9-829-ER, $0, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080619, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080619, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080619, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080619, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080619, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080619, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080619, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080619, pr-trinity, $-490, Number of trades:,4 , ,reAltime ,pc time:1504.59</p>
<p>20080619, plater-1m, $-250, Number of trades:,4 , ,reAltime ,pc time:1504.59</p>
<p>20080619, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080619, pr-ts, $-340, Number of trades:,4 , ,reAltime ,pc time:1504.59</p>
<p>20080619, pr-global, $-440, Number of trades:,4 , ,reAltime ,pc time:1504.59</p>
<p>20080619, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080619, TurboUltimateER-rw, $-170, Number of trades:,1 ,pc time:1509.59</p>
<p>20080619, TurboUltimateER, $-200, Number of trades:,1 ,pc time:1509.59</p>
<p>20080619, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080619, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080619, DaxTF, $0, Number of trades:,0 ,pc time:55.26</p>
<p>20080619, EurexTF, Euro1870, Number of trades:,0 ,pc time:2200.00</p>
<p>20080619, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080620, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1453.59</p>
<p>20080620, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080620, IM9-829-ER, $-10, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080620, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080620, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080620, IM9-829-ER, $-10, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080620, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080620, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080620, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080620, pr-trinity, $80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080620, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080620, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, pr-global, $-50, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080620, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080620, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080620, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080620, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080620, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080620, DaxTF, $-313, Number of trades:,1 ,pc time:2329.06</p>
<p>20080620, EurexTF, Euro1870, Number of trades:,1 ,pc time:2200.00</p>
<p>20080620, DaxTF, $-313, Number of trades:,1 ,pc time:120.01</p>
<p>20080620, EurexTF, Euro1480, Number of trades:,1 ,pc time:2200.00</p>
<p>20080623, EurexTF, Euro40, Number of trades:,0 ,pc time:129.59</p>
<p>20080620, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080620, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080620, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080620, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.00</p>
<p>20080620, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080620, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.00</p>
<p>20080620, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080620, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080622, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080623, DaxTF, $-313, Number of trades:,1 ,pc time:1455.00</p>
<p>20080623, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080623, IM9-829-ER, $350, Number of trades:,2 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080623, IM9-829-EMD, $-140, Number of trades:,2 , ,reAltime ,pc time:1459.59</p>
<p>20080623, IM9-829-ER, $350, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080623, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080623, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080623, pr-trinity, $300, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080623, pr-global, $400, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080623, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080623, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080623, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080623, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080623, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080623, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080623, pr-ts, $340, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080623, plater-1m, $400, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080623, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080623, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080623, TurboUltimateER, $-440, Number of trades:,1 ,pc time:1509.59</p>
<p>20080623, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080623, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080623, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080624, TrendfriendER $20.00 , 1 , -1 ,noTeod, 1030</p>
<p>20080624, EurexTF, Euro-440, Number of trades:,1 ,pc time:1129.59</p>
<p>20080624, DaxTF, $-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080624, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080624, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080624, IM9-829-EMD, $0, Number of trades:,2 , ,reAltime ,pc time:1459.59</p>
<p>20080624, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080624, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080624, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080624, pr-trinity, $80, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080624, pr-global, $20, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080624, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080624, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080624, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080624, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080624, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080624, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080624, pr-ts, $160, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080624, plater-1m, $210, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080624, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080624, TurboUltimateER-rw, $700, Number of trades:,1 ,pc time:1509.59</p>
<p>20080624, TurboUltimateER, $690, Number of trades:,1 ,pc time:1509.59</p>
<p>20080624, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080624, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080624, Results delayed by one day TrendfriendER, 20, Number of trades:,1 ,pc time:929.59</p>
<p>20080625, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1330.00</p>
<p>20080625, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1330</p>
<p>20080625, Breakout @ES.D, $-500, Number of trades:,1 ,, real time :1437.01</p>
<p>20080625, DaxTF, $0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080625, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080625, IM9-829-ER, $-1440, Number of trades:,3 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080625, IM9-829-EMD, $-1320, Number of trades:,5 , ,reAltime ,pc time:1459.59</p>
<p>20080625, IM9-829-ER, $-1440, Number of trades:,3 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080625, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080625, Bounce@ER2.D, $-200, Number of trades:,1 ,pc time:1504.59</p>
<p>20080625, pr-trinity, $-700, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080625, pr-global, $-710, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080625, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080625, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080625, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080625, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080625, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080625, pr-ts, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080625, plater-1m, $-520, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080625, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080625, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080625, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080625, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080625, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080625, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:929.59</p>
<p>20080626, Breakout @ER2.D, $-460, Number of trades:,1 ,, real time :1308.59</p>
<p>20080626, TrendfriendER $-440.00 , 1 , 0 ,noTeod, 1330</p>
<p>20080626, Breakout @ER2.D, $100, Number of trades:,1 ,pc time:1408.00</p>
<p>20080626, DaxTF, $1450, Number of trades:,1 ,pc time:1454.59</p>
<p>20080626, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080626, IM9-829-ER, $-480, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080626, IM9-829-EMD, $10, Number of trades:,1 , ,reAltime ,pc time:1459.59</p>
<p>20080626, Breakout @ES.D, $388, Number of trades:,1 ,, real time :1500.59</p>
<p>20080626, IM9-829-ER, $-480, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080626, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080626, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080626, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, RetraceEMD, $440, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080626, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080626, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080626, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080626, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080626, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1622.06</p>
<p>20080626, DaxTF, &euro;1450, Number of trades:,1 ,pc time:2015.42</p>
<p>20080626, PlatESTX50, &euro;850, Number of trades:,1 ,pc time:2200.00</p>
<p>20080626, EurexTF, &euro;690, Number of trades:,1 ,pc time:2200.00</p>
<p>20080626, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.00</p>
<p>20080627, PlatESTX50, &euro;19, Number of trades:,1 ,pc time:1455.00</p>
<p>20080627, DaxTF, &euro;-313, Number of trades:,2 ,pc time:1455.00</p>
<p>20080627, IM9-829-EMD, $-450, Number of trades:,2 , ,reAltime ,pc time:1500.00</p>
<p>20080627, TurboUltimateEMD, $-330, Number of trades:,2 ,pc time:1500.00</p>
<p>20080627, IM9-829-ER, $-340, Number of trades:,2 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080627, IM9-829-ER, $-340, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080627, EurexTF, &euro;0, Number of trades:,0 ,pc time:1502.19</p>
<p>20080627, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080627, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080627, pr-trinity, $50, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080627, pr-global, $-50, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080627, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080627, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080627, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080627, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080627, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080627, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080627, pr-ts, $20, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080627, plater-1m, $-50, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080627, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080627, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080627, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080627, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080627, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080627, DaxTF, &euro;525, Number of trades:,2 ,pc time:1611.11</p>
<p>20080627, PlatESTX50, &euro;19, Number of trades:,1 ,pc time:2200.00</p>
<p>20080627, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080627, DaxTF, &euro;525, Number of trades:,2 ,pc time:2316.40</p>
<p>20080627, DaxTF, &euro;525, Number of trades:,2 ,pc time:153.26</p>
<p>20080629, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080630, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1238.59</p>
<p>20080630, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080630, PlatESTX50, &euro;55, Number of trades:,3 ,pc time:1454.59</p>
<p>20080630, TurboUltimateEMD, $-190, Number of trades:,2 ,pc time:1459.59</p>
<p>20080630, IM9-829-ER, $920, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080630, IM9-829-EMD, $670, Number of trades:,1 , ,reAltime ,pc time:1459.59</p>
<p>20080630, IM9-829-ER, $920, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080630, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080630, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080630, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080630, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080630, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080630, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080630, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080630, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080630, pr-trinity, $1020, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080630, pr-global, $920, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080630, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080630, pr-ts, $1010, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080630, plater-1m, $920, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080630, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080630, TurboUltimateER-rw, $760, Number of trades:,1 ,pc time:1509.59</p>
<p>20080630, TurboUltimateER, $780, Number of trades:,1 ,pc time:1509.59</p>
<p>20080630, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080630, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080630, PlatESTX50, &euro;160, Number of trades:,3 ,pc time:2200.00</p>
<p>20080630, DaxTF, &euro;-313, Number of trades:,1 ,pc time:204.28</p>
<p>20080630, TurboUltimateER-rw, $790, Number of trades:,1 ,pc time:830.59</p>
<p>20080630, TurboUltimateER, $780, Number of trades:,1 ,pc time:830.59</p>
<p>20080630, TurboUltimateER-rw, $790, Number of trades:,1 ,pc time:832.00</p>
<p>20080630, TurboUltimateER, $780, Number of trades:,1 ,pc time:832.00</p>
<p>20080630, TurboUltimateER-rw, $790, Number of trades:,1 ,pc time:832.59</p>
<p>20080630, TurboUltimateER, $780, Number of trades:,1 ,pc time:832.59</p>
<p>20080630, TurboUltimateER-rw, $790, Number of trades:,1 ,pc time:834.00</p>
<p>20080630, TurboUltimateER, $780, Number of trades:,1 ,pc time:834.00</p>
<p>20080700, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080701, DaxTF, &euro;1138, Number of trades:,2 ,pc time:1455.00</p>
<p>20080701, PlatESTX50, &euro;-180, Number of trades:,1 ,pc time:1455.00</p>
<p>20080701, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.01</p>
<p>20080701, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.01</p>
<p>Chart time:1500</p>
<p>20080701, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.01</p>
<p>20080701, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080701, EurexTF, &euro;-30, Number of trades:,1 ,pc time:1501.59</p>
<p>20080701, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080701, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080701, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080701, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080701, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080701, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080701, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080701, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080701, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080701, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080701, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080701, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080701, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080701, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080701, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080701, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080701, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080701, EurexTF, &euro;-30, Number of trades:,1 ,pc time:2200.00</p>
<p>20080701, EurexTF, &euro;-30, Number of trades:,1 ,pc time:2200.00</p>
<p>20080701, EurexTF, &euro;-30, Number of trades:,1 ,pc time:2200.00</p>
<p>20080701, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080702, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080702, PlatESTX50, &euro;-320, Number of trades:,1 ,pc time:1454.59</p>
<p>20080702, IM9-829-EMD, $640, Number of trades:,2 , ,reAltime ,pc time:1459.59</p>
<p>20080702, IM9-829-ER, $430, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080702, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080702, IM9-829-ER, $430, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080702, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080702, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080702, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080702, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080702, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080702, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080702, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080702, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080702, plater-1m, $610, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080702, pr-ts, $470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080702, pr-global, $620, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080702, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080702, pr-trinity, $480, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080702, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080702, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080702, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080702, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080702, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080703, DaxTF, &euro;0, Number of trades:,0 ,pc time:1641.06</p>
<p>20080703, PlatESTX50, &euro;-450, Number of trades:,2 ,pc time:2200.00</p>
<p>20080703, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080704, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080704, EurexTF, &euro;-20, Number of trades:,1 ,pc time:2200.00</p>
<p>20080704, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1829.34</p>
<p>20080706, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080707, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080707, PlatESTX50, &euro;-20, Number of trades:,1 ,pc time:1454.59</p>
<p>20080707, IM9-829-EMD, $-450, Number of trades:,1 , ,reAltime ,pc time:1459.59</p>
<p>20080707, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.00</p>
<p>20080707, IM9-829-ER, $-480, Number of trades:,1 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080707, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080707, IM9-829-ER, $-480, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080707, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080707, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080707, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080707, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080707, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080707, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080707, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080707, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080707, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080707, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080707, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080707, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080707, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080707, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080707, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080707, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080707, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080707, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080708, DaxTF, Euro-313, Number of trades:,1 ,pc time:1455.59</p>
<p>20080708, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1455.59</p>
<p>20080708, IM9-829-ER, $1030, Number of trades:,2 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080708, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080708, IM9-829-EMD, $1090, Number of trades:,2 , ,reAltime ,pc time:1459.59</p>
<p>20080708, IM9-829-ER, $1030, Number of trades:,2 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080708, EurexTF, &euro;0, Number of trades:,0 ,pc time:1502.59</p>
<p>20080708, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080708, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080708, plater-1m, $1340, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080708, pr-trinity, $1210, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080708, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080708, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080708, RetraceER, $1690, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080708, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080708, pr-ts, $1290, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080708, pr-global, $1150, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080708, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080708, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080708, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080708, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080708, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080708, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080708, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1722.47</p>
<p>20080708, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080708, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:830.59</p>
<p>20080708, TurboUltimateER, $-450, Number of trades:,1 ,pc time:830.59</p>
<p>20080708, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.59</p>
<p>20080708, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.59</p>
<p>20080708, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.59</p>
<p>20080708, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.59</p>
<p>20080708, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.59</p>
<p>20080708, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.59</p>
<p>20080708, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080709, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080709, PlatESTX50, &euro;400, Number of trades:,3 ,pc time:1454.59</p>
<p>20080709, IM9-829-EMD, $620, Number of trades:,3 , ,reAltime ,pc time:1459.59</p>
<p>20080709, TurboUltimateEMD, $1450, Number of trades:,1 ,pc time:1459.59</p>
<p>20080709, IM9-829-ER, $470, Number of trades:,3 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080709, IM9-829-ER, $470, Number of trades:,3 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080709, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080709, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080709, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080709, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080709, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080709, RetraceER, $730, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080709, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080709, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080709, pr-trinity, $1820, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080709, pr-global, $1860, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080709, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080709, pr-ts, $1810, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080709, plater-1m, $1860, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080709, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080709, TurboUltimateER-rw, $1500, Number of trades:,1 ,pc time:1509.59</p>
<p>20080709, TurboUltimateER, $1480, Number of trades:,1 ,pc time:1509.59</p>
<p>20080709, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080709, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080709, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080710, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080710, PlatESTX50, &euro;-90, Number of trades:,1 ,pc time:1454.59</p>
<p>20080710, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1500.00</p>
<p>Chart time:1500</p>
<p>20080710, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1500.00</p>
<p>20080710, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.00</p>
<p>20080710, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080710, EurexTF, &euro;-250, Number of trades:,1 ,pc time:1501.59</p>
<p>20080710, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080710, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080710, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080710, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080710, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080710, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080710, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080710, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080710, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080710, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1923.54</p>
<p>20080710, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080710, PlatESTX50, &euro;-50, Number of trades:,1 ,pc time:2200.00</p>
<p>20080710, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080710, DaxTF, &euro;-313, Number of trades:,1 ,pc time:41.16</p>
<p>20080710, PlatESTX50, &euro;-50, Number of trades:,1 ,pc time:2200.00</p>
<p>20080710, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080710, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080710, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080710, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080710, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080710, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080710, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080710, TurboUltimateER, $0, Number of trades:,0 ,pc time:834.00</p>
<p>20080710, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080711, DaxTF, &euro;-625, Number of trades:,2 ,pc time:1454.59</p>
<p>20080711, PlatESTX50, &euro;-180, Number of trades:,1 ,pc time:1454.59</p>
<p>20080711, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080711, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080711, IM9-829-ER, $1050, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080711, IM9-829-ER, $1050, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080711, EurexTF, &euro;0, Number of trades:,1 ,pc time:1501.59</p>
<p>20080711, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080711, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080711, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080711, pr-trinity, $580, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080711, pr-global, $720, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080711, RetraceEMD, $350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080711, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080711, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080711, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080711, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080711, plater-1m, $770, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080711, pr-ts, $760, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080711, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080711, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080711, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080711, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080711, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080711, EurexTF, &euro;0, Number of trades:,1 ,pc time:2200.00</p>
<p>20080711, DaxTF, &euro;-625, Number of trades:,2 ,pc time:202.27</p>
<p>20080711, PlatESTX50, &euro;-170, Number of trades:,1 ,pc time:2200.00</p>
<p>20080713, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080714, DaxTF, &euro;-625, Number of trades:,2 ,pc time:1454.59</p>
<p>20080714, PlatESTX50, &euro;-550, Number of trades:,4 ,pc time:1454.59</p>
<p>20080714, IM9-829-ER, $-480, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080714, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080714, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080714, IM9-829-ER, $-480, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080714, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080714, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080714, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080714, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080714, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080714, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080714, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080714, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080714, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080714, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080714, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080714, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080714, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080714, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080714, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080714, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080714, DaxTF, &euro;-625, Number of trades:,2 ,pc time:2251.05</p>
<p>20080714, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080714, PlatESTX50, &euro;-550, Number of trades:,4 ,pc time:2200.00</p>
<p>20080714, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080714, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080714, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080714, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080714, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080714, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080714, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080714, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080714, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080715, DaxTF, Euro-313, Number of trades:,1 ,pc time:1455.59</p>
<p>20080715, PlatESTX50, &euro;70, Number of trades:,1 ,pc time:1455.59</p>
<p>20080715, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080715, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080715, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080715, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080715, EurexTF, &euro;-440, Number of trades:,1 ,pc time:1501.59</p>
<p>20080715, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080715, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080715, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080715, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080715, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080715, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080715, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080715, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080715, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080715, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080715, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080715, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080715, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080715, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080715, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080715, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080715, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080715, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080716, ****************** most cleints did not get the trades below today due to data center outage. sorry :(</p>
<p>&nbsp;</p>
<p>20080716, DaxTF, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080716, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080716, IM9-829-ER, $690, Number of trades:,1 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080716, IM9-829-EMD, $0, Number of trades:,0 , ,reAltime ,pc time:1459.59</p>
<p>20080716, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080716, IM9-829-ER, $690, Number of trades:,1 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080716, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080716, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080716, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080716, pr-trinity, $810, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080716, pr-global, $750, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080716, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080716, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080716, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080716, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080716, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080716, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080716, plater-1m, $750, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080716, pr-ts, $800, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080716, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080716, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080716, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080716, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080716, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080716, DaxTF, &euro;0, Number of trades:,0 ,pc time:2040.56</p>
<p>20080716, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080716, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080716, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080716, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080716, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080716, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080716, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080716, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080716, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080716, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080716, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080717, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080717, PlatESTX50, &euro;710, Number of trades:,1 ,pc time:1454.59</p>
<p>20080717, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080717, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1459.59</p>
<p>Chart time:1500</p>
<p>20080717, IM9-829-ER, $0, Number of trades:,0 , ,reAl-time ,pc time:1501.59</p>
<p>Chart time:1500</p>
<p>20080717, EurexTF, &euro;370, Number of trades:,1 ,pc time:1502.02</p>
<p>20080717, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080717, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080717, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080717, pr-trinity, $460, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080717, plater-1m, $560, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, pr-ts, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, pr-global, $560, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080717, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080717, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080717, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080717, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080717, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080717, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080717, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:930.00</p>
<p>20080718, DaxTF, &euro;0, Number of trades:,1 ,pc time:1454.59</p>
<p>20080718, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080718, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080718, EurexTF, &euro;380, Number of trades:,1 ,pc time:1501.59</p>
<p>20080718, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080718, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080718, pr-trinity, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080718, plater-1m, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, pr-ts, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, pr-global, $90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080718, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080718, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080718, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080718, TurboUltimateER-rw, $-30, Number of trades:,1 ,pc time:1509.59</p>
<p>20080718, TurboUltimateER, $-30, Number of trades:,1 ,pc time:1509.59</p>
<p>20080720, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080721, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080721, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080721, TurboUltimateEMD, $-330, Number of trades:,2 ,pc time:1459.59</p>
<p>20080721, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080721, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080721, pr-trinity, $-280, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080721, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080721, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080721, plater-1m, $-210, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080721, pr-ts, $-210, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080721, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080721, pr-global, $-200, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080721, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080721, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080721, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080721, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080721, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080721, TurboUltimateER-rw, $-530, Number of trades:,2 ,pc time:1509.59</p>
<p>20080721, TurboUltimateER, $-590, Number of trades:,2 ,pc time:1509.59</p>
<p>20080721, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080722, DaxTF, &euro;1450, Number of trades:,1 ,pc time:1454.59</p>
<p>20080722, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080722, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080722, Breakout @ER2.D, $810, Number of trades:,1 ,, real time :1500.59</p>
<p>20080722, Breakout @ES.D, $675, Number of trades:,1 ,, real time :1500.59</p>
<p>20080722, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080722, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080722, pr-trinity, $1020, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080722, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080722, plater-1m, $990, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080722, pr-ts, $1010, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080722, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080722, pr-global, $990, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080722, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080722, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080722, BounceLT@ER2.D, $1550, Number of trades:,0 ,pc time:1504.59</p>
<p>20080722, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080722, TurboUltimateER-rw, $1040, Number of trades:,1 ,pc time:1509.59</p>
<p>20080722, TurboUltimateER, $970, Number of trades:,1 ,pc time:1509.59</p>
<p>20080722, Results delayed by one day TrendfriendER, 840, Number of trades:,0 ,pc time:929.59</p>
<p>20080723, TrendfriendER $840.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080723, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080723, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080723, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080723, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080723, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080723, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080723, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080723, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080723, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080723, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080723, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080723, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:1509.59</p>
<p>20080723, TurboUltimateER, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080723, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080724, DaxTF, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080724, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080724, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080724, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080724, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080724, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080724, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080724, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080724, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080724, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080724, TurboElitesES-Brkoutmodule, $1088, Number of trades:,1 ,pc time:1508.59</p>
<p>20080724, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080724, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080724, ***** all retracements shouldhave traded, only earlybird varients did +$1280) *****</p>
<p>20080724, ***** This was a tradestation data issue. emd was $1560. Im sorry for us all but cant be helped *****</p>
<p>TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>&nbsp;</p>
<p>20080724, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080724, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080724, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080724, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080724, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080725, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080725, PlatESTX50, &euro;-360, Number of trades:,2 ,pc time:1454.59</p>
<p>20080725, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080725, EurexTF, &euro;-10, Number of trades:,1 ,pc time:1501.59</p>
<p>20080725, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080725, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080725, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080725, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080725, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080725, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080725, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080725, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080725, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080725, pr-global, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080725, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080725, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080725, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080725, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080725, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080727, Results delayed by one day TrendfriendER, -30, Number of trades:,0 ,pc time:929.59</p>
<p>20080728, TrendfriendER $-30.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080728, TrendfriendER $20.00 , 1 , -1 ,noTeod, 1430</p>
<p>20080728, DaxTF, &euro;1350, Number of trades:,2 ,pc time:1454.59</p>
<p>20080728, PlatESTX50, &euro;350, Number of trades:,1 ,pc time:1454.59</p>
<p>20080728, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080728, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080728, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080728, pr-trinity, $350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080728, plater-1m, $330, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, pr-ts, $340, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, RetraceEMD, $600, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, pr-global, $330, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080728, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080728, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080728, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080728, Breakout @ER2.D, $320, Number of trades:,1 ,pc time:1505.59</p>
<p>20080728, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080728, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080728, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080728, Results delayed by one day TrendfriendER, 20, Number of trades:,0 ,pc time:929.59</p>
<p>20080729, Breakout @ER2.D, $-140, Number of trades:,1 ,pc time:1344.59</p>
<p>20080729, DaxTF, &euro;0, Number of trades:,1 ,pc time:1454.59</p>
<p>20080729, PlatESTX50, &euro;380, Number of trades:,2 ,pc time:1454.59</p>
<p>20080729, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080729, EurexTF, &euro;290, Number of trades:,1 ,pc time:1501.59</p>
<p>20080729, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080729, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080729, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080729, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080729, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080729, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080729, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080729, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080729, RetraceEMD, $820, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080729, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080729, RetraceER-v2, $470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080729, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080729, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080729, TurboUltimateER-rw, $20, Number of trades:,1 ,pc time:1509.59</p>
<p>20080729, TurboUltimateER, $10, Number of trades:,1 ,pc time:1509.59</p>
<p>20080729, EurexTF, &euro;290, Number of trades:,1 ,pc time:2200.00</p>
<p>20080729, DaxTF, &euro;1313, Number of trades:,1 ,pc time:16.42</p>
<p>20080729, PlatESTX50, &euro;360, Number of trades:,2 ,pc time:2200.00</p>
<p>20080729, DaxTF, &euro;1313, Number of trades:,1 ,pc time:21.09</p>
<p>20080729, EurexTF, &euro;290, Number of trades:,1 ,pc time:2200.00</p>
<p>20080729, PlatESTX50, &euro;360, Number of trades:,2 ,pc time:2200.00</p>
<p>20080729, TurboUltimateER-rw, $30, Number of trades:,1 ,pc time:830.59</p>
<p>20080729, TurboUltimateER, $60, Number of trades:,1 ,pc time:830.59</p>
<p>20080729, TurboUltimateER-rw, $30, Number of trades:,1 ,pc time:831.59</p>
<p>20080729, TurboUltimateER, $60, Number of trades:,1 ,pc time:831.59</p>
<p>20080729, TurboUltimateER-rw, $30, Number of trades:,1 ,pc time:832.59</p>
<p>20080729, TurboUltimateER, $60, Number of trades:,1 ,pc time:832.59</p>
<p>20080729, TurboUltimateER-rw, $30, Number of trades:,1 ,pc time:833.59</p>
<p>20080729, TurboUltimateER, $60, Number of trades:,1 ,pc time:833.59</p>
<p>20080729, Results delayed by one day TrendfriendER, 150, Number of trades:,0 ,pc time:930.09</p>
<p>20080730, TrendfriendER $150.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080730, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080730, PlatESTX50, &euro;70, Number of trades:,2 ,pc time:1454.59</p>
<p>20080730, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080730, EurexTF, &euro;-30, Number of trades:,1 ,pc time:1502.01</p>
<p>20080730, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080730, BounceLT@ER2.D, $1550, Number of trades:,0 ,pc time:1504.59</p>
<p>20080730, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080730, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080730, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080730, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080730, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080730, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080730, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080730, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080730, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080730, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080730, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080730, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080730, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080730, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080730, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080730, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080731, TrendfriendER $-440.00 , 1 , 1 ,noTeod, 1130</p>
<p>20080731, DaxTF, &euro;-625, Number of trades:,2 ,pc time:1454.59</p>
<p>20080731, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080731, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080731, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080731, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080731, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080731, pr-trinity, $-230, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, pr-global, $-410, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080731, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080731, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080731, plater-1m, $-200, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, pr-ts, $-200, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080731, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080731, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080731, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080731, DaxTF, &euro;-625, Number of trades:,2 ,pc time:2100.36</p>
<p>20080731, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080731, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080731, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080731, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080731, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080731, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080731, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080731, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080800, Results delayed by one day TrendfriendER, -440, Number of trades:,1 ,pc time:929.59</p>
<p>20080801, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080801, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080801, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080801, EurexTF, &euro;50, Number of trades:,1 ,pc time:1502.01</p>
<p>20080801, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080801, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080801, pr-trinity, $-230, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080801, pr-global, $-630, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080801, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080801, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080801, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080801, plater-1m, $-210, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080801, pr-ts, $-120, Number of trades:,3 , ,reAltime ,pc time:1504.59</p>
<p>20080801, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080801, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080801, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080801, TurboElitesES-Brkoutmodule, $-50, Number of trades:,1 ,pc time:1508.59</p>
<p>20080801, TurboUltimateER-rw, $-120, Number of trades:,1 ,pc time:1509.59</p>
<p>20080801, TurboUltimateER, $-200, Number of trades:,1 ,pc time:1509.59</p>
<p>20080801, EurexTF, &euro;50, Number of trades:,1 ,pc time:2200.00</p>
<p>20080801, DaxTF, &euro;-313, Number of trades:,1 ,pc time:2320.39</p>
<p>20080801, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080801, EurexTF, &euro;50, Number of trades:,1 ,pc time:2200.00</p>
<p>20080801, DaxTF, &euro;-313, Number of trades:,1 ,pc time:417.26</p>
<p>20080801, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080803, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080804, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1304.59</p>
<p>20080804, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080804, PlatESTX50, &euro;20, Number of trades:,2 ,pc time:1454.59</p>
<p>20080804, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080804, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080804, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080804, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080804, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080804, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080804, RetraceER-v2, $290, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, RetraceER, $290, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, RetraceEMD, $0, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080804, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080804, TurboElitesES-Brkoutmodule, $100, Number of trades:,1 ,pc time:1508.59</p>
<p>20080804, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080804, TurboUltimateER, $0, Number of trades:,0 ,pc time:1509.59</p>
<p>20080804, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080804, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080804, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080804, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080804, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080805, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1310.59</p>
<p>20080805, DaxTF, &euro;0, Number of trades:,1 ,pc time:1454.59</p>
<p>20080805, PlatESTX50, &euro;570, Number of trades:,1 ,pc time:1454.59</p>
<p>20080805, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1500.00</p>
<p>20080805, EurexTF, &euro;470, Number of trades:,1 ,pc time:1501.59</p>
<p>20080805, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080805, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080805, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080805, pr-trinity, $460, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080805, pr-global, $430, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080805, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080805, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080805, plater-1m, $370, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080805, pr-ts, $540, Number of trades:,2 , ,reAltime ,pc time:1504.59</p>
<p>20080805, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080805, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080805, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080805, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080805, TurboUltimateER-rw, $-450, Number of trades:,1 ,pc time:1509.59</p>
<p>20080805, TurboUltimateER, $-480, Number of trades:,1 ,pc time:1509.59</p>
<p>20080805, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:830.59</p>
<p>20080805, TurboUltimateER, $-450, Number of trades:,1 ,pc time:830.59</p>
<p>20080805, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:831.59</p>
<p>20080805, TurboUltimateER, $-450, Number of trades:,1 ,pc time:831.59</p>
<p>20080805, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:832.59</p>
<p>20080805, TurboUltimateER, $-450, Number of trades:,1 ,pc time:832.59</p>
<p>20080805, TurboUltimateER-rw, $-430, Number of trades:,1 ,pc time:833.59</p>
<p>20080805, TurboUltimateER, $-450, Number of trades:,1 ,pc time:833.59</p>
<p>20080805, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080806, DaxTF, &euro;1450, Number of trades:,1 ,pc time:1454.59</p>
<p>20080806, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080806, TurboUltimateER-rw, $10, Number of trades:,1 ,pc time:1459.59</p>
<p>20080806, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080806, TurboUltimateER, $-10, Number of trades:,1 ,pc time:1459.59</p>
<p>20080806, Breakout @EMD.D, $540, Number of trades:,1 ,, real time :1500.59</p>
<p>20080806, EurexTF, &euro;0, Number of trades:,0 ,pc time:1502.03</p>
<p>20080806, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080806, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080806, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080806, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080806, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080806, Breakout @ER2.D, $260, Number of trades:,1 ,pc time:1505.59</p>
<p>20080806, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080806, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080806, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080806, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080806, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080806, DaxTF, &euro;1450, Number of trades:,1 ,pc time:5.49</p>
<p>20080806, EmdTF, $-310, Number of trades:,1 ,pc time:1515.00</p>
<p>20080806, Er2TF, $-300, Number of trades:,1 ,pc time:1515.00</p>
<p>20080806, EmdTF 3 contract version, $-450, Number of trades:,3 ,pc time:1515.00</p>
<p>20080806, EmdTF 3 contract version, $-450, Number of trades:,3 ,pc time:1515.00</p>
<p>20080806, EmdTF 3 contract version, $-450, Number of trades:,3 ,pc time:1515.00</p>
<p>20080806, Er2TF 3 contract version, $-540, Number of trades:,2 ,pc time:1515.00</p>
<p>20080806, Er2TF 2 contract version, $-540, Number of trades:,2 ,pc time:1515.00</p>
<p>20080806, Er2TF 2 contract version, $-540, Number of trades:,2 ,pc time:1515.00</p>
<p>20080806, EmdTF 3 contract version, $-450, Number of trades:,3 ,pc time:1515.00</p>
<p>20080806, Er2TF 2 contract version, $-540, Number of trades:,2 ,pc time:1515.00</p>
<p>20080806, TurboUltimateER-rw, $10, Number of trades:,1 ,pc time:830.59</p>
<p>20080806, TurboUltimateER, $-10, Number of trades:,1 ,pc time:830.59</p>
<p>20080806, TurboUltimateER-rw, $10, Number of trades:,1 ,pc time:831.59</p>
<p>20080806, TurboUltimateER, $-10, Number of trades:,1 ,pc time:831.59</p>
<p>20080806, TurboUltimateER-rw, $10, Number of trades:,1 ,pc time:832.59</p>
<p>20080806, TurboUltimateER, $-10, Number of trades:,1 ,pc time:832.59</p>
<p>20080806, TurboUltimateER-rw, $10, Number of trades:,1 ,pc time:833.59</p>
<p>20080806, TurboUltimateER, $-10, Number of trades:,1 ,pc time:833.59</p>
<p>20080806, Results delayed by one day TrendfriendER, 360, Number of trades:,0 ,pc time:929.59</p>
<p>20080807, TrendfriendER $360.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080807, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080807, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080807, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080807, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080807, TurboUltimateER, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080807, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080807, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080807, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080807, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080807, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080807, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080807, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080807, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080807, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080807, RetraceEMD, $300, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080807, RetraceER-v2, $280, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080807, RetraceER, $280, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080807, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080807, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080807, Er2TF 2 contract version, $1340, Number of trades:,2 ,pc time:1514.59</p>
<p>20080807, EmdTF 3 contract version, $2220, Number of trades:,3 ,pc time:1514.59</p>
<p>20080807, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080807, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080807, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080808, PlatESTX50, &euro;-90, Number of trades:,2 ,pc time:1454.59</p>
<p>20080808, DaxTF, &euro;-625, Number of trades:,2 ,pc time:1454.59</p>
<p>20080808, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080808, TurboUltimateER-rw, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080808, TurboUltimateER, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080808, Breakout @ER2.D, $130, Number of trades:,1 ,, real time :1500.59</p>
<p>20080808, Breakout @ES.D, $338, Number of trades:,1 ,, real time :1500.59</p>
<p>20080808, EurexTF, &euro;220, Number of trades:,1 ,pc time:1501.59</p>
<p>20080808, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, BounceLT@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080808, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, Bounce@ER2.D, $0, Number of trades:,1 ,pc time:1504.59</p>
<p>20080808, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080808, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080808, Breakout @ER2.D, $300, Number of trades:,1 ,pc time:1505.59</p>
<p>20080808, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080808, EmdTF 3 contract version, $0, Number of trades:,3 ,pc time:1514.59</p>
<p>20080808, Er2TF 2 contract version, $-370, Number of trades:,2 ,pc time:1514.59</p>
<p>20080808, PlatESTX50, &euro;-110, Number of trades:,2 ,pc time:2200.00</p>
<p>20080808, PlatESTX50, &euro;-110, Number of trades:,2 ,pc time:2200.00</p>
<p>20080808, Er2TF 2 contract version, $-710, Number of trades:,4 ,pc time:1515.00</p>
<p>20080808, EmdTF 3 contract version, $0, Number of trades:,3 ,pc time:1515.00</p>
<p>20080808, DaxTF, &euro;-625, Number of trades:,2 ,pc time:42.51</p>
<p>20080808, Er2TF 2 contract version, $-710, Number of trades:,4 ,pc time:1515.00</p>
<p>20080808, EurexTF, &euro;220, Number of trades:,1 ,pc time:2200.00</p>
<p>20080808, DaxTF, &euro;-625, Number of trades:,2 ,pc time:50.41</p>
<p>20080808, EmdTF 3 contract version, $0, Number of trades:,3 ,pc time:1515.00</p>
<p>20080808, Er2TF 2 contract version, $-710, Number of trades:,4 ,pc time:1515.00</p>
<p>20080808, EurexTF, &euro;220, Number of trades:,1 ,pc time:2200.00</p>
<p>20080808, PlatESTX50, &euro;-110, Number of trades:,2 ,pc time:2200.00</p>
<p>20080808, EmdTF 3 contract version, $-40, Number of trades:,4 ,pc time:1515.00</p>
<p>20080808, TurboUltimateER-rw, $20, Number of trades:,1 ,pc time:830.59</p>
<p>20080808, TurboUltimateER, $0, Number of trades:,1 ,pc time:830.59</p>
<p>20080808, TurboUltimateER-rw, $20, Number of trades:,1 ,pc time:831.59</p>
<p>20080808, TurboUltimateER, $0, Number of trades:,1 ,pc time:831.59</p>
<p>20080808, TurboUltimateER-rw, $20, Number of trades:,1 ,pc time:832.59</p>
<p>20080808, TurboUltimateER, $0, Number of trades:,1 ,pc time:832.59</p>
<p>20080808, TurboUltimateER-rw, $20, Number of trades:,1 ,pc time:833.59</p>
<p>20080808, TurboUltimateER, $0, Number of trades:,1 ,pc time:833.59</p>
<p>20080810, Results delayed by one day TrendfriendER, 220, Number of trades:,0 ,pc time:929.59</p>
<p>20080811, TrendfriendER $220.00 , 1 , 0 ,noTeod, 1030</p>
<p>20080811, Breakout @ER2.D, $1130, Number of trades:,1 ,pc time:1323.59</p>
<p>20080811, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080811, PlatESTX50, &euro;-410, Number of trades:,8 ,pc time:1454.59</p>
<p>20080811, TurboUltimateER-rw, $590, Number of trades:,1 ,pc time:1459.59</p>
<p>20080811, TurboUltimateER, $580, Number of trades:,1 ,pc time:1459.59</p>
<p>20080811, TurboUltimateEMD, $160, Number of trades:,1 ,pc time:1459.59</p>
<p>20080811, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080811, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080811, BounceLT@ER2.D, $1550, Number of trades:,0 ,pc time:1504.59</p>
<p>20080811, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080811, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080811, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080811, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, RetraceEMD, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080811, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080811, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080811, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080811, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080812, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080812, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1454.59</p>
<p>20080812, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080812, TurboUltimateER, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080812, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080812, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080812, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080812, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080812, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080812, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080812, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080812, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080812, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080812, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080812, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080812, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080812, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1505.00</p>
<p>20080812, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1505.00</p>
<p>20080812, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1505.00</p>
<p>20080812, TurboElitesES-Brkoutmodule, $63, Number of trades:,1 ,pc time:1508.59</p>
<p>20080812, EurexTF, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080812, DaxTF, &euro;-313, Number of trades:,1 ,pc time:2014.50</p>
<p>20080812, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080812, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080812, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080812, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080812, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080812, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080812, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080812, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080812, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080812, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080813, Breakout @ER2.D, $-410, Number of trades:,1 ,pc time:1225.59</p>
<p>20080813, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080813, PlatESTX50, &euro;480, Number of trades:,1 ,pc time:1454.59</p>
<p>20080813, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080813, TurboUltimateER, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080813, TurboUltimateEMD, $-330, Number of trades:,1 ,pc time:1459.59</p>
<p>20080813, EurexTF, &euro;80, Number of trades:,1 ,pc time:1501.59</p>
<p>20080813, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080813, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080813, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080813, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080813, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080813, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080813, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080813, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080813, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080813, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080813, RetraceER-v2, $470, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080813, RetraceER, $450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080813, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080813, TurboElitesES-Brkoutmodule, $-425, Number of trades:,1 ,pc time:1508.59</p>
<p>20080813, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080813, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080813, EurexTF, &euro;80, Number of trades:,1 ,pc time:2200.00</p>
<p>20080813, PlatESTX50, &euro;430, Number of trades:,1 ,pc time:2200.00</p>
<p>20080813, DaxTF, &euro;-313, Number of trades:,1 ,pc time:2338.30</p>
<p>20080813, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080813, TurboUltimateER, $0, Number of trades:,0 ,pc time:830.59</p>
<p>20080813, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080813, TurboUltimateER, $0, Number of trades:,0 ,pc time:831.59</p>
<p>20080813, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080813, TurboUltimateER, $0, Number of trades:,0 ,pc time:832.59</p>
<p>20080813, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080813, TurboUltimateER, $0, Number of trades:,0 ,pc time:833.59</p>
<p>20080813, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080814, TrendfriendER $-440.00 , 1 , 1 ,noTeod, 1330</p>
<p>20080814, Breakout @ER2.D, $-270, Number of trades:,1 ,pc time:1428.59</p>
<p>20080814, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080814, PlatESTX50, &euro;-920, Number of trades:,8 ,pc time:1454.59</p>
<p>20080814, TurboUltimateER-rw, $-660, Number of trades:,2 ,pc time:1459.59</p>
<p>20080814, TurboUltimateEMD, $-190, Number of trades:,2 ,pc time:1459.59</p>
<p>20080814, TurboUltimateER, $-700, Number of trades:,2 ,pc time:1459.59</p>
<p>20080814, EurexTF, &euro;-110, Number of trades:,1 ,pc time:1501.59</p>
<p>20080814, RetraceER-v2, $-80, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, RetraceEMD, $0, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, RetraceER, $-100, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080814, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080814, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080814, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080814, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080814, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080814, plater-1m, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, pr-ts, $-260, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, pr-trinity, $-350, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, pr-global, $-450, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080814, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080814, Bounce@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>20080814, BounceLT@EMD.D, $0, Number of trades:,0 ,pc time:1516.59</p>
<p>These results are hypothetical, and are simply what tradestation reported</p>
<p>the fills for the day EXCLUDING any brokerage costs &amp; slippage.</p>
<p>Real fills will be worse than published figures. There is no guarantee</p>
<p>that these published fills will match actual fills.There may be mistakes</p>
<p>in these figures.</p>
<p>20080814, PlatESTX50, &euro;-170, Number of trades:,3 ,pc time:2200.00</p>
<p>20080814, Results delayed by one day TrendfriendER, -440, Number of trades:,0 ,pc time:930.00</p>
<p>20080815, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080815, PlatESTX50, &euro;-30, Number of trades:,1 ,pc time:1454.59</p>
<p>20080815, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080815, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080815, TurboUltimateER, $0, Number of trades:,0 ,pc time:1459.59</p>
<p>20080815, Breakout @ES.D, $-113, Number of trades:,1 ,, real time :1500.59</p>
<p>20080815, EurexTF, &euro;-100, Number of trades:,1 ,pc time:1501.59</p>
<p>20080815, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080815, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080815, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080815, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080815, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080815, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080815, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080815, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080815, plater-1m, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080815, pr-ts, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080815, pr-trinity, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080815, pr-global, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080815, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080817, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080818, DaxTF, &euro;-313, Number of trades:,1 ,pc time:1454.59</p>
<p>20080818, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:1455.00</p>
<p>20080818, TurboUltimateER-rw, $910, Number of trades:,1 ,pc time:1459.59</p>
<p>20080818, TurboUltimateEMD, $0, Number of trades:,1 ,pc time:1459.59</p>
<p>20080818, TurboUltimateER, $900, Number of trades:,1 ,pc time:1459.59</p>
<p>20080818, EurexTF, &euro;0, Number of trades:,0 ,pc time:1501.59</p>
<p>20080818, RetraceEMD, $-370, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, RetraceER-v2, $-320, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, RetraceER, $-390, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080818, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080818, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080818, Breakout @ER2.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080818, Breakout @ES.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080818, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080818, plater-1m, $960, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, pr-ts, $960, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, pr-trinity, $840, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, pr-global, $910, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080818, Breakout @ER2.D, $700, Number of trades:,1 ,pc time:1505.59</p>
<p>20080818, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>
<p>20080818, PlatESTX50, &euro;0, Number of trades:,0 ,pc time:2200.00</p>
<p>20080818, TurboUltimateER-rw, $990, Number of trades:,1 ,pc time:830.59</p>
<p>20080818, TurboUltimateER, $970, Number of trades:,1 ,pc time:830.59</p>
<p>20080818, TurboUltimateER-rw, $990, Number of trades:,1 ,pc time:831.59</p>
<p>20080818, TurboUltimateER, $970, Number of trades:,1 ,pc time:831.59</p>
<p>20080818, TurboUltimateER-rw, $990, Number of trades:,1 ,pc time:832.59</p>
<p>20080818, TurboUltimateER, $970, Number of trades:,1 ,pc time:832.59</p>
<p>20080818, TurboUltimateER-rw, $990, Number of trades:,1 ,pc time:833.59</p>
<p>20080818, TurboUltimateER, $970, Number of trades:,1 ,pc time:833.59</p>
<p>20080818, Results delayed by one day TrendfriendER, 0, Number of trades:,0 ,pc time:929.59</p>
<p>20080819, DaxTF, &euro;1138, Number of trades:,2 ,pc time:1454.59</p>
<p>20080819, PlatESTX50, &euro;420, Number of trades:,1 ,pc time:1454.59</p>
<p>20080819, TurboUltimateER-rw, $0, Number of trades:,0 ,pc time:1500.00</p>
<p>20080819, TurboUltimateEMD, $0, Number of trades:,0 ,pc time:1500.00</p>
<p>20080819, TurboUltimateER, $0, Number of trades:,0 ,pc time:1500.00</p>
<p>20080819, Breakout @ER2.D, $10, Number of trades:,1 ,, real time :1500.59</p>
<p>20080819, Breakout @ER2.D, $-10, Number of trades:,1 ,, real time :1500.59</p>
<p>20080819, Breakout @ES.D, $-100, Number of trades:,1 ,, real time :1500.59</p>
<p>20080819, EurexTF, &euro;130, Number of trades:,1 ,pc time:1501.59</p>
<p>20080819, RetraceEMD, $-90, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080819, RetraceER-v2, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080819, RetraceER, $0, Number of trades:,0 , ,reAltime ,pc time:1504.59</p>
<p>20080819, Bounce@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080819, Breakout @EMD.D, $0, Number of trades:,0 ,, real time :1504.59</p>
<p>20080819, BounceLT@ER2.D, $0, Number of trades:,0 ,pc time:1504.59</p>
<p>20080819, plater-1m, $-20, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080819, pr-ts, $130, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080819, pr-trinity, $150, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080819, pr-global, $0, Number of trades:,1 , ,reAltime ,pc time:1504.59</p>
<p>20080819, TurboElitesES-Brkoutmodule, $0, Number of trades:,0 ,pc time:1508.59</p>', CAST(0x00009AFE00B73505 AS DateTime), 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Pages] OFF
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 06/30/2010 10:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Users__03317E3D] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2b599bda-9efc-4df8-a718-e752359e446e', N'71c183bc-c813-48d5-bc0d-d30d1e366c6e', N'abcd', N'abcd', NULL, 0, CAST(0x00009A9401735BCB AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'2b599bda-9efc-4df8-a718-e752359e446e', N'690d8aef-c2e2-4961-8a65-1a45f41e386d', N'admin', N'admin', NULL, 0, CAST(0x00009DA400EDBF74 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 06/30/2010 10:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__aspnet_Paths__44FF419A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_Roles__31EC6D26] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'2b599bda-9efc-4df8-a718-e752359e446e', N'f0d309f1-96a4-42a3-9d05-c92c5a19d008', N'Admins', N'admins', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4D94879B] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Profile__286302EC] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
 CONSTRAINT [PK__aspnet_Membershi__1367E606] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2b599bda-9efc-4df8-a718-e752359e446e', N'690d8aef-c2e2-4961-8a65-1a45f41e386d', N'lHbGXtGwUwI6SeEbpj4AFEV6KWs=', 1, N'K0trCyiJHZPqXfUk1Uruog==', NULL, N'admin@site.com', N'admin@site.com', NULL, NULL, 1, 0, CAST(0x00009A71001EDF20 AS DateTime), CAST(0x00009DA400EDBF74 AS DateTime), CAST(0x00009D59001245E5 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'2b599bda-9efc-4df8-a718-e752359e446e', N'71c183bc-c813-48d5-bc0d-d30d1e366c6e', N'C0aUUI4VcIfLn6fkUKi5OWw+em8=', 1, N'K/8l3OMaI+i2CqPdV58gFQ==', NULL, N'cj@emagid.com', N'cj@emagid.com', NULL, NULL, 1, 0, CAST(0x00009A94012BED40 AS DateTime), CAST(0x00009A9401735BCB AS DateTime), CAST(0x00009A94012BED40 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0x00009D43016593F4 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_Personali__4AB81AF0] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 06/30/2010 10:10:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_UsersInRo__35BCFE0A] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'690d8aef-c2e2-4961-8a65-1a45f41e386d', N'f0d309f1-96a4-42a3-9d05-c92c5a19d008')
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 06/30/2010 10:10:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 06/30/2010 10:10:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 06/30/2010 10:10:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, @CurrentTimeUtc, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 06/30/2010 10:10:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 06/30/2010 10:10:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 06/30/2010 10:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 06/30/2010 10:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 06/30/2010 10:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 06/30/2010 10:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 06/30/2010 10:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__014935CB]    Script Date: 06/30/2010 10:10:23 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__014935CB]  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF_Categories_ParentId]    Script Date: 06/30/2010 10:10:33 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF_Categories_DateAdded]    Script Date: 06/30/2010 10:10:33 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
/****** Object:  Default [DF_Categories_DisplayOrder]    Script Date: 06/30/2010 10:10:33 ******/
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
/****** Object:  Default [DF_Products_DateCreated]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Products_DisplayOrder]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
/****** Object:  Default [DF_Products_CategoryId]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_CategoryId]  DEFAULT ((0)) FOR [CategoryId]
GO
/****** Object:  Default [DF_Products_Price]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Price]  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  Default [DF_Products_IsFeatured]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_IsFeatured]  DEFAULT ((0)) FOR [IsFeatured]
GO
/****** Object:  Default [DF_Pages_DateCreated]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Pages] ADD  CONSTRAINT [DF_Pages_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Pages_DisplayOrder]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Pages] ADD  CONSTRAINT [DF_Pages_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0519C6AF]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0519C6AF]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__060DEAE8]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__060DEAE8]  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__07020F21]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__07020F21]  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__46E78A0C]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__46E78A0C]  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__33D4B598]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__33D4B598]  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__4E88ABD4]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__4E88ABD4]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__164452B1]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__164452B1]  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  ForeignKey [FK_Products_Categories]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  ForeignKey [FK_Pages_PageCategories]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[Pages]  WITH NOCHECK ADD  CONSTRAINT [FK_Pages_PageCategories] FOREIGN KEY([PageCatId])
REFERENCES [dbo].[PageCategories] ([PageCatId])
GO
ALTER TABLE [dbo].[Pages] NOCHECK CONSTRAINT [FK_Pages_PageCategories]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0425A276]    Script Date: 06/30/2010 10:10:35 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0425A276] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0425A276]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__45F365D3]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__45F365D3]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__32E0915F]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__32E0915F]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4F7CD00D]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4F7CD00D]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__5070F446]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__5070F446] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__5070F446]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__29572725]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__29572725] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__29572725]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__145C0A3F]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__145C0A3F]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__15502E78]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__15502E78] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__15502E78]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4BAC3F29]    Script Date: 06/30/2010 10:10:36 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__4BAC3F29]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__37A5467C]    Script Date: 06/30/2010 10:10:37 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__37A5467C]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__36B12243]    Script Date: 06/30/2010 10:10:37 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__36B12243] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__36B12243]
GO
