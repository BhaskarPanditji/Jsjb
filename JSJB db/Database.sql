USE [WebSpaceIND_JSJB]
GO
/****** Object:  View [dbo].[view_Products]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[view_Products]
AS
select P.[ProductID],P.[CategoryID],C.[Category],P.[SubCategoryID],S.[SubCategory],P.[ProductName],P.[UnitID],U.[Unit],P.[IsGSTApplicable],CASE (P.[IsGSTApplicable]) WHEN '0' THEN 'No' WHEN '1' THEN 'Yes' END AS [GSTApplicable],P.[GSTPercent],P.[Rate],P.[ProductImage],P.[ProductStatusID],CASE (P.[ProductStatusID]) WHEN '0' THEN 'Active' WHEN '1' THEN 'Inactive' END AS [ProductStatus]
    from [tblProducts] AS P
	INNER JOIN [tblCategory] AS C ON C.[CategoryID] = P.[CategoryID]
	INNER JOIN [tblSubCategory] AS S ON S.[SubCategoryID] = P.[SubCategoryID]
	INNER JOIN [tblUnit] AS U ON U.[UnitID] = P.[UnitID]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[Category] [nvarchar](250) NOT NULL,
	[CategoryIcon] [nvarchar](200) NULL,
	[CategoryImage] [nvarchar](200) NULL,
	[CategoryStatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerType] [int] NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ContactNo] [varchar](15) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[StateID] [int] NOT NULL,
	[LandMark] [nvarchar](150) NULL,
	[Pincode] [varchar](10) NULL,
	[EmailID] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[CustomerStatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFirmRegistration]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFirmRegistration](
	[FirmID] [int] IDENTITY(1,1) NOT NULL,
	[FirmName] [nvarchar](200) NOT NULL,
	[RegistrationNo] [nvarchar](100) NULL,
	[RegistrationDate] [date] NULL,
	[OwnerName] [nvarchar](200) NULL,
	[OwnerFatherName] [nvarchar](200) NULL,
	[OwnerDOB] [date] NULL,
	[OwnerAadhar] [nvarchar](20) NULL,
	[OwnerAadharFile] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](20) NULL,
	[AlternateMobile] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[Website] [nvarchar](200) NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[StateID] [int] NULL,
	[Landmark] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[BankName] [nvarchar](200) NULL,
	[AccountHolderName] [nvarchar](200) NULL,
	[AccountNumber] [nvarchar](50) NULL,
	[IFSC] [nvarchar](20) NULL,
	[BranchName] [nvarchar](200) NULL,
	[PAN] [nvarchar](20) NULL,
	[PANFile] [nvarchar](max) NULL,
	[GSTIN] [nvarchar](20) NULL,
	[GSTFile] [nvarchar](max) NULL,
	[MSMEUdyamNo] [nvarchar](50) NULL,
	[MSMEUdyamFile] [nvarchar](max) NULL,
	[FirmLogo] [nvarchar](max) NULL,
	[FirmBardCode] [nvarchar](max) NULL,
	[FirmQRCode] [nvarchar](max) NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[FirmStatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FirmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLogin]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[EmailID] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategoryID] [int] NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[UnitID] [int] NOT NULL,
	[IsGSTApplicable] [int] NOT NULL,
	[GSTPercent] [decimal](5, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[ProductImage] [nvarchar](200) NULL,
	[ProductStatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblService]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblService](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Service] [nvarchar](150) NOT NULL,
	[Icon] [nvarchar](150) NULL,
	[Image] [nvarchar](200) NULL,
	[StatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSlider]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSlider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[StateCode] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSubCategory]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSubCategory](
	[SubCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumber] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[SubCategory] [nvarchar](250) NOT NULL,
	[SubCategoryIcon] [nvarchar](200) NULL,
	[SubCategoryImage] [nvarchar](200) NULL,
	[SubCategoryStatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSupplier]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSupplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[FirmName] [nvarchar](150) NOT NULL,
	[ContactPerson] [nvarchar](100) NOT NULL,
	[ContactNo] [varchar](15) NOT NULL,
	[Address] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[StateID] [int] NOT NULL,
	[LandMark] [nvarchar](150) NULL,
	[Pincode] [varchar](10) NULL,
	[EmailID] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[StatusID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUnit]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUnit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD  CONSTRAINT [FK_tblCustomer_tblState] FOREIGN KEY([StateID])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblCustomer] CHECK CONSTRAINT [FK_tblCustomer_tblState]
GO
ALTER TABLE [dbo].[tblFirmRegistration]  WITH CHECK ADD  CONSTRAINT [FK_tblFirmRegistration_tblState] FOREIGN KEY([StateID])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblFirmRegistration] CHECK CONSTRAINT [FK_tblFirmRegistration_tblState]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_tblCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_tblCategory]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_tblSubCategory] FOREIGN KEY([SubCategoryID])
REFERENCES [dbo].[tblSubCategory] ([SubCategoryID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_tblSubCategory]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_tblUnit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[tblUnit] ([UnitID])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_tblUnit]
GO
ALTER TABLE [dbo].[tblSubCategory]  WITH CHECK ADD  CONSTRAINT [FK_tblSubCategory_tblCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[tblSubCategory] CHECK CONSTRAINT [FK_tblSubCategory_tblCategory]
GO
ALTER TABLE [dbo].[tblSupplier]  WITH CHECK ADD  CONSTRAINT [FK_tblSupplier_tblService] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[tblService] ([ServiceID])
GO
ALTER TABLE [dbo].[tblSupplier] CHECK CONSTRAINT [FK_tblSupplier_tblService]
GO
ALTER TABLE [dbo].[tblSupplier]  WITH CHECK ADD  CONSTRAINT [FK_tblSupplier_tblState] FOREIGN KEY([StateID])
REFERENCES [dbo].[tblState] ([StateID])
GO
ALTER TABLE [dbo].[tblSupplier] CHECK CONSTRAINT [FK_tblSupplier_tblState]
GO
/****** Object:  StoredProcedure [dbo].[prc_Category]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[prc_Category]
(
    @ID NVARCHAR(MAX),          -- 1 = Insert, 2 = Update, 3 = Select All
	@SerialNumber INT ,
    @Category NVARCHAR(250),
    @CategoryIcon NVARCHAR(200),
    @CategoryImage NVARCHAR(200),
    @CategoryStatusID INT ,
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        INSERT INTO [tblCategory] ([SerialNumber],[Category],[CategoryIcon],[CategoryImage],[CategoryStatusID])
        VALUES (@SerialNumber, @Category, @CategoryIcon, @CategoryImage,@CategoryStatusID);
    END
    ELSE IF (@ID = '2')
    BEGIN
        UPDATE [tblCategory]
        SET [SerialNumber]=@SerialNumber,[Category]=@Category,[CategoryIcon]=@CategoryIcon,[CategoryImage]=@CategoryImage,[CategoryStatusID]=@CategoryStatusID
        WHERE [CategoryID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_Customer]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prc_Customer]
(
    @ID NVARCHAR(MAX),            -- 1 = Insert, 2 = Update, 3 = Select All
    @Name NVARCHAR(150),
    @ContactNo VARCHAR(15),
    @Address NVARCHAR(250),
    @City NVARCHAR(100),
    @StateID INT ,
    @LandMark NVARCHAR(150),
    @Pincode VARCHAR(10),
    @EmailID NVARCHAR(150),
    @Password NVARCHAR(150),
    @StatusID INT,
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        -- Insert new customer
        INSERT INTO [tblCustomer] 
            ([Name], [ContactNo], [Address], [City], [StateID], [LandMark], [Pincode], [EmailID],[Password], [StatusID])
        VALUES 
            (@Name, @ContactNo, @Address, @City, @StateID, @LandMark, @Pincode, @EmailID,@Password, @StatusID);
    END
    ELSE IF (@ID = '2')
    BEGIN
        -- Update existing customer
        UPDATE [tblCustomer]
        SET 
            [Name] = @Name,
            [ContactNo] = @ContactNo,
            [Address] = @Address,
            [City] = @City,
            [StateID] = @StateID,
            [LandMark] = @LandMark,
            [Pincode] = @Pincode,
            [EmailID] = @EmailID,
            [Password]=@Password,
            [StatusID] = @StatusID
        WHERE [CustomerID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_Delete]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prc_Delete]
(
    @CID VARCHAR(MAX),     -- Table identifier
    @EditID VARCHAR(MAX)   -- Record ID to delete
)
as begin

    if (@CID = '1')
        delete from [tblSlider] where [ID] = @EditID;
    if (@CID = '2')
        delete from [tblState] where [StateID] = @EditID;
	if (@CID = '3')
        delete from [tblUnit] where [UnitID] = @EditID;
	if(@CID = '4')
        delete from [tblService] where [ServiceID] = @EditID;
	if(@CID = '5')
        delete from [tblProducts] where [ProductID] = @EditID;
	if(@CID = '6')
        delete from [tblCustomer] where [CustomerID] = @EditID;
	if(@CID = '7')
        delete from [tblSupplier] where [SupplierID] = @EditID;
	if(@CID = '8')
        delete from [tblCategory] where [CategoryID] = @EditID;
	if(@CID = '9')
        delete from [tblSubCategory] where [SubCategoryID] = @EditID;
end
GO
/****** Object:  StoredProcedure [dbo].[prc_Products]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[prc_Products]
(
    @ID NVARCHAR(MAX),           -- 1 = Insert, 2 = Update, 3 = Select
    @CategoryID INT ,
    @SubCategoryID INT ,
    @ProductName NVARCHAR(150),
    @UnitID INT ,
    @IsGSTApplicable INT,
    @GSTPercent DECIMAL(5,2),
    @Rate DECIMAL(18,2),
    @ProductImage NVARCHAR(200),
    @ProductStatusID INT,
    @EditID NVARCHAR(MAX) = NULL
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        INSERT INTO [tblProducts]
            ([CategoryID],[SubCategoryID], [ProductName], [UnitID], [IsGSTApplicable], [GSTPercent], [Rate], [ProductImage], [ProductStatusID])
        VALUES
            (@CategoryID,@SubCategoryID, @ProductName, @UnitID, @IsGSTApplicable, @GSTPercent, @Rate, @ProductImage, @ProductStatusID);
    END
    ELSE IF (@ID = '2')
    BEGIN
        UPDATE [tblProducts]
        SET
        [CategoryID]=@CategoryID,
            [SubCategoryID] = @SubCategoryID,
            [ProductName] = @ProductName,
            [UnitID] = @UnitID,
            [IsGSTApplicable] = @IsGSTApplicable,
            [GSTPercent] = @GSTPercent,
            [Rate] = @Rate,
            [ProductImage] = @ProductImage,
            [ProductStatusID] = @ProductStatusID
        WHERE [ProductID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_Search]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[prc_Search]
	(
	@CID varchar(max),
	@SCommand1 varchar(max),
	@SCommand2 varchar(max),
	@SCommand3 varchar(max),
	@SCommand4 varchar(max)
	)
	as begin
	if(@CID='1')
	select * from [tblLogin] where [UserName]=@SCommand1 OR[EmailID]=@SCommand1 AND [Password]=@SCommand2
	if(@CID='2')
	select * from [tblLogin] where [EmailID]=@SCommand1
	if(@CID='3')
	select * from [tblState]  order by [State] asc
	if(@CID='4')
	select * from [tblState] where [StateID]=@SCommand1
	if(@CID='5')
	select * from [tblState] where [State]=@SCommand1
	if(@CID='6')
	select * from [tblState] where [StateCode]=@SCommand1
	if(@CID='7')
	select * from [tblUnit] order by [Unit] asc
	if(@CID='8')
	select * from [tblUnit] where [UnitID]=@SCommand1
	if(@CID='9')
	select * from [tblUnit] where [Unit]=@SCommand1
	if(@CID='10')
	select [ServiceID],[Service],[Icon],[Image],[StatusID],CASE ([StatusID]) WHEN '0' THEN 'Active' WHEN '1' THEN 'Inactive' END AS [Status]
	from [tblService] order by [Service] asc
	if(@CID='11')
	select * from [tblService] where [ServiceID]=@SCommand1
	if(@CID='12')
	select * from [tblService] where [Service]=@SCommand1
	if(@CID='13')
	select [ServiceID],[Service] from [tblService] where [StatusID]=@SCommand1 order by [Service] asc
	if(@CID='14')
	select [UnitID],[Unit] from [tblUnit] order by [Unit] asc
	if(@CID='15')
	select * from [view_Products] order by [ProductName] asc
	if(@CID='16')
	select * from [tblProducts] where [ProductID]=@SCommand1
	if(@CID='17')
	select * from [tblProducts] where [CategoryID]=@SCommand1 AND [CategoryID]=@SCommand2 AND [ProductName]=@SCommand3
	if(@CID='18')
	select [StateID],[State] from [tblState]  order by [State] asc
	if(@CID='19')
	select C.[CustomerID],C.[Name],C.[ContactNo],C.[Address],C.[City],C.[StateID],S.[State],C.[LandMark],C.[Pincode],C.[EmailID],C.[Password],C.[CustomerStatusID],CASE (C.[CustomerStatusID]) WHEN '0' THEN 'Active' WHEN '1' THEN 'Inactive' END AS [CustomerStatus]
	from [tblCustomer] AS C
	INNER JOIN [tblState] AS S ON S.[StateID] = C.[StateID]
	order by C.[Name] asc
	if(@CID='20')
	select * from [tblCustomer] where [CustomerID]=@SCommand1
	if(@CID='21')
	select * from [tblCustomer] where [ContactNo]=@SCommand1
	if(@CID='22')
	select * from [tblCustomer] where [EmailID]=@SCommand1
	if(@CID='23')
	select SUP.[SupplierID],SUP.[ServiceID],SER.[Service],SUP.[FirmName],SUP.[ContactPerson],SUP.[ContactNo],SUP.[Address],SUP.[City],SUP.[StateID],S.[State],SUP.[LandMark],SUP.[Pincode],SUP.[EmailID],SUP.[Password],SUP.[StatusID],CASE (SUP.[StatusID]) WHEN '0' THEN 'Active' WHEN '1' THEN 'Inactive' END AS [Status]
	from [tblSupplier] AS SUP
	INNER JOIN [tblService] AS SER ON SER.[ServiceID] = SUP.[ServiceID]
	INNER JOIN [tblState] AS S ON S.[StateID] = SUP.[StateID]
	order by SUP.[ContactPerson] asc
	if(@CID='24')
	select * from [tblSupplier] where [SupplierID]=@SCommand1
	if(@CID='25')
	select [CategoryID],[SerialNumber],[Category],[CategoryIcon],[CategoryImage],[CategoryStatusID],CASE ([CategoryStatusID]) WHEN '0' THEN 'Active' WHEN '1' THEN 'Inactive' END AS [CategoryStatus]
	from [tblCategory]  order by [Category] asc
	if(@CID='26')
	select * from [tblCategory] where [CategoryID]=@SCommand1
	if(@CID='27')
	select * from [tblCategory] where [Category]=@SCommand1
	if(@CID='28')
	select [CategoryID],[Category] from [tblCategory] order by [SerialNumber] asc
	if(@CID='29')
	select [CategoryID],[Category] from [tblCategory] order by [Category] asc
	if(@CID='30')
	select [CategoryID],[Category] from [tblCategory] where [CategoryStatusID]=@SCommand1 order by [SerialNumber] asc
	if(@CID='31')
	select [CategoryID],[Category] from [tblCategory] where [CategoryStatusID]=@SCommand1 order by [Category] asc
	if(@CID='32')
	select SC.[SubCategoryID],SC.[SerialNumber],SC.[CategoryID],C.[Category],SC.[SubCategory],SC.[SubCategoryIcon],SC.[SubCategoryImage],SC.[SubCategoryStatusID],CASE (SC.[SubCategoryStatusID]) WHEN '0' THEN 'Active' WHEN '1' THEN 'Inactive' END AS [SubCategoryStatus]
	from [tblSubCategory] AS SC
	INNER JOIN [tblCategory] AS C ON C.[CategoryID] = SC.[CategoryID]
	order by C.[Category] asc
	if(@CID='33')
	select * from [tblSubCategory] where [CategoryID]=@SCommand1 
	if(@CID='34')
	select * from [tblSubCategory] where [SubCategoryID]=@SCommand1
	if(@CID='35')
	select * from [tblSubCategory] where [CategoryID]=@SCommand1 AND [SubCategory]=@SCommand2
	if(@CID='36')
	select [SubCategoryID],[SubCategory] from [tblSubCategory] order by [SerialNumber] asc
	if(@CID='37')
	select [SubCategoryID],[SubCategory] from [tblSubCategory] order by [SubCategory] asc
	if(@CID='38')
	select [SubCategoryID],[SubCategory] from [tblSubCategory] where [CategoryID]=@SCommand1 AND [SubCategoryStatusID]=@SCommand2 order by [SerialNumber] asc
	if(@CID='39')
	select [SubCategoryID],[SubCategory] from [tblSubCategory] where [CategoryID]=@SCommand1 AND [SubCategoryStatusID]=@SCommand2 order by [SubCategory] asc
	if(@CID='40')
	select [SubCategoryID],[SubCategory] from [tblSubCategory] where [SubCategoryStatusID]=@SCommand1 order by [SerialNumber] asc
	if(@CID='41')
	select * from [view_Products] where [ProductStatusID]=@SCommand1
	if(@CID='42')
	select * from [view_Products] where [CategoryID]=@SCommand1 AND [ProductStatusID]=@SCommand2
	if(@CID='43')
	select * from [view_Products] where [SubCategoryID]=@SCommand1 AND [ProductStatusID]=@SCommand2
	if(@CID='44')
	select * from [view_Products] where [CategoryID]=@SCommand1 AND[SubCategoryID]=@SCommand2 AND [ProductStatusID]=@SCommand3
	if(@CID='45')
	SELECT FR.[FirmID],FR.[FirmName],FR.[RegistrationNo],FR.[RegistrationDate],FR.[OwnerName],FR.[OwnerFatherName],FR.[OwnerDOB],FR.[OwnerAadhar],FR.[OwnerAadharFile],FR.[ContactNo],FR.[AlternateMobile],FR.[Email],FR.[Website],FR.[Address],FR.[City],FR.[StateID],S.[State],FR.[Landmark],FR.[Pincode],FR.[BankName],FR.[AccountHolderName],FR.[AccountNumber],FR.[IFSC],FR.[BranchName],FR.[PAN],FR.[PANFile],FR.[GSTIN],FR.[GSTFile],FR.[MSMEUdyamNo],FR.[MSMEUdyamFile],FR.[FirmLogo],FR.[FirmBardCode],FR.[FirmQRCode],FR.[Username],FR.[Password],FR.[FirmStatusID]
	FROM [tblFirmRegistration] AS FR
	INNER JOIN [tblState] AS S ON S.[StateID] = FR.[StateID]
	order by FR.[FirmName] asc
	if(@CID='46')
	select * from [tblFirmRegistration] where [FirmID]=@SCommand1
	if(@CID='47')
	select * from [tblFirmRegistration] where [FirmName]=@SCommand1
	if(@CID='48')
	select [FirmID],[FirmName],[FirmLogo] from [tblFirmRegistration]
	where [FirmStatusID] =@SCommand1 ORDER BY FirmName;

	end
GO
/****** Object:  StoredProcedure [dbo].[prc_Service]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[prc_Service]
(
    @ID NVARCHAR(MAX),          -- 1 = Insert, 2 = Update, 3 = Select All
    @Service NVARCHAR(150),
    @Icon NVARCHAR(150),
    @Image NVARCHAR(200),
    @StatusID INT ,
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        -- Insert new service
        INSERT INTO [tblService] ([Service], [Icon], [Image], [StatusID])
        VALUES (@Service, @Icon, @Image, @StatusID);
    END
    ELSE IF (@ID = '2')
    BEGIN
        -- Update existing service
        UPDATE [tblService]
        SET 
            [Service] = @Service,
            [Icon] = @Icon,
            [Image] = @Image,
            [StatusID] = @StatusID
        WHERE [ServiceID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_Slider]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prc_Slider]
(
@ID nvarchar(max),
@Image nvarchar(max),
@EditID nvarchar(max)
)
as begin
if(@ID='1')
insert into [tblSlider] ([Image])
       values  (@Image)

	   end


GO
/****** Object:  StoredProcedure [dbo].[prc_State]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[prc_State]
(
    @ID NVARCHAR(MAX),       -- 1 = Insert, 2 = Update, 3 = Select All
    @State NVARCHAR(100),
    @StateCode NVARCHAR(50),
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        INSERT INTO [tblState] ([State], [StateCode])
        VALUES (@State, @StateCode);
    END
    ELSE IF (@ID = '2')
    BEGIN
        UPDATE [tblState]
        SET [State] = @State,
            [StateCode] = @StateCode
        WHERE [StateID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_SubCategory]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create proc [dbo].[prc_SubCategory]
(
    @ID NVARCHAR(MAX),          -- 1 = Insert, 2 = Update, 3 = Select All
	@SerialNumber INT ,
	@CategoryID INT ,
    @SubCategory NVARCHAR(250),
    @SubCategoryIcon NVARCHAR(200),
    @SubCategoryImage NVARCHAR(200),
    @SubCategoryStatusID INT ,
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        INSERT INTO [tblSubCategory] ([SerialNumber],[CategoryID],[SubCategory],[SubCategoryIcon],[SubCategoryImage],[SubCategoryStatusID])
        VALUES (@SerialNumber,@CategoryID, @SubCategory, @SubCategoryIcon, @SubCategoryImage,@SubCategoryStatusID);
    END
    ELSE IF (@ID = '2')
    BEGIN
        UPDATE [tblSubCategory]
        SET [SerialNumber]=@SerialNumber,[CategoryID]=@CategoryID,[SubCategory]=@SubCategory,[SubCategoryIcon]=@SubCategoryIcon,[SubCategoryImage]=@SubCategoryImage,[SubCategoryStatusID]=@SubCategoryStatusID
        WHERE [SubCategoryID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_Supplier]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prc_Supplier]
(
    @ID NVARCHAR(MAX),              -- 1 = Insert, 2 = Update, 3 = Select All
    @ServiceID INT,
    @FirmName NVARCHAR(150),
    @ContactPerson NVARCHAR(150),
    @ContactNo VARCHAR(15),
    @Address NVARCHAR(250),
    @City NVARCHAR(100),
    @StateID INT,
    @LandMark NVARCHAR(150),
    @Pincode VARCHAR(10),
    @EmailID NVARCHAR(150),
    @Password NVARCHAR(150),
    @StatusID INT,
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        -- Insert new supplier
        INSERT INTO [tblSupplier]
            ([ServiceID], [FirmName], [ContactPerson], [ContactNo], [Address], [City], [StateID], [LandMark], [Pincode], [EmailID], [Password], [StatusID])
        VALUES
            (@ServiceID, @FirmName, @ContactPerson, @ContactNo, @Address, @City, @StateID, @LandMark, @Pincode, @EmailID, @Password, @StatusID);
    END
    ELSE IF (@ID = '2')
    BEGIN
        -- Update existing supplier
        UPDATE [tblSupplier]
        SET 
            [ServiceID] = @ServiceID,
            [FirmName] = @FirmName,
            [ContactPerson] = @ContactPerson,
            [ContactNo] = @ContactNo,
            [Address] = @Address,
            [City] = @City,
            [StateID] = @StateID,
            [LandMark] = @LandMark,
            [Pincode] = @Pincode,
            [EmailID] = @EmailID,
            [Password] = @Password,
            [StatusID] = @StatusID
        WHERE [SupplierID] = @EditID;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[prc_Unit]    Script Date: 08/04/2026 14:18:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[prc_Unit]
(
    @ID NVARCHAR(MAX),       -- 1 = Insert, 2 = Update, 3 = Select All
    @Unit NVARCHAR(100),
    @EditID NVARCHAR(MAX)
)
AS
BEGIN
    IF (@ID = '1')
    BEGIN
        -- Insert new unit
        INSERT INTO [tblUnit] ([Unit])
        VALUES (@Unit);
    END
    ELSE IF (@ID = '2')
    BEGIN
        -- Update existing unit
        UPDATE [tblUnit]
        SET [Unit] = @Unit
        WHERE [UnitID] = @EditID;
    END
END;
GO
