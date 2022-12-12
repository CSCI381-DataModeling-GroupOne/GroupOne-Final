-- <Migration ID="d2f9baf0-7b2b-44e0-ad91-ed6db01e8269" />
GO

PRINT N'Creating schemas'
GO
CREATE SCHEMA [Analytics]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [DbSecurity]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [HumanResources]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [Inventory]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [Output]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [PKSequence]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [Sales]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [Triggered]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [Utils]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [dBlob]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [dDateTime]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [dEuropeanCarDealership]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [dNumber]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [dString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdAddressesString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdBusinessComponentString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdCountryStringVariants]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdDate]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdFlagBit]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdFlagString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdHashKey]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdLongTextString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdMarketingTextString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdOrdinalNumber]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdPersonNameString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdProjectString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdSequenceInteger]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdSequenceNumber]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdShortDescriptionString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdShortTextString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdSysTime]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdTimeString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdVehicleDescriptorString]
AUTHORIZATION [dbo]
GO
CREATE SCHEMA [sdVehicleSalePayment]
AUTHORIZATION [dbo]
GO
PRINT N'Creating types'
GO
CREATE TYPE [sdVehicleSalePayment].[VehiclePrice] FROM numeric (18, 2) NOT NULL
GO
CREATE TYPE [sdVehicleSalePayment].[DiscountedPrice] FROM numeric (18, 2) NOT NULL
GO
CREATE TYPE [sdVehicleSalePayment].[CostOfFee] FROM numeric (18, 2) NOT NULL
GO
CREATE TYPE [sdVehicleDescriptorString].[VehicleManufacturerMarketingType] FROM nvarchar (250) NULL
GO
CREATE TYPE [sdVehicleDescriptorString].[VehicleIdentifier] FROM nvarchar (150) NULL
GO
CREATE TYPE [sdVehicleDescriptorString].[VehicleColor] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdTimeString].[ClassTimeString] FROM nvarchar (20) NULL
GO
CREATE TYPE [sdSysTime].[SysStartTime] FROM datetime2 NOT NULL
GO
CREATE TYPE [sdSysTime].[SysEndTime] FROM datetime2 NOT NULL
GO
CREATE TYPE [sdSysTime].[DateOfLastUpdate] FROM datetime2 NOT NULL
GO
CREATE TYPE [sdSysTime].[DateAdded] FROM datetime2 NULL
GO
CREATE TYPE [sdShortTextString].[StockCode] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdShortTextString].[InvoiceNumber] FROM nchar (8) NULL
GO
CREATE TYPE [sdSequenceNumber].[SurrogateKeyNumber] FROM int NOT NULL
GO
CREATE TYPE [sdSequenceNumber].[LineItemNumber] FROM smallint NOT NULL
GO
CREATE TYPE [sdProjectString].[GrouplProjectNameString] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdPersonNameString].[LastNameString] FROM nvarchar (25) NOT NULL
GO
CREATE TYPE [sdPersonNameString].[FullNameString] FROM nvarchar (50) NOT NULL
GO
CREATE TYPE [sdPersonNameString].[FirstNameString] FROM nvarchar (25) NOT NULL
GO
CREATE TYPE [sdPersonNameString].[CustomerName] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdOrdinalNumber].[TransactionNumber] FROM smallint NOT NULL
GO
CREATE TYPE [sdMarketingTextString].[VehicleSalesThresholdCategory] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdMarketingTextString].[CustomerSpendCapacity] FROM nvarchar (25) NULL
GO
CREATE TYPE [sdLongTextString].[Note] FROM nvarchar (200) NULL
GO
CREATE TYPE [sdLongTextString].[CustomerComments] FROM nvarchar (200) NULL
GO
CREATE TYPE [sdHashKey].[RowLevelKey] FROM varbinary (32) NULL
GO
CREATE TYPE [sdFlagString].[AuditFlag] FROM nvarchar (20) NULL
GO
CREATE TYPE [sdFlagBit].[FlagFalse] FROM bit NULL
GO
CREATE TYPE [sdDate].[SaleDate] FROM date NULL
GO
CREATE TYPE [sdDate].[PurchaseDate] FROM date NULL
GO
CREATE TYPE [sdCountryStringVariants].[CountryISO3] FROM nchar (3) NULL
GO
CREATE TYPE [sdCountryStringVariants].[CountryISO2] FROM nchar (2) NULL
GO
CREATE TYPE [sdBusinessComponentString].[DepartmentString] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdAddressesString].[TownString] FROM nvarchar (20) NULL
GO
CREATE TYPE [sdAddressesString].[RegionString] FROM nvarchar (20) NULL
GO
CREATE TYPE [sdAddressesString].[PostalCodeString] FROM nvarchar (20) NULL
GO
CREATE TYPE [sdAddressesString].[CountryString] FROM nvarchar (50) NULL
GO
CREATE TYPE [sdAddressesString].[AddressString] FROM nvarchar (150) NULL
GO
CREATE TYPE [dString].[sdVehicleString] FROM nvarchar (50) NULL
GO
CREATE TYPE [dString].[sdTimeString] FROM nvarchar (20) NULL
GO
CREATE TYPE [dString].[sdShortTextString] FROM nvarchar (50) NULL
GO
CREATE TYPE [dString].[sdProjectString] FROM nvarchar (50) NULL
GO
CREATE TYPE [dString].[sdPersonNameString] FROM nvarchar (50) NOT NULL
GO
CREATE TYPE [dString].[sdLongTextString] FROM nvarchar (200) NULL
GO
CREATE TYPE [dString].[sdFlagString] FROM nvarchar (20) NULL
GO
CREATE TYPE [dString].[sdCustomerString] FROM nvarchar (20) NULL
GO
CREATE TYPE [dString].[sdCountryStringVariants] FROM nvarchar (20) NULL
GO
CREATE TYPE [dString].[sdBusinessComponentsString] FROM nvarchar (50) NULL
GO
CREATE TYPE [dString].[sdAddressesString] FROM nvarchar (20) NULL
GO
CREATE TYPE [dNumber].[sdVehicleSalePayment] FROM numeric (18, 2) NOT NULL
GO
CREATE TYPE [dNumber].[sdSequenceNumber] FROM int NOT NULL
GO
CREATE TYPE [dNumber].[sdOrdinalNumber] FROM smallint NOT NULL
GO
CREATE TYPE [dNumber].[sdFlagBit] FROM bit NULL
GO
CREATE TYPE [dEuropeanCarDealership].[dString] FROM nvarchar (20) NULL
GO
CREATE TYPE [dEuropeanCarDealership].[dNumber] FROM int NULL
GO
CREATE TYPE [dEuropeanCarDealership].[dEuropeanCarManufacturer] FROM char (18) NULL
GO
CREATE TYPE [dEuropeanCarDealership].[dDatetime] FROM datetime NULL
GO
CREATE TYPE [dEuropeanCarDealership].[dBlob] FROM varbinary (max) NULL
GO
CREATE TYPE [dDateTime].[sdSysTime] FROM datetime2 NOT NULL
GO
CREATE TYPE [dDateTime].[sdDate] FROM date NULL
GO
CREATE TYPE [dBlob].[sdHashKey] FROM varbinary (max) NULL
GO
PRINT N'Creating sequences'
GO
CREATE SEQUENCE [PKSequence].[CustomerExpenditureClassificationID]
AS int
START WITH 1
INCREMENT BY 1
MINVALUE -2147483648
MAXVALUE 2147483647
NO CYCLE
CACHE 
GO
CREATE SEQUENCE [PKSequence].[CustomerID]
AS int
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 2147483647
NO CYCLE
CACHE 
GO
PRINT N'Creating [Analytics].[SalesCategoryThreshold]'
GO
CREATE TABLE [Analytics].[SalesCategoryThreshold]
(
[SalesCategoryThresholdID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL,
[LowerThreshold] [sdVehicleSalePayment].[VehiclePrice] NULL CONSTRAINT [DF_SalesCategoryThreshold_LowerThreshold_Price] DEFAULT ((0.00)),
[UpperThreshold] [sdVehicleSalePayment].[VehiclePrice] NULL CONSTRAINT [DF_SalesCategoryThreshold_UpperThreshold_Price] DEFAULT ((0.00)),
[CategoryDescription] [sdMarketingTextString].[VehicleSalesThresholdCategory] NULL CONSTRAINT [DF_Template_Unavailable_1475131995] DEFAULT ('Unavailable')
)
GO
PRINT N'Creating primary key [XPKSalesCategoryThreshold] on [Analytics].[SalesCategoryThreshold]'
GO
ALTER TABLE [Analytics].[SalesCategoryThreshold] ADD CONSTRAINT [XPKSalesCategoryThreshold] PRIMARY KEY CLUSTERED ([SalesCategoryThresholdID])
GO
PRINT N'Creating [Sales].[ufnCategoryDescription_SalesOrderCategoryDescription]'
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE FUNCTION [Sales].[ufnCategoryDescription_SalesOrderCategoryDescription] 
(
	-- Add the parameters for the function here
	@SalePrice NUMERIC(18,2)
    
)
RETURNS NVARCHAR(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result NVARCHAR(60)
			
	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = TH.CategoryDescription
	FROM Sales.SalesOrderVehicle AS SO
	INNER JOIN Analytics.SalesCategoryThreshold AS TH
	ON SO.TotalSalePrice BETWEEN TH.LowerThreshold AND th.UpperThreshold
	WHERE @SalePrice = SO.TotalSalePrice
	                     
	                     
	-- Return the result of the function
	RETURN @Result

END
GO
PRINT N'Creating [Sales].[SalesOrderVehicle]'
GO
CREATE TABLE [Sales].[SalesOrderVehicle]
(
[SalesOrderVehicleID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[CustomerID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_SalesOrderVehicle_CustomerID_SequenceStartingValue] DEFAULT ((0)),
[StaffID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL CONSTRAINT [DF_SalesOrderVehicle_StaffID_ForeignKeyValue] DEFAULT ((0)),
[InvoiceNumber] [sdShortTextString].[InvoiceNumber] NULL CONSTRAINT [DF_SalesOrderVehicle_InvoiceNumber_InvoiceNumber] DEFAULT ('00000000'),
[TotalSalePrice] [sdVehicleSalePayment].[VehiclePrice] NULL CONSTRAINT [DF_SalesOrderVehicle_TotalSalePrice_Price] DEFAULT ((0.00)),
[SaleDate] [sdDate].[SaleDate] NULL CONSTRAINT [DF_SalesOrderVehicle_SaleDate_Date] DEFAULT ('19991231'),
[SalesOrderCategoryDescription] AS ([Sales].[ufnCategoryDescription_SalesOrderCategoryDescription]([TotalSalePrice])),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_SalesOrderVehicle_Note_Unavailable] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_SalesOrderVehicle_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_SalesOrderVehicle_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_SalesOrderVehicle_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_SalesOrderVehicle_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [XPK_SalesOrderVehicle] on [Sales].[SalesOrderVehicle]'
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD CONSTRAINT [XPK_SalesOrderVehicle] PRIMARY KEY CLUSTERED ([SalesOrderVehicleID])
GO
PRINT N'Creating [Sales].[Customer]'
GO
CREATE TABLE [Sales].[Customer]
(
[CustomerID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL CONSTRAINT [XPK_CustomerID_Sequence] DEFAULT (NEXT VALUE FOR [PKSequence].[CustomerID]),
[CustomerName] [sdPersonNameString].[CustomerName] NULL CONSTRAINT [DF_Customer_CustomerName_Unavailable] DEFAULT ('Unavailable'),
[CustomerAddress1] [sdAddressesString].[AddressString] NULL CONSTRAINT [DF_Customer_CustomerAddress1_Unavailable] DEFAULT ('Unavailable'),
[CustomerAddress2] [sdAddressesString].[AddressString] NULL CONSTRAINT [DF_Customer_CustomerAddress2_Unavailable] DEFAULT ('Unavailable'),
[CustomerTown] [sdAddressesString].[TownString] NULL CONSTRAINT [DF_Customer_CustomerTownUnavailable] DEFAULT ('Unavailable'),
[CustomerPostalCode] [sdAddressesString].[PostalCodeString] NULL CONSTRAINT [DF_Customer_CustomerPostalCode_Unavailable] DEFAULT ('Unavailable'),
[CountryID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_Customer_CountryID] DEFAULT ((0)),
[IsCustomerReseller] [sdFlagBit].[FlagFalse] NULL CONSTRAINT [DF_Customer_IsCustomerReseller_FlagFalse] DEFAULT ((0)),
[IsCustomerCreditRisk] [sdFlagBit].[FlagFalse] NULL CONSTRAINT [DF_Customer_IsCustomerCreditRisk_FlagFalse] DEFAULT ((0)),
[CustomerExpenditureClassificationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_Customer_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_Customer_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_Customer_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_Customer_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_Customer_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_Customer_CustomerID] on [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED ([CustomerID])
GO
PRINT N'Creating [Analytics].[CustomerExpenditureClassification]'
GO
CREATE TABLE [Analytics].[CustomerExpenditureClassification]
(
[CustomerExpenditureClassificationID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL CONSTRAINT [XPK_CustomerExpenditureClassificationID_Sequence] DEFAULT (NEXT VALUE FOR [PKSequence].[CustomerExpenditureClassificationID]),
[CustomerExpenditureClassifier] [sdMarketingTextString].[CustomerSpendCapacity] NULL CONSTRAINT [DF_CustomerExpenditureClassification_CustomerExpenditureClassifier] DEFAULT ('Unavailable')
)
GO
PRINT N'Creating primary key [PK_CustomerExpenditureClassification] on [Analytics].[CustomerExpenditureClassification]'
GO
ALTER TABLE [Analytics].[CustomerExpenditureClassification] ADD CONSTRAINT [PK_CustomerExpenditureClassification] PRIMARY KEY CLUSTERED ([CustomerExpenditureClassificationID])
GO
PRINT N'Creating [Sales].[Country]'
GO
CREATE TABLE [Sales].[Country]
(
[CountryID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[CountryName] [sdAddressesString].[CountryString] NULL CONSTRAINT [DF_Country_CountryName_Unavailable] DEFAULT ('Unavailable'),
[CountryISO3] [sdCountryStringVariants].[CountryISO3] NOT NULL CONSTRAINT [DF_Country_CountryISO3_Unavailable] DEFAULT ('Unavailable'),
[CountryISO2] [sdCountryStringVariants].[CountryISO2] NULL CONSTRAINT [DF_Country_CountryISO2_Unavailable] DEFAULT ('Unavailable'),
[SalesRegion] [sdAddressesString].[RegionString] NULL CONSTRAINT [DF_Country_SalesRegion_Unavailable] DEFAULT ('Unavailable'),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_Country_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_Country_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_Country_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_Country_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_Country_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_Country] on [Sales].[Country]'
GO
ALTER TABLE [Sales].[Country] ADD CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([CountryID])
GO
PRINT N'Creating [Analytics].[ManufacturerMarketingCategory]'
GO
CREATE TABLE [Analytics].[ManufacturerMarketingCategory]
(
[ManufacturerMarketingCategoryID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL,
[ManufacturerVehicleMarketingType] [sdVehicleDescriptorString].[VehicleManufacturerMarketingType] NULL CONSTRAINT [DF_Template_Unavailable_458766293] DEFAULT ('Unavailable')
)
GO
PRINT N'Creating primary key [XPKManufacturerMarketingCategory] on [Analytics].[ManufacturerMarketingCategory]'
GO
ALTER TABLE [Analytics].[ManufacturerMarketingCategory] ADD CONSTRAINT [XPKManufacturerMarketingCategory] PRIMARY KEY CLUSTERED ([ManufacturerMarketingCategoryID])
GO
PRINT N'Creating [Inventory].[ManufacturerVehicleMake]'
GO
CREATE TABLE [Inventory].[ManufacturerVehicleMake]
(
[ManufacturerVehicleMakeID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[ManufacturerVehicleMakeName] [sdVehicleDescriptorString].[VehicleIdentifier] NULL CONSTRAINT [DF_ManufacturerVehicleMake_ManufacturerVehicleMakeName_Unknown] DEFAULT ('Unavailable'),
[ManufacturerVehicleMarketingCategoryID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[CountryID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_ManufacturerVehicleMake_CountryID_ForeignKeyValue] DEFAULT ((0)),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_ManufacturerVehicleMake_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_Template_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_ManufacturerVehicleMake_TransactionNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_ManufacturerVehicleMake_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_Template_SysEndTime_1062630532] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_Make] on [Inventory].[ManufacturerVehicleMake]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleMake] ADD CONSTRAINT [PK_Make] PRIMARY KEY CLUSTERED ([ManufacturerVehicleMakeID])
GO
PRINT N'Creating [Inventory].[ManufacturerVehicleModel]'
GO
CREATE TABLE [Inventory].[ManufacturerVehicleModel]
(
[ManufacturerVehicleModelID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[ManufacturerVehicleMakeID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_ManufacturerVehicleModel_ManufacturerVehicleMakeID_ForeignKeyValue] DEFAULT ((0)),
[ManufacturerVehicleModelName] [sdVehicleDescriptorString].[VehicleIdentifier] NULL CONSTRAINT [DF_ManufacturerVehicleModel_ManufacturerModelName_Unknown] DEFAULT ('Unavailable'),
[ManufacturerVehicleModelVariant] [sdVehicleDescriptorString].[VehicleIdentifier] NULL CONSTRAINT [DF_ManufacturerVehicleModel_ManufacturerModelVariant_Unknown] DEFAULT ('Unavailable'),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_ManufacturerVehicleModel_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_ManufacturerVehicleModel_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_ManufacturerVehicleModel_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_ManufacturerVehicleModel_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_ManufacturerVehicleModel_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_Model_1] on [Inventory].[ManufacturerVehicleModel]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [PK_Model_1] PRIMARY KEY CLUSTERED ([ManufacturerVehicleModelID])
GO
PRINT N'Creating [Inventory].[ManufacturerVehicleStock]'
GO
CREATE TABLE [Inventory].[ManufacturerVehicleStock]
(
[ManufacturerVehicleStockID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[ManufacturerVehicleModelID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[StockCode] [sdShortTextString].[StockCode] NULL CONSTRAINT [DF_ManufacturerVehicleStock_StockCode_Unavailable] DEFAULT ('Unavailable'),
[Cost] [sdVehicleSalePayment].[VehiclePrice] NULL CONSTRAINT [DF_ManufacturerVehicleStock_Cost_Price] DEFAULT ((0.00)),
[RepairsCharge] [sdVehicleSalePayment].[CostOfFee] NULL CONSTRAINT [DF_ManufacturerVehicleStock_RepairsCharge_Price] DEFAULT ((0.00)),
[PartsCharge] [sdVehicleSalePayment].[CostOfFee] NULL CONSTRAINT [DF_ManufacturerVehicleStock_PartsCharge_Price] DEFAULT ((0.00)),
[DeliveryCharge] [sdVehicleSalePayment].[CostOfFee] NULL CONSTRAINT [DF_ManufacturerVehicleStock_DeliveryCharge_Price] DEFAULT ((0.00)),
[IsPremiumRoadHandlingPackage] [sdFlagBit].[FlagFalse] NULL CONSTRAINT [DF_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagFalse] DEFAULT ((0)),
[VehicleColor] [sdVehicleDescriptorString].[VehicleColor] NULL CONSTRAINT [DF_ManufacturerVehicleStock_VehicleColor_Unavailable] DEFAULT ('Unavailable'),
[CustomerComments] [sdLongTextString].[CustomerComments] NULL CONSTRAINT [DF_ManufacturerVehicleStock_CustomerComments_Unavailable] DEFAULT ('Unavailable'),
[PurchaseDate] [sdDate].[PurchaseDate] NULL CONSTRAINT [DF_ManufacturerVehicleStock_PurchaseDate_Date] DEFAULT ('19991231'),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_ManufacturerVehicleStock_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_ManufacturerVehicleStock_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_ManufacturerVehicleStock_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_ManufacturerVehicleStock_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_ManufacturerVehicleStock_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_Stock] on [Inventory].[ManufacturerVehicleStock]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED ([ManufacturerVehicleStockID])
GO
PRINT N'Creating [HumanResources].[Staff]'
GO
CREATE TABLE [HumanResources].[Staff]
(
[StaffID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[StaffName] [sdPersonNameString].[FullNameString] NULL CONSTRAINT [DF_Staff_StaffName_Unavailable] DEFAULT ('Unavailable'),
[DepartmentID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_Staff_DepartmentID_ForeignKeyValue] DEFAULT ((0)),
[ManagerID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_Staff_ManagerID_ForeignKeyValue] DEFAULT ((0)),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_Staff_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_Staff_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_Staff_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [dNumber].[sdSequenceNumber] NULL CONSTRAINT [DF_Staff_UserAuthorizationID_OrdinalNumber] DEFAULT ((1)),
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_Staff_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_Staff_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [XPKStaff] on [HumanResources].[Staff]'
GO
ALTER TABLE [HumanResources].[Staff] ADD CONSTRAINT [XPKStaff] PRIMARY KEY CLUSTERED ([StaffID])
GO
PRINT N'Creating [Sales].[SalesOrderVehicleDetail]'
GO
CREATE TABLE [Sales].[SalesOrderVehicleDetail]
(
[SalesOrderVehicleDetailID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[SalesOrderVehicleID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SalesOrderVehicleID_ForeignKeyValue] DEFAULT ((0)),
[LineItemNumber] [sdSequenceNumber].[LineItemNumber] NOT NULL CONSTRAINT [DF_SalesOrderVehicleDetail_LineItemNumber_SequenceStartingValue] DEFAULT ((1)),
[ManufacturerVehicleStockID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_ManufacturerVehicleStockID_ForeignKeyValue] DEFAULT ((0)),
[StockCode] [sdShortTextString].[StockCode] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_StockCode_Unavailable] DEFAULT ('Unavailable'),
[SalePrice] [sdVehicleSalePayment].[VehiclePrice] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SalePrice_Price] DEFAULT ((0.00)),
[LineItemDiscount] [sdVehicleSalePayment].[DiscountedPrice] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_LineItemDiscount_Price] DEFAULT ((0.00)),
[DerivedDiscountedSalePrice] AS ([SalePrice]-([LineItemDiscount]/[LineItemNumber])) PERSISTED NOT NULL,
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_SalesOrderVehicleDetail_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [dNumber].[sdSequenceNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_UserAuthorizationID_OrdinalNumber] DEFAULT ((1)),
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_SalesDetails] on [Sales].[SalesOrderVehicleDetail]'
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [PK_SalesDetails] PRIMARY KEY CLUSTERED ([SalesOrderVehicleDetailID])
GO
PRINT N'Creating [HumanResources].[Department]'
GO
CREATE TABLE [HumanResources].[Department]
(
[DepartmentName] [sdBusinessComponentString].[DepartmentString] NULL CONSTRAINT [DF_Department_Department_Unavailable] DEFAULT ('Unavailable'),
[DepartmentID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL
)
GO
PRINT N'Creating primary key [XPKDepartment] on [HumanResources].[Department]'
GO
ALTER TABLE [HumanResources].[Department] ADD CONSTRAINT [XPKDepartment] PRIMARY KEY CLUSTERED ([DepartmentID])
GO
PRINT N'Creating [dbo].[uvw_HumanResourcesStaff]'
GO
CREATE VIEW [dbo].[uvw_HumanResourcesStaff]
AS
SELECT S.StaffID, S.StaffName, S.DepartmentID, D.DepartmentName
FROM HumanResources.Staff AS S
INNER JOIN HumanResources.Department AS D
ON S.DepartmentID = D.DepartmentID
GO
PRINT N'Creating [dbo].[DatabaseObjects]'
GO
CREATE FUNCTION [dbo].[DatabaseObjects] (@ListOfObjectIDs varchar(max) )  
  RETURNS TABLE
 
  
as RETURN
(
    select object_id
         , schema_name(schema_id) + '.' + coalesce(object_name(parent_object_id) + '.', '') + name as name
    from sys.objects as ob
        inner join openjson(N'[' + @ListOfObjectIDs + N']')
            on convert(int, Value) = ob.object_id
);




GO
PRINT N'Creating [DbSecurity].[UserAuthorization]'
GO
CREATE TABLE [DbSecurity].[UserAuthorization]
(
[UserAuthorizationId] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[ClassTime] [sdTimeString].[ClassTimeString] NULL CONSTRAINT [DF_UserAuthorization_ClassTime] DEFAULT ('9:15'),
[GroupName] [dEuropeanCarDealership].[dEuropeanCarManufacturer] NOT NULL CONSTRAINT [DF_UserAuthorization_GroupName] DEFAULT ('Group One'),
[GroupProjectName] [sdProjectString].[GrouplProjectNameString] NULL CONSTRAINT [DF_UserAuthorization_GroupProjectName] DEFAULT ('CSCI381 Group One Final Project'),
[GroupMemberLastName] [sdPersonNameString].[LastNameString] NOT NULL CONSTRAINT [DF_UserAuthorization_GroupMemberLastName] DEFAULT ('Unavailable'),
[GroupMemberFirstName] [sdPersonNameString].[FirstNameString] NOT NULL CONSTRAINT [DF_UserAuthorization_GroupMemberFirstName_Unavailable] DEFAULT ('Unavailable'),
[DateAdded] [sdSysTime].[DateAdded] NULL CONSTRAINT [DF_UserAuthorization_DateAdded__Sysdatetime] DEFAULT (sysdatetime()),
[DateOfLastUpdate] [sdSysTime].[DateOfLastUpdate] NULL CONSTRAINT [DF_UserAuthorization_DateOfOfLastUpdate_Sysdatetime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
PRINT N'Creating primary key [PK_UserAuthorization] on [DbSecurity].[UserAuthorization]'
GO
ALTER TABLE [DbSecurity].[UserAuthorization] ADD CONSTRAINT [PK_UserAuthorization] PRIMARY KEY CLUSTERED ([UserAuthorizationId])
GO
PRINT N'Creating [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint]'
GO
CREATE VIEW [Utils].[uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint]
AS
SELECT
  concat(tbl.TABLE_SCHEMA, '.', tbl.TABLE_NAME) AS FullyQualifiedTableName,
  tbl.TABLE_SCHEMA AS SchemaName,
  tbl.TABLE_NAME AS TableName,
  col.COLUMN_NAME AS ColumnName,
  col.ORDINAL_POSITION AS OrdinalPosition,
  concat(col.DOMAIN_SCHEMA, '.', col.DOMAIN_NAME) AS FullyQualifiedDomainName,
  col.DOMAIN_NAME AS DomainName,
  CASE
    WHEN col.DATA_TYPE = 'varchar' THEN concat('varchar(', CHARACTER_MAXIMUM_LENGTH, ')')
    WHEN col.DATA_TYPE = 'char' THEN concat('char(', CHARACTER_MAXIMUM_LENGTH, ')')
    WHEN col.DATA_TYPE = 'nvarchar' THEN concat('nvarchar(', CHARACTER_MAXIMUM_LENGTH, ')')
    WHEN col.DATA_TYPE = 'nchar' THEN concat('nchar(', CHARACTER_MAXIMUM_LENGTH, ')')
    WHEN col.DATA_TYPE = 'numeric' THEN concat('numeric(', NUMERIC_PRECISION_RADIX, ', ', NUMERIC_SCALE, ')')
    WHEN col.DATA_TYPE = 'decimal' THEN concat('decimal(', NUMERIC_PRECISION_RADIX, ', ', NUMERIC_SCALE, ')')
    ELSE col.DATA_TYPE
  END AS DataType,
  col.IS_NULLABLE AS IsNullable,
  dcn.DefaultName,
  col.COLUMN_DEFAULT AS DefaultNameDefinition,
  cc.CONSTRAINT_NAME AS CheckConstraintRuleName,
  cc.CHECK_CLAUSE AS CheckConstraintRuleNameDefinition
FROM (SELECT
  TABLE_CATALOG,
  TABLE_SCHEMA,
  TABLE_NAME,
  TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES
WHERE (TABLE_TYPE = 'BASE TABLE')) AS tbl
INNER JOIN (SELECT
  TABLE_CATALOG,
  TABLE_SCHEMA,
  TABLE_NAME,
  COLUMN_NAME,
  ORDINAL_POSITION,
  COLUMN_DEFAULT,
  IS_NULLABLE,
  DATA_TYPE,
  CHARACTER_MAXIMUM_LENGTH,
  CHARACTER_OCTET_LENGTH,
  NUMERIC_PRECISION,
  NUMERIC_PRECISION_RADIX,
  NUMERIC_SCALE,
  DATETIME_PRECISION,
  CHARACTER_SET_CATALOG,
  CHARACTER_SET_SCHEMA,
  CHARACTER_SET_NAME,
  COLLATION_CATALOG,
  COLLATION_SCHEMA,
  COLLATION_NAME,
  DOMAIN_CATALOG,
  DOMAIN_SCHEMA,
  DOMAIN_NAME
FROM INFORMATION_SCHEMA.COLUMNS) AS col
  ON col.TABLE_CATALOG = tbl.TABLE_CATALOG
  AND col.TABLE_SCHEMA = tbl.TABLE_SCHEMA
  AND col.TABLE_NAME = tbl.TABLE_NAME
LEFT OUTER JOIN (SELECT
  t.name AS TableName,
  SCHEMA_NAME(s.schema_id) AS SchemaName,
  ac.name AS ColumnName,
  d.name AS DefaultName
FROM sys.all_columns AS ac
INNER JOIN sys.tables AS t
  ON ac.object_id = t.object_id
INNER JOIN sys.schemas AS s
  ON t.schema_id = s.schema_id
INNER JOIN sys.default_constraints AS d
  ON ac.default_object_id = d.object_id) AS dcn
  ON dcn.SchemaName = tbl.TABLE_SCHEMA
  AND dcn.TableName = tbl.TABLE_NAME
  AND dcn.ColumnName = col.COLUMN_NAME
LEFT OUTER JOIN (SELECT
  cu.TABLE_CATALOG,
  cu.TABLE_SCHEMA,
  cu.TABLE_NAME,
  cu.COLUMN_NAME,
  c.CONSTRAINT_CATALOG,
  c.CONSTRAINT_SCHEMA,
  c.CONSTRAINT_NAME,
  c.CHECK_CLAUSE
FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE AS cu
INNER JOIN INFORMATION_SCHEMA.CHECK_CONSTRAINTS AS c
  ON c.CONSTRAINT_NAME = cu.CONSTRAINT_NAME) AS cc
  ON cc.TABLE_SCHEMA = tbl.TABLE_SCHEMA
  AND cc.TABLE_NAME = tbl.TABLE_NAME
  AND cc.COLUMN_NAME = col.COLUMN_NAME
GO
PRINT N'Adding constraints to [Analytics].[SalesCategoryThreshold]'
GO
ALTER TABLE [Analytics].[SalesCategoryThreshold] ADD CONSTRAINT [CK_SalesCategoryThreshold_LowerThreshold_Price] CHECK (([LowerThreshold]>=(0.00)))
GO
ALTER TABLE [Analytics].[SalesCategoryThreshold] ADD CONSTRAINT [CK_SalesCategoryThreshold_UpperThreshold_Price] CHECK (([UpperThreshold]>=(0.00)))
GO
ALTER TABLE [Analytics].[SalesCategoryThreshold] ADD CONSTRAINT [CK_SalesCategoryThreshold_CategoryDescription_SalesThreshold] CHECK (([CategoryDescription]='Outstanding' OR [CategoryDescription]='Exceptional' OR [CategoryDescription]='Very High' OR [CategoryDescription]='High' OR [CategoryDescription]='Medium' OR [CategoryDescription]='Low' OR [CategoryDescription]='Very Low'))
GO
PRINT N'Adding constraints to [HumanResources].[Staff]'
GO
ALTER TABLE [HumanResources].[Staff] ADD CONSTRAINT [CK_Staff_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Inventory].[ManufacturerVehicleMake]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleMake] ADD CONSTRAINT [CK_Template_AuditFlag_339417156] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Inventory].[ManufacturerVehicleModel]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [CK_ManufacturerVehicleModel_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Inventory].[ManufacturerVehicleStock]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [CK_ManufacturerVehicleStock_Cost_Price] CHECK (([Cost]>=(0.00)))
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [CK_ManufacturerVehicleStock_RepairsCharge_Price] CHECK (([RepairsCharge]>=(0.00)))
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [CK_ManufacturerVehicleStock_PartsCharge_Price] CHECK (([PartsCharge]>=(0.00)))
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [CK_ManufacturerVehicleStock_DeliveryCharge_Price] CHECK (([DeliveryCharge]>=(0.00)))
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [CK_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagBit] CHECK (([IsPremiumRoadHandlingPackage]=(1) OR [IsPremiumRoadHandlingPackage]=(0)))
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [CK_ManufacturerVehicleStock_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Sales].[Country]'
GO
ALTER TABLE [Sales].[Country] ADD CONSTRAINT [CK_Template_CountryISO3_608446401] CHECK (([CountryISO3] like '[A-Z][A-Z][A-Z]'))
GO
ALTER TABLE [Sales].[Country] ADD CONSTRAINT [CK_Template_CountryISO2_625223618] CHECK (([CountryISO2] like '[A-Z][A-Z]'))
GO
ALTER TABLE [Sales].[Country] ADD CONSTRAINT [CK_Country_SalesRegion] CHECK (([SalesRegion]='Asia' OR [SalesRegion]='South America' OR [SalesRegion]='North America' OR [SalesRegion]='EMEA'))
GO
ALTER TABLE [Sales].[Country] ADD CONSTRAINT [CK_Country_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [CK_Customer_IsCustomerReseller_FlagBit] CHECK (([IsCustomerReseller]=(1) OR [IsCustomerReseller]=(0)))
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [CK_Customer_IsCustomerCreditRisk_FlagBit] CHECK (([IsCustomerCreditRisk]=(1) OR [IsCustomerCreditRisk]=(0)))
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [CK_Customer_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Sales].[SalesOrderVehicleDetail]'
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_SalePrice_Price] CHECK (([SalePrice]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_LineItemDiscount_Price] CHECK (([LineItemDiscount]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_DerivedDiscountedSalePrice_Price] CHECK (([DerivedDiscountedSalePrice]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding constraints to [Sales].[SalesOrderVehicle]'
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD CONSTRAINT [CK_SalesOrderVehicle_TotalSalePrice_Price] CHECK (([TotalSalePrice]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD CONSTRAINT [CK_SalesOrderVehicle_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
PRINT N'Adding foreign keys to [Sales].[Customer]'
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [FK_Customer_CustomerExpenditureClassification] FOREIGN KEY ([CustomerExpenditureClassificationID]) REFERENCES [Analytics].[CustomerExpenditureClassification] ([CustomerExpenditureClassificationID])
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [FK_Customer_Country] FOREIGN KEY ([CountryID]) REFERENCES [Sales].[Country] ([CountryID]) ON UPDATE CASCADE
GO
PRINT N'Adding foreign keys to [Inventory].[ManufacturerVehicleMake]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleMake] ADD CONSTRAINT [FK_ManufacturerVehicleMake_ManufacturerMarketingCategory] FOREIGN KEY ([ManufacturerVehicleMarketingCategoryID]) REFERENCES [Analytics].[ManufacturerMarketingCategory] ([ManufacturerMarketingCategoryID]) ON UPDATE CASCADE
GO
PRINT N'Adding foreign keys to [Sales].[SalesOrderVehicle]'
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD CONSTRAINT [FK_SalesOrderVehicle_Staff] FOREIGN KEY ([StaffID]) REFERENCES [HumanResources].[Staff] ([StaffID])
GO
ALTER TABLE [Sales].[SalesOrderVehicle] ADD CONSTRAINT [FK_SalesOrderVehicle_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [Sales].[Customer] ([CustomerID])
GO
PRINT N'Adding foreign keys to [Inventory].[ManufacturerVehicleModel]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [FK_ManufacturerVehicleModel_ManufacturerVehicleMake] FOREIGN KEY ([ManufacturerVehicleMakeID]) REFERENCES [Inventory].[ManufacturerVehicleMake] ([ManufacturerVehicleMakeID])
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [FK_ManufacturerVehicleModel_ManufacturerVehicleModel] FOREIGN KEY ([ManufacturerVehicleModelID]) REFERENCES [Inventory].[ManufacturerVehicleModel] ([ManufacturerVehicleModelID])
GO
PRINT N'Adding foreign keys to [Inventory].[ManufacturerVehicleStock]'
GO
ALTER TABLE [Inventory].[ManufacturerVehicleStock] ADD CONSTRAINT [FK_ManufacturerVehicleStock_ManufacturerVehicleModel] FOREIGN KEY ([ManufacturerVehicleModelID]) REFERENCES [Inventory].[ManufacturerVehicleModel] ([ManufacturerVehicleModelID]) ON UPDATE CASCADE
GO
PRINT N'Adding foreign keys to [Sales].[SalesOrderVehicleDetail]'
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [FK_SalesOrderVehicleDetail_ManufacturerVehicleStock] FOREIGN KEY ([ManufacturerVehicleStockID]) REFERENCES [Inventory].[ManufacturerVehicleStock] ([ManufacturerVehicleStockID])
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle] FOREIGN KEY ([SalesOrderVehicleID]) REFERENCES [Sales].[SalesOrderVehicle] ([SalesOrderVehicleID])
GO
GRANT ALTER ANY MASK TO [public]
GRANT ALTER ANY SENSITIVITY CLASSIFICATION TO [public]
GRANT ALTER ANY EXTERNAL DATA SOURCE TO [public]
GRANT ALTER ANY EXTERNAL FILE FORMAT TO [public]
GRANT ALTER TO [public]
GRANT ALTER ANY ASYMMETRIC KEY TO [public]
GRANT ALTER ANY APPLICATION ROLE TO [public]
GRANT ALTER ANY ASSEMBLY TO [public]
GRANT ALTER ANY CERTIFICATE TO [public]
GRANT ALTER ANY DATABASE AUDIT TO [public]
GRANT ALTER ANY DATASPACE TO [public]
GRANT ALTER ANY DATABASE EVENT NOTIFICATION TO [public]
GRANT ALTER ANY FULLTEXT CATALOG TO [public]
GRANT ALTER ANY MESSAGE TYPE TO [public]
GRANT ALTER ANY ROLE TO [public]
GRANT ALTER ANY ROUTE TO [public]
GRANT ALTER ANY REMOTE SERVICE BINDING TO [public]
GRANT ALTER ANY CONTRACT TO [public]
GRANT ALTER ANY SYMMETRIC KEY TO [public]
GRANT ALTER ANY SCHEMA TO [public]
GRANT ALTER ANY SECURITY POLICY TO [public]
GRANT ALTER ANY SERVICE TO [public]
GRANT ALTER ANY DATABASE DDL TRIGGER TO [public]
GRANT ALTER ANY USER TO [public]
GRANT AUTHENTICATE TO [public]
GRANT BACKUP DATABASE TO [public]
GRANT BACKUP LOG TO [public]
GRANT CONTROL TO [public]
GRANT CONNECT TO [public]
GRANT CONNECT REPLICATION TO [public]
GRANT CHECKPOINT TO [public]
GRANT CREATE AGGREGATE TO [public]
GRANT CREATE ASYMMETRIC KEY TO [public]
GRANT CREATE ASSEMBLY TO [public]
GRANT CREATE CERTIFICATE TO [public]
GRANT CREATE DEFAULT TO [public]
GRANT CREATE DATABASE DDL EVENT NOTIFICATION TO [public]
GRANT CREATE FUNCTION TO [public]
GRANT CREATE FULLTEXT CATALOG TO [public]
GRANT CREATE MESSAGE TYPE TO [public]
GRANT CREATE PROCEDURE TO [public]
GRANT CREATE QUEUE TO [public]
GRANT CREATE ROLE TO [public]
GRANT CREATE ROUTE TO [public]
GRANT CREATE RULE TO [public]
GRANT CREATE REMOTE SERVICE BINDING TO [public]
GRANT CREATE CONTRACT TO [public]
GRANT CREATE SYMMETRIC KEY TO [public]
GRANT CREATE SCHEMA TO [public]
GRANT CREATE SYNONYM TO [public]
GRANT CREATE SERVICE TO [public]
GRANT CREATE TABLE TO [public]
GRANT CREATE TYPE TO [public]
GRANT CREATE VIEW TO [public]
GRANT CREATE XML SCHEMA COLLECTION TO [public]
GRANT DELETE TO [public]
GRANT EXECUTE TO [public]
GRANT INSERT TO [public]
GRANT REFERENCES TO [public]
GRANT SELECT TO [public]
GRANT SHOWPLAN TO [public]
GRANT SUBSCRIBE QUERY NOTIFICATIONS TO [public]
GRANT TAKE OWNERSHIP TO [public]
GRANT UNMASK TO [public]
GRANT UPDATE TO [public]
GRANT VIEW ANY SENSITIVITY CLASSIFICATION TO [public]
GRANT VIEW DEFINITION TO [public]
GRANT VIEW DATABASE STATE TO [public]
