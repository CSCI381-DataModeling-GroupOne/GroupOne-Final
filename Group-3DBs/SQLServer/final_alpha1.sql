
CREATE TYPE dEuropeanCarDealership.dEuropeanCarManufacturer
	FROM CHAR(18) NULL
go

CREATE TYPE dEuropeanCarDealership.dBlob
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE dEuropeanCarDealership.dNumber
	FROM INTEGER NULL
go

CREATE TYPE dEuropeanCarDealership.dDatetime
	FROM DATETIME NULL
go

CREATE TYPE dEuropeanCarDealership.dString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE dNumber.sdSequenceNumber
	FROM INTEGER NOT NULL
go

CREATE TYPE sdSequenceNumber.SurrogateKeyNumber
	FROM INTEGER NOT NULL
go

EXEC sp_addextendedproperty
@name = 'MS_Description', @value = '
',
@level0type = 'TYPE', @level0name = 'DateAdded'
go

CREATE TYPE sdOrdinalNumber.TransactionNumber
	FROM SMALLINT NOT NULL
go

CREATE TYPE dNumber.sdVehicleSalePayment
	FROM NUMERIC(18,2) NOT NULL
go

CREATE TYPE sdVehicleSalePayment.VehiclePrice
	FROM NUMERIC(18,2) NOT NULL
go

CREATE TYPE sdVehicleSalePayment.DiscountedPrice
	FROM NUMERIC(18,2) NOT NULL
go

CREATE TYPE sdSequenceNumber.LineItemNumber
	FROM SMALLINT NOT NULL
go

CREATE TYPE sdVehicleSalePayment.CostOfFee
	FROM INTEGER NULL
go

CREATE TYPE dDateTime.sdDate
	FROM DATE NULL
go

CREATE TYPE sdDate.SaleDate
	FROM DATE NULL
go

CREATE TYPE sdDate.PurchaseDate
	FROM DATE NULL
go

CREATE TYPE dBlob.sdHashKey
	FROM VARBINARY(MAX) NULL
go

CREATE TYPE sdHashKey.RowLevelKey
	FROM VARBINARY(32) NULL
go

CREATE TYPE dString.sdLongTextString
	FROM NVARCHAR(200) NULL
go

CREATE TYPE dString.sdFlagString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE sdLongTextString.Note
	FROM NVARCHAR(200) NULL
go

CREATE TYPE dString.sdShortTextString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdShortTextString.StockCode
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdShortTextString.InvoiceNumber
	FROM NCHAR(8) NULL
go

CREATE TYPE sdVehicleDescriptorString.VehicleIdentifier
	FROM NVARCHAR(150) NULL
go

CREATE TYPE dString.sdVehicleString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdVehicleDescriptorString.VehicleColor
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dDateTime.sdSysTime
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE sdSysTime.SysStartTime
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE sdSysTime.SysEndTime
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE sdFlagString.AuditFlag
	FROM NVARCHAR(20) NULL
go

CREATE TYPE dNumber.sdFlagBit
	FROM BIT NULL
go

CREATE TYPE sdFlagBit.FlagFalse
	FROM BIT NULL
go

CREATE TYPE sdPersonNameString.CustomerName
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdMarketingTextString.CustomerSpendCapacity
	FROM NVARCHAR(25) NULL
go

CREATE TYPE dString.sdAddressesString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE sdAddressesString.AddressString
	FROM NVARCHAR(150) NULL
go

CREATE TYPE sdAddressesString.PostalCodeString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE sdAddressesString.TownString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE dString.sdCountryStringVariants
	FROM NVARCHAR(20) NULL
go

CREATE TYPE sdCountryStringVariants.CountryISO2
	FROM NCHAR(2) NULL
go

CREATE TYPE sdCountryStringVariants.CountryISO3
	FROM NCHAR(3) NULL
go

CREATE TYPE sdAddressesString.CountryString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdAddressesString.RegionString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE dString.sdBusinessComponentsString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdBusinessComponentString.DepartmentString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dNumber.sdOrdinalNumber
	FROM SMALLINT NOT NULL
go

CREATE TYPE sdLongTextString.CustomerComments
	FROM NVARCHAR(200) NULL
go

CREATE TYPE sdMarketingTextString.VehicleSalesThresholdCategory
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.sdPersonNameString
	FROM NVARCHAR(50) NOT NULL
go

CREATE TYPE dString.sdTimeString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE sdTimeString.ClassTimeString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE dString.sdProjectString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdProjectString.GrouplProjectNameString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdSysTime.DateOfLastUpdate
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE sdPersonNameString.FirstNameString
	FROM NVARCHAR(25) NOT NULL
go

CREATE TYPE sdPersonNameString.LastNameString
	FROM NVARCHAR(25) NOT NULL
go

CREATE TYPE sdSysTime.DateAdded
	FROM DATETIME2(7) NULL
go

CREATE TYPE dString.sdCustomerString
	FROM NVARCHAR(20) NULL
go

CREATE TYPE sdPersonNameString.FullNameString
	FROM NVARCHAR(50) NOT NULL
go

CREATE TYPE sdVehicleDescriptorString.VehicleManufacturerMarketingType
	FROM NVARCHAR(250) NULL
go

CREATE TYPE dSalary
	FROM INTEGER NULL
go

CREATE TYPE Domain1645
	FROM INTEGER NULL
go

CREATE TYPE dNumber.dNumber
	FROM INT NULL
go

CREATE TYPE dDateTime.dDatetime
	FROM DATETIME NULL
go

CREATE TYPE dString.dString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dDateTime.sdDatetime2
	FROM DATETIME2 NULL
go

CREATE TYPE sdDateTime2.SysStartTime
	FROM DATETIME2 NOT NULL
go

CREATE TYPE dDateTime.sdDatetime2Precision7
	FROM DATETIME2(7) NULL
go

CREATE TYPE dNumber.sdSequenceIntegerNumber
	FROM INT NULL
go

CREATE TYPE dString.sdAddressString
	FROM NVARCHAR(60) NULL
go

CREATE TYPE dString.sdFlagCharString
	FROM CHAR(1) NULL
go

CREATE TYPE dString.sdPhoneNumberString
	FROM NVARCHAR(24) NULL
go

CREATE TYPE dString.sdLongDescriptionString
	FROM NVARCHAR(200) NULL
go

CREATE TYPE dString.sdBusinessEntityNameString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdAddressString.AddressString
	FROM NVARCHAR(60) NULL
go

CREATE TYPE sdBusinessEntityNameString.CompanyNameString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdPersonNameString.LastNameFirstNameString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE sdLongDescriptionString.Note
	FROM NVARCHAR(200) NULL
go

CREATE TYPE sdSequenceInteger.SequenceNumber
	FROM INT NOT NULL
go

CREATE TYPE sdSequenceInteger.SurrogateKeyIntNumber
	FROM INT NULL
go

CREATE TYPE sdPhoneNumberString.TelephoneNumberString
	FROM NVARCHAR(24) NULL
go

CREATE TYPE sdDatetime2Precision7.TimeStampNow
	FROM DATETIME2(7) NOT NULL
go

CREATE TYPE sdFlagCharString.TriggerOptionString
	FROM CHAR(1) NOT NULL
go

CREATE TYPE Udt.hauska
	FROM CHAR(18) NULL
go

CREATE TYPE Udt.sdString
	FROM CHAR(18) NULL
go

CREATE TYPE Udt.sdNumber
	FROM CHAR(18) NULL
go

CREATE TYPE Udt.dDate
	FROM CHAR(18) NULL
go

CREATE TYPE Udt.sdInteger
	FROM INTEGER NULL
go

CREATE TYPE Udt.sdDecimal
	FROM INTEGER NULL
go

CREATE TYPE Udt.sdName
	FROM VARCHAR(18) NULL
go

CREATE TYPE Udt.sdNote
	FROM VARCHAR(18) NULL
go

CREATE TYPE Udt.sdSequenceNo
	FROM INTEGER NULL
go

CREATE TYPE Udt.sdSurrogateKey
	FROM INTEGER NULL
go

CREATE TABLE Sales.Country
( 
	CountryID            sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	CountryName          sdAddressesString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Country_CountryName_Unavailable
		 DEFAULT  'Unavailable',
	CountryISO3          sdCountryStringVariants.nchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_Country_CountryISO3_Unavailable
		 DEFAULT  'Unavailable',
	CountryISO2          sdCountryStringVariants.nchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Country_CountryISO2_Unavailable
		 DEFAULT  'Unavailable',
	SalesRegion          sdAddressesString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Country_SalesRegion_Unavailable
		 DEFAULT  'Unavailable',
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_Country_Note_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Country_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_Country_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  sdSequenceNumber.integer  NULL 
	CONSTRAINT DF_Country_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Country_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Country_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	UserAuthorizationId  char(18)  NULL 
)
go

ALTER TABLE Sales.Country
	 WITH CHECK ADD CONSTRAINT CK_CountryCountryISO3 CHECK  ( [CountryISO3] like '[A-Z][A-Z][A-Z]' )
go

ALTER TABLE Sales.Country
	 WITH CHECK ADD CONSTRAINT CK_Country_CountryISO2 CHECK  ( [CountryISO2] like '[A-Z][A-Z]' )
go

ALTER TABLE Sales.Country
	 WITH CHECK ADD CONSTRAINT CK_Country_SalesRegion CHECK  ( [SalesRegion]='Asia' OR [SalesRegion]='South_America' OR [SalesRegion]='North_America' OR [SalesRegion]='EMEA' )
go

ALTER TABLE Sales.Country
	 WITH CHECK ADD CONSTRAINT CK_Country_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Audit.CountryHistory
( 
	SysEndTime           char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	Notes                char(18)  NULL ,
	IsDeleted            char(18)  NULL ,
	CountryHistoryId     sdSequenceInteger.int  NOT NULL 
)
go

CREATE TABLE Sales.Customer
( 
	CustomerID           sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	CustomerName         sdPersonNameString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Customer_CustomerName_Unavailable
		 DEFAULT  'Unavailable',
	CustomerAddress1     sdAddressesString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Customer_CustomerAddress1_Unavailable
		 DEFAULT  'Unavailable',
	CustomerAddress2     sdAddressesString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Customer_CustomerAddress2_Unavailable
		 DEFAULT  'Unavailable',
	CustomerTown         sdAddressesString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Customer_CustomerTownUnavailable
		 DEFAULT  'Unavailable',
	CustomerPostalCode   sdAddressesString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Customer_CustomerPostalCode_Unavailable
		 DEFAULT  'Unavailable',
	IsCustomerReseller   sdFlagBit.bit  NULL 
	CONSTRAINT DF_Customer_IsCustomerReseller_FlagFalse
		 DEFAULT  0,
	IsCustomerCreditRisk sdFlagBit.bit  NULL 
	CONSTRAINT DF_Customer_IsCustomerCreditRisk_FlagFalse
		 DEFAULT  0,
	CustomerExpenditureClassificationID sdSequenceNumber.integer  NULL ,
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_Customer_Note_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Customer_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_Customer_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  sdSequenceNumber.integer  NULL 
	CONSTRAINT DF_Customer_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Customer_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Customer_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	SysEndTime__1659     char(18)  NULL ,
	SysStartTime__1660   char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	CountryID            sdSequenceInteger.int  NULL 
)
go

ALTER TABLE Sales.Customer
	 WITH CHECK ADD CONSTRAINT CK_Customer_IsCustomerReseller_FlagBit CHECK  ( [IsCustomerReseller]=1 OR [IsCustomerReseller]=0 )
go

ALTER TABLE Sales.Customer
	 WITH CHECK ADD CONSTRAINT CK_Customer_IsCustomerCreditRisk_FlagBit CHECK  ( [IsCustomerCreditRisk]=1 OR [IsCustomerCreditRisk]=0 )
go

ALTER TABLE Sales.Customer
	 WITH CHECK ADD CONSTRAINT CK_Customer_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Analytics.CustomerExpenditureClassification
( 
	CustomerExpenditureClassificationID sdSequenceNumber.integer  NOT NULL 
	CONSTRAINT XPK_CustomerExpenditureClassificationID_Sequence
		 DEFAULT  NEXT VALUE FOR [PKSequence].[CustomerExpenditureClassificationID],
	CustomerExpenditureClassifier sdMarketingTextString.nvarchar(25)  NULL 
	CONSTRAINT DF_CustomerExpenditureClassification_CustomerExpenditureClassifier
		 DEFAULT  'Unavailable'
)
go

CREATE TABLE Audit.CustomerHistory
( 
	CustomerHistoryId    sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	CustomerId           sdSequenceInteger.int  NOT NULL ,
	CustomerCompanyName  sdBusinessEntityNameString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL ,
	CustomerAddress      sdAddressString.nvarchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_CustomerHistory_CustomerAddress_Address
		 DEFAULT  'Street Address, P.O. Box, (Optional) Apartment Number',
	Notes                sdLongDescriptionString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	TransactionNumber    sdSequenceInteger.int  NULL 
	CONSTRAINT DF_CustomerHistory_TransactionNumber
		 DEFAULT  1,
	TriggerOption        sdFlagCharString.char(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_CustomerHistory_TriggerOption
		 DEFAULT  'U',
	UserAuthenticatedKey sdSequenceInteger.int  NULL 
	CONSTRAINT DF_CustomerHistory_UserAuthorizationId_UserAuthorizationId
		 DEFAULT  1,
	SysStartTime         sdDateTime2.datetime2  NOT NULL 
	CONSTRAINT DF_CustomerHistory_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdDateTime2.datetime2  NOT NULL 
	CONSTRAINT DF_CustomerHistory_SysEndTime_Sysdatetime
		 DEFAULT  '99991231 23:59:59.0000000',
	IsDeleted            dString.char(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL ,
	CustomerExpenditureClassificationID char(18)  NULL ,
	IsCustomerCreditRisk char(18)  NULL ,
	IsCustomerReseller   char(18)  NULL 
)
go

CREATE TABLE HumanResources.Department
( 
	DepartmentName       sdBusinessComponentString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Department_Department_Unavailable
		 DEFAULT  'Unavailable',
	DepartmentID         sdVehicleSalePayment.integer  NOT NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	SysEndTime           char(18)  NULL 
)
go

CREATE TABLE Audit.DepartmentHistory
( 
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	DepartmentId         char(18)  NULL ,
	Department           char(18)  NULL ,
	DepartmentHistoryId  sdVehicleSalePayment.integer  NOT NULL 
	CONSTRAINT DF_Template_Price_1866473589
		 DEFAULT  0.00
)
go

CREATE TABLE Analytics.ManufacturerMarketingCategory
( 
	ManufacturerMarketingCategoryID sdSequenceNumber.integer  NOT NULL ,
	ManufacturerVehicleMarketingType sdVehicleDescriptorString.nvarchar(250) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Template_Unavailable_458766293
		 DEFAULT  'Unavailable'
)
go

CREATE TABLE Inventory.ManufacturerVehicleMake
( 
	ManufacturerVehicleMakeID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	ManufacturerVehicleMakeName sdVehicleDescriptorString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleMake_ManufacturerVehicleMakeName_Unknown
		 DEFAULT  'Unavailable',
	ManufacturerVehicleMarketingCategoryID sdSequenceNumber.integer  NULL ,
	CountryID            sdSequenceNumber.integer  NULL ,
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_ManufacturerVehicleMake_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Template_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_ManufacturerVehicleMake_TransactionNumber
		 DEFAULT  1,
	UserAuthorizationID  sdSequenceNumber.integer  NULL 
	CONSTRAINT DF_ManufacturerVehicleMake_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_ManufacturerVehicleMake_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Template_SysEndTime_1062630532
		 DEFAULT  '99991231 23:59:59.9999999',
	SysEndTime__1665     char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysStartTime__1690   char(18)  NULL 
)
go

ALTER TABLE Inventory.ManufacturerVehicleMake
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleMake_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Audit.ManufacturerVehicleMakeHistory
( 
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	ManufacturerVehicleMakeName char(18)  NULL ,
	ManufacturerVehicleMakeID char(18)  NULL ,
	CountryID            char(18)  NULL ,
	ManufacturerVehicleMakeHistoryId sdSequenceInteger.int  NOT NULL 
)
go

CREATE TABLE Inventory.ManufacturerVehicleModel
( 
	ManufacturerVehicleModelID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	ManufacturerVehicleModelName sdVehicleDescriptorString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_ManufacturerModelName_Unknown
		 DEFAULT  'Unavailable',
	ManufacturerVehicleModelVariant sdVehicleDescriptorString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_ManufacturerModelVariant_Unknown
		 DEFAULT  'Unavailable',
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_Note_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  sdSequenceNumber.integer  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_ManufacturerVehicleModel_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	SysEndTime__1686     char(18)  NULL ,
	SysStartTime__1687   char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	ManufacturerVehicleMakeID sdSequenceInteger.int  NULL 
)
go

ALTER TABLE Inventory.ManufacturerVehicleModel
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleModel_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Audit.ManufacturerVehicleModelHistory
( 
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	ManufacturerModelName char(18)  NULL ,
	ManufacturerVehicleModelID char(18)  NULL ,
	ManufacturerModelVariant char(18)  NULL ,
	ManufacturerVehicleModelHistoryId sdSequenceInteger.int  NOT NULL 
)
go

CREATE TABLE Inventory.ManufacturerVehicleStock
( 
	ManufacturerVehicleStockID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	StockCode            sdShortTextString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_StockCode_Unavailable
		 DEFAULT  'Unavailable',
	Cost                 sdVehicleSalePayment.numeric(18,2)  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_Cost_Price
		 DEFAULT  0.00,
	RepairsCharge        sdVehicleSalePayment.integer  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_RepairsCharge_Price
		 DEFAULT  0.00,
	PartsCharge          sdVehicleSalePayment.integer  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_PartsCharge_Price
		 DEFAULT  0.00,
	DeliveryCharge       sdVehicleSalePayment.integer  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_DeliveryCharge_Price
		 DEFAULT  0.00,
	IsPremiumRoadHandlingPackage sdFlagBit.bit  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagFalse
		 DEFAULT  0,
	VehicleColor         sdVehicleDescriptorString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_VehicleColor_Unavailable
		 DEFAULT  'Unavailable',
	CustomerComments     sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_CustomerComments_Unavailable
		 DEFAULT  'Unavailable',
	PurchaseDate         sdDate.date  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_PurchaseDate_Date
		 DEFAULT  '19991231',
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_Note_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  sdSequenceNumber.integer  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_ManufacturerVehicleStock_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	UserAuthorizationId  char(18)  NULL ,
	SysEndTime__1695     char(18)  NULL ,
	SysStartTime__1696   char(18)  NULL ,
	ManufacturerVehicleModelID sdSequenceInteger.int  NULL 
)
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleStock_Cost_Price CHECK  ( Cost >= 0.00 )
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleStock_RepairsCharge_Price CHECK  ( RepairsCharge >= 0.00 )
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleStock_PartsCharge_Price CHECK  ( PartsCharge >= 0.00 )
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleStock_DeliveryCharge_Price CHECK  ( DeliveryCharge >= 0.00 )
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagBit CHECK  ( [IsPremiumRoadHandlingPackage]=1 OR [IsPremiumRoadHandlingPackage]=0 )
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	 WITH CHECK ADD CONSTRAINT CK_ManufacturerVehicleStock_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Audit.ManufacturerVehicleStockHistory
( 
	SysStartTime         char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	ManufacturerVehicleStockID char(18)  NULL ,
	ManufacturerVehicleModelID char(18)  NULL ,
	StockCode            char(18)  NULL ,
	Cost                 char(18)  NULL ,
	DeliveryCharge       char(18)  NULL ,
	PartsCharge          char(18)  NULL ,
	PurchaseDate         char(18)  NULL ,
	RepairsCharge        char(18)  NULL ,
	ManufacturerVehicleStockHistoryId sdSequenceInteger.int  NOT NULL 
)
go

CREATE TABLE Analytics.SalesCategoryThreshold
( 
	SalesCategoryThresholdID sdSequenceInteger.int  NOT NULL ,
	LowerThreshold       sdVehicleSalePayment.numeric(18,2)  NULL 
	CONSTRAINT DF_SalesCategoryThreshold_LowerThreshold_Price
		 DEFAULT  0.00,
	UpperThreshold       sdVehicleSalePayment.numeric(18,2)  NULL 
	CONSTRAINT DF_SalesCategoryThreshold_UpperThreshold_Price
		 DEFAULT  0.00,
	CategoryDescription  sdMarketingTextString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Template_Unavailable_1475131995
		 DEFAULT  'Unavailable'
)
go

ALTER TABLE Analytics.SalesCategoryThreshold
	 WITH CHECK ADD CONSTRAINT CK_SalesCategoryThreshold_LowerThreshold_Price CHECK  ( LowerThreshold >= 0.00 )
go

ALTER TABLE Analytics.SalesCategoryThreshold
	 WITH CHECK ADD CONSTRAINT CK_SalesCategoryThreshold_UpperThreshold_Price CHECK  ( UpperThreshold >= 0.00 )
go

ALTER TABLE Analytics.SalesCategoryThreshold
	 WITH CHECK ADD CONSTRAINT CK_SalesCategoryThreshold_CategoryDescription_SalesThreshold CHECK  ( [CategoryDescription]='Outstanding' OR [CategoryDescription]='Exceptional' OR [CategoryDescription]='Very_High' OR [CategoryDescription]='High' OR [CategoryDescription]='Medium' OR [CategoryDescription]='Low' OR [CategoryDescription]='Very_Low' )
go

CREATE TABLE Sales.SalesOrderVehicle
( 
	SalesOrderVehicleID  sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	InvoiceNumber        sdShortTextString.nchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_SalesOrderVehicle_InvoiceNumber_InvoiceNumber
		 DEFAULT  '00000000',
	TotalSalePrice       sdVehicleSalePayment.numeric(18,2)  NULL 
	CONSTRAINT DF_SalesOrderVehicle_TotalSalePrice_Price
		 DEFAULT  0.00,
	SaleDate             sdDate.date  NULL 
	CONSTRAINT DF_SalesOrderVehicle_SaleDate_Date
		 DEFAULT  '19991231',
	SalesOrderCategoryDescription AS [Sales].[ufnCategoryDescription_SalesOrderCategoryDescription]([SalesOrderVehicle].[TotalSalePrice]) COLLATE SQL_Latin1_General_CP1_CI_AS ,
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_SalesOrderVehicle_Note_Unavailable
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_SalesOrderVehicle_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_SalesOrderVehicle_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  sdSequenceNumber.integer  NULL 
	CONSTRAINT DF_SalesOrderVehicle_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_SalesOrderVehicle_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_SalesOrderVehicle_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	UserAuthorizationId  char(18)  NULL ,
	SysStartTime__1684   char(18)  NULL ,
	SysEndTime__1685     char(18)  NULL ,
	CustomerID           sdSequenceInteger.int  NULL ,
	StaffID              sdSequenceInteger.int  NOT NULL 
)
go

ALTER TABLE Sales.SalesOrderVehicle
	 WITH CHECK ADD CONSTRAINT CK_SalesOrderVehicle_TotalSalePrice_Price CHECK  ( TotalSalePrice >= 0.00 )
go

ALTER TABLE Sales.SalesOrderVehicle
	 WITH CHECK ADD CONSTRAINT CK_SalesOrderVehicle_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Sales.SalesOrderVehicleDetail
( 
	SalesOrderVehicleDetailID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	LineItemNumber       sdSequenceNumber.smallint  NOT NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_LineItemNumber_SequenceStartingValue
		 DEFAULT  1,
	StockCode            sdShortTextString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_StockCode_Unavailable
		 DEFAULT  'Unavailable',
	SalePrice            sdVehicleSalePayment.numeric(18,2)  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_SalePrice_Price
		 DEFAULT  0.00,
	LineItemDiscount     sdVehicleSalePayment.numeric(18,2)  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_LineItemDiscount_Price
		 DEFAULT  0.00,
	DerivedDiscountedSalePrice AS (SalePrice - (SalePrice - (LineItemDiscount/(LineItemNumber * 1.0)) PERSISTED NOT NULL ,
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_Note_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  dNumber.integer  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_SalesOrderVehicleDetail_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	SysStartTime__1680   char(18)  NULL ,
	SysEndTime__1681     char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	default              char(18)  NULL ,
	ManufacturerVehicleStockID sdSequenceInteger.int  NULL ,
	SalesOrderVehicleID  sdSequenceInteger.int  NULL 
)
go

ALTER TABLE Sales.SalesOrderVehicleDetail
	 WITH CHECK ADD CONSTRAINT CK_Template_Price CHECK  ( SalePrice >= 0.00 )
go

ALTER TABLE Sales.SalesOrderVehicleDetail
	 WITH CHECK ADD CONSTRAINT CK_SalesOrderVehicleDetail_LineItemDiscount_Price CHECK  ( LineItemDiscount >= 0.00 )
go

ALTER TABLE Sales.SalesOrderVehicleDetail
	 WITH CHECK ADD CONSTRAINT CK_SalesOrderVehicleDetail_DeriveDDiscountedSalePrice_Price CHECK  ( DerivedDiscountedSalePrice >= 0.00 )
go

ALTER TABLE Sales.SalesOrderVehicleDetail
	 WITH CHECK ADD CONSTRAINT CK_SalesOrderVehicleDetail_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Audit.SalesOrderVehicleDetailHistory
( 
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	SalesOrderVehicleDetailHistoryid sdSequenceInteger.int  NOT NULL ,
	SalePrice            char(18)  NULL ,
	LineItemNumber       char(18)  NULL ,
	LineItemDiscount     char(18)  NULL ,
	DerivedDiscountedSalePrice char(18)  NULL ,
	StockCode            char(18)  NULL ,
	ManufacturerVehicleStockID char(18)  NULL ,
	SalesOrderVehicleID  char(18)  NULL ,
	SalesOrderVehicleDetailID char(18)  NULL ,
	StaffID              char(18)  NULL 
)
go

CREATE TABLE Audit.SalesOrderVehicleHistory
( 
	UserAuthorizationId  char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	SalesOrderVehicleHistoryId sdSequenceInteger.int  NOT NULL ,
	SaleDate             char(18)  NULL ,
	CustomerID           char(18)  NULL ,
	InvoiceNumber        char(18)  NULL ,
	StaffID              char(18)  NULL ,
	SalesOrderVehicleID  char(18)  NULL 
)
go

CREATE TABLE HumanResources.Staff
( 
	StaffID              sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
	StaffName            sdPersonNameString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Staff_StaffName_Unavailable
		 DEFAULT  'Unavailable',
	DepartmentID         sdSequenceNumber.integer  NULL ,
	ManagerID            sdSequenceNumber.integer  NULL ,
	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
	CONSTRAINT DF_Staff_Note_Note
		 DEFAULT  'Row was inserted',
	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
	CONSTRAINT DF_Staff_IsDeleted_FlagNo
		 DEFAULT  'N',
	TransactionNumber    sdOrdinalNumber.smallint  NULL 
	CONSTRAINT DF_Staff_TransactionNumber_OrdinalNumber
		 DEFAULT  1,
	UserAuthorizationID  dNumber.integer  NULL 
	CONSTRAINT DF_Staff_UserAuthorizationID_OrdinalNumber
		 DEFAULT  1,
	SysStartTime         sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Staff_SysStartTime_Sysdatetime
		 DEFAULT  sysdatetime(),
	SysEndTime           sdSysTime.Datetime2(7)  NULL 
	CONSTRAINT DF_Staff_SysEndTime_SysEndTime
		 DEFAULT  '99991231 23:59:59.9999999',
	Salary               integer  NULL ,
	StaffEmail           char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	SysStartTime__1657   char(18)  NULL ,
	SysEndTime__1658     char(18)  NULL 
)
go

ALTER TABLE HumanResources.Staff
	 WITH CHECK ADD CONSTRAINT CK_Staff_IsDeleted_AuditFlag CHECK  ( [IsDeleted]='Y' OR [IsDeleted]='N' )
go

CREATE TABLE Audit.StaffHistory
( 
	StaffHistoryID       sdSequenceInteger.int  NOT NULL ,
	Salary               char(18)  NULL ,
	SysEndTime           char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	TransactionNumber    char(18)  NULL ,
	TriggerOption        char(18)  NULL ,
	UserAuthorizationId  char(18)  NULL ,
	IsDeleted            char(18)  NULL ,
	Notes                char(18)  NULL ,
	DepartmentID         char(18)  NULL ,
	ManagerID            char(18)  NULL ,
	StaffName            char(18)  NULL ,
	StaffEmail           char(18)  NULL ,
	StaffID              char(18)  NULL 
)
go

CREATE TABLE DbSecurity.UserAuthorization
( 
	UserAuthorizationId  sdSequenceInteger.int  NOT NULL ,
	ClassTime            char(18)  NULL ,
	Individualproject    char(18)  NULL ,
	GroupMemberLastName  char(18)  NULL ,
	GroupMemberFirstName char(18)  NULL ,
	GroupName            char(18)  NULL ,
	SysStartTime         char(18)  NULL ,
	SysEndTime           char(18)  NULL 
)
go

ALTER TABLE Sales.Country
	ADD CONSTRAINT PK_Country PRIMARY KEY  CLUSTERED (CountryID ASC)
go

ALTER TABLE Audit.CountryHistory
	ADD CONSTRAINT XPKCountryHistory PRIMARY KEY  CLUSTERED (CountryHistoryId ASC)
go

ALTER TABLE Sales.Customer
	ADD CONSTRAINT PK_Customer PRIMARY KEY  CLUSTERED (CustomerID ASC)
go

ALTER TABLE Analytics.CustomerExpenditureClassification
	ADD CONSTRAINT XPKCustomerExpenditureClassification PRIMARY KEY  CLUSTERED (CustomerExpenditureClassificationID ASC)
go

ALTER TABLE Audit.CustomerHistory
	ADD CONSTRAINT PK_CustomerHistoryId PRIMARY KEY  NONCLUSTERED (CustomerHistoryId ASC)
go

ALTER TABLE Audit.CustomerHistory
	ADD CONSTRAINT AK1_CustomerHistory UNIQUE CLUSTERED (CustomerHistoryId  ASC,TransactionNumber  ASC,CustomerId  ASC,CustomerCompanyName  ASC)
go

ALTER TABLE HumanResources.Department
	ADD CONSTRAINT XPKDepartment PRIMARY KEY  CLUSTERED (DepartmentID ASC)
go

ALTER TABLE Audit.DepartmentHistory
	ADD CONSTRAINT XPKDepartmentHistory PRIMARY KEY  CLUSTERED (DepartmentHistoryId ASC)
go

ALTER TABLE Analytics.ManufacturerMarketingCategory
	ADD CONSTRAINT XPKManufacturerMarketingCategory PRIMARY KEY  CLUSTERED (ManufacturerMarketingCategoryID ASC)
go

ALTER TABLE Inventory.ManufacturerVehicleMake
	ADD CONSTRAINT PK_Make PRIMARY KEY  CLUSTERED (ManufacturerVehicleMakeID ASC)
go

ALTER TABLE Audit.ManufacturerVehicleMakeHistory
	ADD CONSTRAINT XPKManufacturerVehicleMakeHistory PRIMARY KEY  CLUSTERED (ManufacturerVehicleMakeHistoryId ASC)
go

ALTER TABLE Inventory.ManufacturerVehicleModel
	ADD CONSTRAINT PK_Model_1 PRIMARY KEY  CLUSTERED (ManufacturerVehicleModelID ASC)
go

ALTER TABLE Audit.ManufacturerVehicleModelHistory
	ADD CONSTRAINT XPKManufacturerVehicleModelHistory PRIMARY KEY  CLUSTERED (ManufacturerVehicleModelHistoryId ASC)
go

ALTER TABLE Inventory.ManufacturerVehicleStock
	ADD CONSTRAINT PK_Stock PRIMARY KEY  CLUSTERED (ManufacturerVehicleStockID ASC)
go

ALTER TABLE Audit.ManufacturerVehicleStockHistory
	ADD CONSTRAINT XPKManufacturerVehicleStockHistory PRIMARY KEY  CLUSTERED (ManufacturerVehicleStockHistoryId ASC)
go

ALTER TABLE Analytics.SalesCategoryThreshold
	ADD CONSTRAINT XPKSalesCategoryThreshold PRIMARY KEY  CLUSTERED (SalesCategoryThresholdID ASC)
go

ALTER TABLE Sales.SalesOrderVehicle
	ADD CONSTRAINT XPKSalesOrderVehicle PRIMARY KEY  CLUSTERED (SalesOrderVehicleID ASC)
go

ALTER TABLE Sales.SalesOrderVehicleDetail
	ADD CONSTRAINT PK_SalesDetails PRIMARY KEY  CLUSTERED (SalesOrderVehicleDetailID ASC)
go

ALTER TABLE Audit.SalesOrderVehicleDetailHistory
	ADD CONSTRAINT XPKSalesOrderVehicleDetailHistory PRIMARY KEY  CLUSTERED (SalesOrderVehicleDetailHistoryid ASC)
go

ALTER TABLE Audit.SalesOrderVehicleHistory
	ADD CONSTRAINT XPKSalesOrderVehicleHistory PRIMARY KEY  CLUSTERED (SalesOrderVehicleHistoryId ASC)
go

ALTER TABLE HumanResources.Staff
	ADD CONSTRAINT XPKStaff PRIMARY KEY  CLUSTERED (StaffID ASC)
go

ALTER TABLE Audit.StaffHistory
	ADD CONSTRAINT XPKStaffHistory PRIMARY KEY  CLUSTERED (StaffHistoryID ASC)
go

ALTER TABLE DbSecurity.UserAuthorization
	ADD CONSTRAINT XPKUserAuthorization PRIMARY KEY  CLUSTERED (UserAuthorizationId ASC)
go

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
go


ALTER TABLE Inventory.ManufacturerVehicleMake
	ADD CONSTRAINT FK_ManufacturerVehicleMake_ManufacturerMarketingCategory FOREIGN KEY (ManufacturerVehicleMarketingCategoryID) REFERENCES Analytics.ManufacturerMarketingCategory(ManufacturerMarketingCategoryID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

CREATE PROCEDURE dbo.sp_upgraddiagrams   
   
 AS BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,				diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		
		

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),							0,											dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
go

CREATE PROCEDURE dbo.sp_helpdiagrams @diagramname sysname  = NULL , @owner_id int  = NULL   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
go

CREATE PROCEDURE dbo.sp_helpdiagramdefinition @diagramname sysname , @owner_id int  = null   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
go

CREATE PROCEDURE dbo.sp_creatediagram @diagramname sysname , @owner_id int  = null , @version int , @definition varbinary(max)   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
				if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
go

CREATE PROCEDURE dbo.sp_renamediagram @diagramname sysname , @owner_id int  = null , @new_diagramname sysname   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
					
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
go

CREATE PROCEDURE dbo.sp_alterdiagram @diagramname sysname , @owner_id int  = null , @version int , @definition varbinary(max)   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) 			begin
				select @ShouldChangeUID = 1 ;
			end
		end

				update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

				if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

				if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
go

CREATE PROCEDURE dbo.sp_dropdiagram @diagramname sysname , @owner_id int  = null   
 WITH 
 EXECUTE AS 'dbo'  
 AS BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
go

CREATE FUNCTION Sales.ufnCategoryDescription_SalesOrderCategoryDescription 
(	
	-- Add the parameters for the function here
@SalePrice NUMERIC(18,2)
)
RETURNS NVARCHAR(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result NVARCHAR(50)
			
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

go

CREATE TRIGGER Sales.uTduCountryAuditHistory ON Sales.Country
	AFTER 
        -- INSERT, 
        UPDATE, 
        DELETE 
AS
begin
    -- --- only run this trigger if the row's audit columns haven't been updated yet (avoid recursion)
    -- if (UPDATE(TransactionNumber) or UPDATE(DateOfOfLastUpdate))
    --     RETURN;

    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	declare @MaxDateTimestamp_Deleted DATETIME2 = '9999-12-31 23:59:59';
    --declare @SysStartTimeAsSysEnd datetime2;
    declare @Notes varchar(20);

    --- use a common value for current timestamp
    declare @CurrentTimestamp datetime2 = sysdatetime();
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
        --SELECT @SysStartTimeAsSysEnd = Inserted.DateOfOfLastUpdate FROM Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
        --- timestamps and revision number automatically set via defaults in parent table
    if (@action <> 'I')
        --- first insert new row into history table
        insert into Audit.CountryHistoryLog
        (
            AuditTriggeredEmployeeHistoryTimestamp
            , TriggerOption
            , CountryId
            , EmployeeFullName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , SysStartTime
            , SysEndTime
        )
        select @CurrentTimestamp
                , @action
                , EmployeeId
                , CAST(CONCAT(Deleted.EmployeeLastName, ', ', Deleted.EmployeeFirstName) AS VARCHAR(40))
                , Department
                , Salary
                , @Notes
                , @IsDeleted
                , TransactionNumber
                , UserAuthorizationId
                , DateOfOfLastUpdate
                , CASE
                    when @action <> 'D' THEN  --- deleted row can't be updated, so set LastUpdated field accordingly
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp_Deleted
                end
        from Deleted;

        --- then update timestamps and revision number in parent table
        -- UPDATE [HumanResources].[Employee] 
        -- SET 
        --     TransactionNumber = d.TransactionNumber + 1,
        --     DateOfOfLastUpdate = @CurrentTimestamp
        -- FROM [HumanResources].[Employee] emp
        -- INNER JOIN DELETED d on emp.EmployeeId = d.EmployeeId

end;

CREATE TRIGGER Sales.tD_Country ON Sales.Country FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Country */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Country  Sales.Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001293f", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryID" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CountryID = deleted.CountryID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Country because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Country ON Sales.Country FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Country */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCountryID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Country  Sales.Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00014df0", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CountryID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CountryID = deleted.CountryID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Country because Sales.Customer exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.uTdu_Customer ON Sales.Customer
	AFTER UPDATE, DELETE 
AS
begin

    DECLARE @action char(1) = 'I';
    DECLARE @IsDeleted char(1) = 'N';
    DECLARE @SysStartTimeAsSysEnd datetime2;
    DECLARE @Notes varchar(20);
	declare @MaxDateTimestamp datetime2 = '9999-12-31 23:59:59';

    --- use a common value for current timestamp
    DECLARE @CurrentTimestamp datetime2 = sysdatetime();
    --
    IF (EXISTS (SELECT * from inserted) and EXISTS (SELECT * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
    end;
    else IF (EXISTS (SELECT * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
    IF (@action <> 'I')
        --- first insert new row into history table
        INSERT INTO Audit.CustomerHistory
        (
            CustomerHistoryModifiedTimeStamp
            , TriggerOption
            , CustomerId
            , CustomerContact
            , CustomerCompanyName
            , CustomerAddress
            , CustomerContactNumbers
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthorizationId
            , SysStartTime
            , SysEndTime
        )
        SELECT @CurrentTimestamp      as CustomerHistoryModifiedTimeStamp
                , @action             as TriggerOption
                , d.CustomerId
                , concat(d.CustomerContactName, ', ', d.CustomerContactTitle)
                , d.CustomerCompanyName
                , concat(d.CustomerAddress, ', ', d.CustomerCity, ', ', d.CustomerPostalCode, ', ', d.CustomerCountry) 
                , concat(d.CustomerPhoneNumber, ' | ', d.CustomerFaxNumber)
                , @Notes as Notes
                , @IsDeleted as IsDeleted
                , d.TransactionNumber
                , d.UserAuthorizationId
                , d.DateOfOfLastUpdate
                , case
                    when @action <> 'D' then
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp
				 end
        FROM Sales.Customer c
        INNER JOIN DELETED d on c.CustomerId = d.CustomerId

end;


CREATE TRIGGER Sales.tD_Customer ON Sales.Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Customer  Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0004b781", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerID" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.CustomerID = deleted.CustomerID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Customer because Sales.SalesOrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Analytics.CustomerExpenditureClassification  Sales.Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Analytics", PARENT_TABLE="CustomerExpenditureClassification"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_CustomerExpenditureClassification", FK_COLUMNS="CustomerExpenditureClassificationID" */
    IF EXISTS (SELECT * FROM deleted,Analytics.CustomerExpenditureClassification
      WHERE
        /* %JoinFKPK(deleted,Analytics.CustomerExpenditureClassification," = "," AND") */
        deleted.CustomerExpenditureClassificationID = Analytics.CustomerExpenditureClassification.CustomerExpenditureClassificationID AND
        NOT EXISTS (
          SELECT * FROM Sales.Customer
          WHERE
            /* %JoinFKPK(Sales.Customer,Analytics.CustomerExpenditureClassification," = "," AND") */
            Sales.Customer.CustomerExpenditureClassificationID = Analytics.CustomerExpenditureClassification.CustomerExpenditureClassificationID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Customer because Analytics.CustomerExpenditureClassification exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Country  Sales.Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryID" */
    IF EXISTS (SELECT * FROM deleted,Sales.Country
      WHERE
        /* %JoinFKPK(deleted,Sales.Country," = "," AND") */
        deleted.CountryID = Sales.Country.CountryID AND
        NOT EXISTS (
          SELECT * FROM Sales.Customer
          WHERE
            /* %JoinFKPK(Sales.Customer,Sales.Country," = "," AND") */
            Sales.Customer.CountryID = Sales.Country.CountryID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Customer because Sales.Country exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Customer ON Sales.Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00050880", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.CustomerID = deleted.CustomerID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Customer because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Analytics.CustomerExpenditureClassification  Sales.Customer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Analytics", PARENT_TABLE="CustomerExpenditureClassification"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_CustomerExpenditureClassification", FK_COLUMNS="CustomerExpenditureClassificationID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerExpenditureClassificationID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Analytics.CustomerExpenditureClassification
        WHERE
          /* %JoinFKPK(inserted,Analytics.CustomerExpenditureClassification) */
          inserted.CustomerExpenditureClassificationID = Analytics.CustomerExpenditureClassification.CustomerExpenditureClassificationID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CustomerExpenditureClassificationID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Customer because Analytics.CustomerExpenditureClassification does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Country  Sales.Customer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CountryID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Country
        WHERE
          /* %JoinFKPK(inserted,Sales.Country) */
          inserted.CountryID = Sales.Country.CountryID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CountryID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Customer because Sales.Country does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Inventory.uTdu_ManufacturerVehicleModel ON Inventory.ManufacturerVehicleModel
	AFTER 
        -- INSERT, 
        UPDATE, 
        DELETE 
AS
begin
    -- --- only run this trigger if the row's audit columns haven't been updated yet (avoid recursion)
    -- if (UPDATE(TransactionNumber) or UPDATE(DateOfOfLastUpdate))
    --     RETURN;

    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	declare @MaxDateTimestamp_Deleted DATETIME2 = '9999-12-31 23:59:59';
    --declare @SysStartTimeAsSysEnd datetime2;
    declare @Notes varchar(20);

    --- use a common value for current timestamp
    declare @CurrentTimestamp datetime2 = sysdatetime();
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
        --SELECT @SysStartTimeAsSysEnd = Inserted.DateOfOfLastUpdate FROM Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
        --- timestamps and revision number automatically set via defaults in parent table
    if (@action <> 'I')
        --- first insert new row into history table
        insert into Audit.EmployeeAuditLog
        (
            AuditTriggeredEmployeeHistoryTimestamp
            , TriggerOption
            , EmployeeId
            , EmployeeFullName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , SysStartTime
            , SysEndTime
        )
        select @CurrentTimestamp
                , @action
                , EmployeeId
                , CAST(CONCAT(Deleted.EmployeeLastName, ', ', Deleted.EmployeeFirstName) AS VARCHAR(40))
                , Department
                , Salary
                , @Notes
                , @IsDeleted
                , TransactionNumber
                , UserAuthorizationId
                , DateOfOfLastUpdate
                , CASE
                    when @action <> 'D' THEN  --- deleted row can't be updated, so set LastUpdated field accordingly
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp_Deleted
                end
        from Deleted;

        --- then update timestamps and revision number in parent table
        -- UPDATE [HumanResources].[Employee] 
        -- SET 
        --     TransactionNumber = d.TransactionNumber + 1,
        --     DateOfOfLastUpdate = @CurrentTimestamp
        -- FROM [HumanResources].[Employee] emp
        -- INNER JOIN DELETED d on emp.EmployeeId = d.EmployeeId

end;

CREATE TRIGGER Inventory.tD_ManufacturerVehicleModel ON Inventory.ManufacturerVehicleModel FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleModel */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Inventory.ManufacturerVehicleModel  Inventory.ManufacturerVehicleStock on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00039d67", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelID" */
    IF EXISTS (
      SELECT * FROM deleted,Inventory.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Inventory.ManufacturerVehicleStock,deleted," = "," AND") */
        Inventory.ManufacturerVehicleStock.ManufacturerVehicleModelID = deleted.ManufacturerVehicleModelID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Inventory.ManufacturerVehicleModel because Inventory.ManufacturerVehicleStock exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Inventory.ManufacturerVehicleMake  Inventory.ManufacturerVehicleModel on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeID" */
    IF EXISTS (SELECT * FROM deleted,Inventory.ManufacturerVehicleMake
      WHERE
        /* %JoinFKPK(deleted,Inventory.ManufacturerVehicleMake," = "," AND") */
        deleted.ManufacturerVehicleMakeID = Inventory.ManufacturerVehicleMake.ManufacturerVehicleMakeID AND
        NOT EXISTS (
          SELECT * FROM Inventory.ManufacturerVehicleModel
          WHERE
            /* %JoinFKPK(Inventory.ManufacturerVehicleModel,Inventory.ManufacturerVehicleMake," = "," AND") */
            Inventory.ManufacturerVehicleModel.ManufacturerVehicleMakeID = Inventory.ManufacturerVehicleMake.ManufacturerVehicleMakeID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inventory.ManufacturerVehicleModel because Inventory.ManufacturerVehicleMake exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Inventory.tU_ManufacturerVehicleModel ON Inventory.ManufacturerVehicleModel FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleModel */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleModelID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Inventory.ManufacturerVehicleModel  Inventory.ManufacturerVehicleStock on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003d496", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleModelID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inventory.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Inventory.ManufacturerVehicleStock,deleted," = "," AND") */
        Inventory.ManufacturerVehicleStock.ManufacturerVehicleModelID = deleted.ManufacturerVehicleModelID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Inventory.ManufacturerVehicleModel because Inventory.ManufacturerVehicleStock exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Inventory.ManufacturerVehicleMake  Inventory.ManufacturerVehicleModel on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleMakeID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Inventory.ManufacturerVehicleMake
        WHERE
          /* %JoinFKPK(inserted,Inventory.ManufacturerVehicleMake) */
          inserted.ManufacturerVehicleMakeID = Inventory.ManufacturerVehicleMake.ManufacturerVehicleMakeID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleMakeID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inventory.ManufacturerVehicleModel because Inventory.ManufacturerVehicleMake does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Inventory.uTdu_ManufacturerVehicleMake ON Inventory.ManufacturerVehicleMake
after delete, update --, insert
as
begin
	if not (update(SysStartTime)) and not (update(SysEndTime))
	begin
			declare @action char(1) = 'I';
			declare @IsDeleted char(1) = 'N';
			declare @DeletedMessage char(25) = 'Rows has been deleted';
			declare @SysStartTimeAsSysEnd datetime2;
		   --
			if (exists (select * from inserted) and exists (select * from deleted))
			begin
				set @action = 'U';
				select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
			end;
			else if (exists (select * from deleted))
			begin
				set @action = 'D';
				set @IsDeleted = 'Y';
			end;
			else
				set @action = 'I';

			if (@action <> 'I')
				insert into Audit.ManufacturerVehicleMakeHistory
				(
					AuditTriggeredEmployeeHistoryTimestamp
				  , TriggerOption
				  , EmployeeId
				  , EmployeeFullName
				  , Department
				  , Salary
				  , Notes
				  , IsDeleted
				  , TransactionNumber
				  , UserAuthenticatedKey
				  , TimestampRowChanged
				  , SysStartTime
				  , SysEndTime
				)
				select sysdatetime()       as AuditTriggeredEmployeeHistoryTimestamp
					 , @action             as TriggerOption
					 , EmployeeId
					 , EmployeeFullName
					 , Department
					 , Salary
					 , case
						   when @action <> 'D' then
							   Deleted.Notes
						   else
							   @DeletedMessage
					   end
					 , @IsDeleted          as IsDeleted
					 , Deleted.TransactionNumber
					 , UserAuthenticatedKey
					 , TimestampRowChanged
					 , Deleted.SysStartTime
					 , case
						   when @action <> 'D' then
							  @SysStartTimeAsSysEnd
						   else
							   sysdatetime()
					   end as SysEndTime
				from Deleted;
	end
end;


CREATE TRIGGER Inventory.tD_Manufacturer_Vehicle_Make ON Inventory.ManufacturerVehicleMake FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleMake */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Inventory.ManufacturerVehicleMake  Inventory.ManufacturerVehicleModel on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003d478", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeID" */
    IF EXISTS (
      SELECT * FROM deleted,Inventory.ManufacturerVehicleModel
      WHERE
        /*  %JoinFKPK(Inventory.ManufacturerVehicleModel,deleted," = "," AND") */
        Inventory.ManufacturerVehicleModel.ManufacturerVehicleMakeID = deleted.ManufacturerVehicleMakeID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Inventory.ManufacturerVehicleMake because Inventory.ManufacturerVehicleModel exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Analytics.ManufacturerMarketingCategory  Inventory.ManufacturerVehicleMake on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Analytics", PARENT_TABLE="ManufacturerMarketingCategory"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_ManufacturerMarketingCategory", FK_COLUMNS="ManufacturerVehicleMarketingCategoryID" */
    IF EXISTS (SELECT * FROM deleted,Analytics.ManufacturerMarketingCategory
      WHERE
        /* %JoinFKPK(deleted,Analytics.ManufacturerMarketingCategory," = "," AND") */
        deleted.ManufacturerVehicleMarketingCategoryID = Analytics.ManufacturerMarketingCategory.ManufacturerMarketingCategoryID AND
        NOT EXISTS (
          SELECT * FROM Inventory.ManufacturerVehicleMake
          WHERE
            /* %JoinFKPK(Inventory.ManufacturerVehicleMake,Analytics.ManufacturerMarketingCategory," = "," AND") */
            Inventory.ManufacturerVehicleMake.ManufacturerVehicleMarketingCategoryID = Analytics.ManufacturerMarketingCategory.ManufacturerMarketingCategoryID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inventory.ManufacturerVehicleMake because Analytics.ManufacturerMarketingCategory exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Inventory.tU_Manufacturer_Vehicle_Make ON Inventory.ManufacturerVehicleMake FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleMake */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleMakeID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Inventory.ManufacturerVehicleMake  Inventory.ManufacturerVehicleModel on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003f46e", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleMakeID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inventory.ManufacturerVehicleModel
      WHERE
        /*  %JoinFKPK(Inventory.ManufacturerVehicleModel,deleted," = "," AND") */
        Inventory.ManufacturerVehicleModel.ManufacturerVehicleMakeID = deleted.ManufacturerVehicleMakeID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Inventory.ManufacturerVehicleMake because Inventory.ManufacturerVehicleModel exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Analytics.ManufacturerMarketingCategory  Inventory.ManufacturerVehicleMake on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Analytics", PARENT_TABLE="ManufacturerMarketingCategory"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_ManufacturerMarketingCategory", FK_COLUMNS="ManufacturerVehicleMarketingCategoryID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleMarketingCategoryID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Analytics.ManufacturerMarketingCategory
        WHERE
          /* %JoinFKPK(inserted,Analytics.ManufacturerMarketingCategory) */
          inserted.ManufacturerVehicleMarketingCategoryID = Analytics.ManufacturerMarketingCategory.ManufacturerMarketingCategoryID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleMarketingCategoryID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inventory.ManufacturerVehicleMake because Analytics.ManufacturerMarketingCategory does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Inventory.uTdu_ManufacturerVehicleStock ON Inventory.ManufacturerVehicleStock
	AFTER 
        -- INSERT, 
        UPDATE, 
        DELETE 
AS
begin
    -- --- only run this trigger if the row's audit columns haven't been updated yet (avoid recursion)
    -- if (UPDATE(TransactionNumber) or UPDATE(DateOfOfLastUpdate))
    --     RETURN;

    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	declare @MaxDateTimestamp_Deleted DATETIME2 = '9999-12-31 23:59:59';
    --declare @SysStartTimeAsSysEnd datetime2;
    declare @Notes varchar(20);

    --- use a common value for current timestamp
    declare @CurrentTimestamp datetime2 = sysdatetime();
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
        --SELECT @SysStartTimeAsSysEnd = Inserted.DateOfOfLastUpdate FROM Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
        --- timestamps and revision number automatically set via defaults in parent table
    if (@action <> 'I')
        --- first insert new row into history table
        insert into Audit.EmployeeAuditLog
        (
            AuditTriggeredEmployeeHistoryTimestamp
            , TriggerOption
            , EmployeeId
            , EmployeeFullName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , SysStartTime
            , SysEndTime
        )
        select @CurrentTimestamp
                , @action
                , EmployeeId
                , CAST(CONCAT(Deleted.EmployeeLastName, ', ', Deleted.EmployeeFirstName) AS VARCHAR(40))
                , Department
                , Salary
                , @Notes
                , @IsDeleted
                , TransactionNumber
                , UserAuthorizationId
                , DateOfOfLastUpdate
                , CASE
                    when @action <> 'D' THEN  --- deleted row can't be updated, so set LastUpdated field accordingly
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp_Deleted
                end
        from Deleted;

        --- then update timestamps and revision number in parent table
        -- UPDATE [HumanResources].[Employee] 
        -- SET 
        --     TransactionNumber = d.TransactionNumber + 1,
        --     DateOfOfLastUpdate = @CurrentTimestamp
        -- FROM [HumanResources].[Employee] emp
        -- INNER JOIN DELETED d on emp.EmployeeId = d.EmployeeId

end;

CREATE TRIGGER Inventory.tD_Manufacturer_Vehicle_Stock ON Inventory.ManufacturerVehicleStock FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleStock */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Inventory.ManufacturerVehicleStock  Sales.SalesOrderVehicleDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003ae11", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockID" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.ManufacturerVehicleStockID = deleted.ManufacturerVehicleStockID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Inventory.ManufacturerVehicleStock because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Inventory.ManufacturerVehicleModel  Inventory.ManufacturerVehicleStock on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelID" */
    IF EXISTS (SELECT * FROM deleted,Inventory.ManufacturerVehicleModel
      WHERE
        /* %JoinFKPK(deleted,Inventory.ManufacturerVehicleModel," = "," AND") */
        deleted.ManufacturerVehicleModelID = Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelID AND
        NOT EXISTS (
          SELECT * FROM Inventory.ManufacturerVehicleStock
          WHERE
            /* %JoinFKPK(Inventory.ManufacturerVehicleStock,Inventory.ManufacturerVehicleModel," = "," AND") */
            Inventory.ManufacturerVehicleStock.ManufacturerVehicleModelID = Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Inventory.ManufacturerVehicleStock because Inventory.ManufacturerVehicleModel exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Inventory.tU_Manufacturer_Vehicle_Stock ON Inventory.ManufacturerVehicleStock FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleStock */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleStockID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Inventory.ManufacturerVehicleStock  Sales.SalesOrderVehicleDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003bcac", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.ManufacturerVehicleStockID = deleted.ManufacturerVehicleStockID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Inventory.ManufacturerVehicleStock because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Inventory.ManufacturerVehicleModel  Inventory.ManufacturerVehicleStock on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleModelID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Inventory.ManufacturerVehicleModel
        WHERE
          /* %JoinFKPK(inserted,Inventory.ManufacturerVehicleModel) */
          inserted.ManufacturerVehicleModelID = Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleModelID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Inventory.ManufacturerVehicleStock because Inventory.ManufacturerVehicleModel does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Analytics.tD_MarketingInformation ON Analytics.CustomerExpenditureClassification FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on CustomerExpenditureClassification */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Analytics.CustomerExpenditureClassification  Sales.Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000170cd", PARENT_OWNER="Analytics", PARENT_TABLE="CustomerExpenditureClassification"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_CustomerExpenditureClassification", FK_COLUMNS="CustomerExpenditureClassificationID" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CustomerExpenditureClassificationID = deleted.CustomerExpenditureClassificationID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Analytics.CustomerExpenditureClassification because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Analytics.tU_MarketingInformation ON Analytics.CustomerExpenditureClassification FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on CustomerExpenditureClassification */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerExpenditureClassificationID sdSequenceNumber.SurrogateKeyNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Analytics.CustomerExpenditureClassification  Sales.Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0001a0c2", PARENT_OWNER="Analytics", PARENT_TABLE="CustomerExpenditureClassification"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_Customer_CustomerExpenditureClassification", FK_COLUMNS="CustomerExpenditureClassificationID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerExpenditureClassificationID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CustomerExpenditureClassificationID = deleted.CustomerExpenditureClassificationID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Analytics.CustomerExpenditureClassification because Sales.Customer exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.uTdu_SalesOrderVehicle ON Sales.SalesOrderVehicle
	AFTER 
        -- INSERT, 
        UPDATE, 
        DELETE 
AS
begin
    -- --- only run this trigger if the row's audit columns haven't been updated yet (avoid recursion)
    -- if (UPDATE(TransactionNumber) or UPDATE(DateOfOfLastUpdate))
    --     RETURN;

    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	declare @MaxDateTimestamp_Deleted DATETIME2 = '9999-12-31 23:59:59';
    --declare @SysStartTimeAsSysEnd datetime2;
    declare @Notes varchar(20);

    --- use a common value for current timestamp
    declare @CurrentTimestamp datetime2 = sysdatetime();
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
        --SELECT @SysStartTimeAsSysEnd = Inserted.DateOfOfLastUpdate FROM Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
        --- timestamps and revision number automatically set via defaults in parent table
    if (@action <> 'I')
        --- first insert new row into history table
        insert into Audit.EmployeeAuditLog
        (
            AuditTriggeredEmployeeHistoryTimestamp
            , TriggerOption
            , EmployeeId
            , EmployeeFullName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , SysStartTime
            , SysEndTime
        )
        select @CurrentTimestamp
                , @action
                , EmployeeId
                , CAST(CONCAT(Deleted.EmployeeLastName, ', ', Deleted.EmployeeFirstName) AS VARCHAR(40))
                , Department
                , Salary
                , @Notes
                , @IsDeleted
                , TransactionNumber
                , UserAuthorizationId
                , DateOfOfLastUpdate
                , CASE
                    when @action <> 'D' THEN  --- deleted row can't be updated, so set LastUpdated field accordingly
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp_Deleted
                end
        from Deleted;

        --- then update timestamps and revision number in parent table
        -- UPDATE [HumanResources].[Employee] 
        -- SET 
        --     TransactionNumber = d.TransactionNumber + 1,
        --     DateOfOfLastUpdate = @CurrentTimestamp
        -- FROM [HumanResources].[Employee] emp
        -- INNER JOIN DELETED d on emp.EmployeeId = d.EmployeeId

end;

CREATE TRIGGER Sales.tD_Sales_Order_Vehicle ON Sales.SalesOrderVehicle FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on SalesOrderVehicle */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.SalesOrderVehicle  Sales.SalesOrderVehicleDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00045bc8", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleID" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.SalesOrderVehicleID = deleted.SalesOrderVehicleID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.SalesOrderVehicle because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff  Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffID" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Staff," = "," AND") */
        deleted.StaffID = HumanResources.Staff.StaffID AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,HumanResources.Staff," = "," AND") */
            Sales.SalesOrderVehicle.StaffID = HumanResources.Staff.StaffID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because HumanResources.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer  Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerID" */
    IF EXISTS (SELECT * FROM deleted,Sales.Customer
      WHERE
        /* %JoinFKPK(deleted,Sales.Customer," = "," AND") */
        deleted.CustomerID = Sales.Customer.CustomerID AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,Sales.Customer," = "," AND") */
            Sales.SalesOrderVehicle.CustomerID = Sales.Customer.CustomerID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Sales_Order_Vehicle ON Sales.SalesOrderVehicle FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on SalesOrderVehicle */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSalesOrderVehicleID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.SalesOrderVehicle  Sales.SalesOrderVehicleDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0004ae4a", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(SalesOrderVehicleID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.SalesOrderVehicleID = deleted.SalesOrderVehicleID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff  Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(StaffID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Staff
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Staff) */
          inserted.StaffID = HumanResources.Staff.StaffID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because HumanResources.Staff does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer  Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Customer
        WHERE
          /* %JoinFKPK(inserted,Sales.Customer) */
          inserted.CustomerID = Sales.Customer.CustomerID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CustomerID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Sales.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.uTdu_SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
	AFTER 
        -- INSERT, 
        UPDATE, 
        DELETE 
AS
begin
    -- --- only run this trigger if the row's audit columns haven't been updated yet (avoid recursion)
    -- if (UPDATE(TransactionNumber) or UPDATE(DateOfOfLastUpdate))
    --     RETURN;

    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	declare @MaxDateTimestamp_Deleted DATETIME2 = '9999-12-31 23:59:59';
    --declare @SysStartTimeAsSysEnd datetime2;
    declare @Notes varchar(20);

    --- use a common value for current timestamp
    declare @CurrentTimestamp datetime2 = sysdatetime();
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
        --SELECT @SysStartTimeAsSysEnd = Inserted.DateOfOfLastUpdate FROM Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
        --- timestamps and revision number automatically set via defaults in parent table
    if (@action <> 'I')
        --- first insert new row into history table
        insert into Audit.EmployeeAuditLog
        (
            AuditTriggeredEmployeeHistoryTimestamp
            , TriggerOption
            , EmployeeId
            , EmployeeFullName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , SysStartTime
            , SysEndTime
        )
        select @CurrentTimestamp
                , @action
                , EmployeeId
                , CAST(CONCAT(Deleted.EmployeeLastName, ', ', Deleted.EmployeeFirstName) AS VARCHAR(40))
                , Department
                , Salary
                , @Notes
                , @IsDeleted
                , TransactionNumber
                , UserAuthorizationId
                , DateOfOfLastUpdate
                , CASE
                    when @action <> 'D' THEN  --- deleted row can't be updated, so set LastUpdated field accordingly
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp_Deleted
                end
        from Deleted;

        --- then update timestamps and revision number in parent table
        -- UPDATE [HumanResources].[Employee] 
        -- SET 
        --     TransactionNumber = d.TransactionNumber + 1,
        --     DateOfOfLastUpdate = @CurrentTimestamp
        -- FROM [HumanResources].[Employee] emp
        -- INNER JOIN DELETED d on emp.EmployeeId = d.EmployeeId

end;

CREATE TRIGGER Sales.tD_Sales_Order_Vehicle_Detail ON Sales.SalesOrderVehicleDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on SalesOrderVehicleDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Inventory.ManufacturerVehicleStock  Sales.SalesOrderVehicleDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003e338", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockID" */
    IF EXISTS (SELECT * FROM deleted,Inventory.ManufacturerVehicleStock
      WHERE
        /* %JoinFKPK(deleted,Inventory.ManufacturerVehicleStock," = "," AND") */
        deleted.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicleDetail
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicleDetail,Inventory.ManufacturerVehicleStock," = "," AND") */
            Sales.SalesOrderVehicleDetail.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicleDetail because Inventory.ManufacturerVehicleStock exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.SalesOrderVehicle  Sales.SalesOrderVehicleDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleID" */
    IF EXISTS (SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /* %JoinFKPK(deleted,Sales.SalesOrderVehicle," = "," AND") */
        deleted.SalesOrderVehicleID = Sales.SalesOrderVehicle.SalesOrderVehicleID AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicleDetail
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicleDetail,Sales.SalesOrderVehicle," = "," AND") */
            Sales.SalesOrderVehicleDetail.SalesOrderVehicleID = Sales.SalesOrderVehicle.SalesOrderVehicleID
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicleDetail because Sales.SalesOrderVehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Sales_Order_Vehicle_Detail ON Sales.SalesOrderVehicleDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on SalesOrderVehicleDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSalesOrderVehicleDetailID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Inventory.ManufacturerVehicleStock  Sales.SalesOrderVehicleDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0003f9b4", PARENT_OWNER="Inventory", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Inventory.ManufacturerVehicleStock
        WHERE
          /* %JoinFKPK(inserted,Inventory.ManufacturerVehicleStock) */
          inserted.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleStockID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicleDetail because Inventory.ManufacturerVehicleStock does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.SalesOrderVehicle  Sales.SalesOrderVehicleDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleID" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(SalesOrderVehicleID)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.SalesOrderVehicle
        WHERE
          /* %JoinFKPK(inserted,Sales.SalesOrderVehicle) */
          inserted.SalesOrderVehicleID = Sales.SalesOrderVehicle.SalesOrderVehicleID
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.SalesOrderVehicleID IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicleDetail because Sales.SalesOrderVehicle does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.uTd_Staff ON HumanResources.Staff
	AFTER 
        -- INSERT, 
        UPDATE, 
        DELETE 
AS
begin
    -- --- only run this trigger if the row's audit columns haven't been updated yet (avoid recursion)
    -- if (UPDATE(TransactionNumber) or UPDATE(DateOfOfLastUpdate))
    --     RETURN;

    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
	declare @MaxDateTimestamp_Deleted DATETIME2 = '9999-12-31 23:59:59';
    --declare @SysStartTimeAsSysEnd datetime2;
    declare @Notes varchar(20);

    --- use a common value for current timestamp
    declare @CurrentTimestamp datetime2 = sysdatetime();
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        set @Notes = 'Row was updated';
        --SELECT @SysStartTimeAsSysEnd = Inserted.DateOfOfLastUpdate FROM Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
        set @Notes = 'Row was deleted';
    end;
    else
        set @action = 'I';
        --- timestamps and revision number automatically set via defaults in parent table
    if (@action <> 'I')
        --- first insert new row into history table
        insert into Audit.EmployeeAuditLog
        (
            AuditTriggeredEmployeeHistoryTimestamp
            , TriggerOption
            , EmployeeId
            , EmployeeFullName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , SysStartTime
            , SysEndTime
        )
        select @CurrentTimestamp
                , @action
                , EmployeeId
                , CAST(CONCAT(Deleted.EmployeeLastName, ', ', Deleted.EmployeeFirstName) AS VARCHAR(40))
                , Department
                , Salary
                , @Notes
                , @IsDeleted
                , TransactionNumber
                , UserAuthorizationId
                , DateOfOfLastUpdate
                , CASE
                    when @action <> 'D' THEN  --- deleted row can't be updated, so set LastUpdated field accordingly
						@CurrentTimestamp
                    else
                        @MaxDateTimestamp_Deleted
                end
        from Deleted;

        --- then update timestamps and revision number in parent table
        -- UPDATE [HumanResources].[Employee] 
        -- SET 
        --     TransactionNumber = d.TransactionNumber + 1,
        --     DateOfOfLastUpdate = @CurrentTimestamp
        -- FROM [HumanResources].[Employee] emp
        -- INNER JOIN DELETED d on emp.EmployeeId = d.EmployeeId

end;

CREATE TRIGGER HumanResources.tD_Staff ON HumanResources.Staff FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Staff */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* HumanResources.Staff  Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000147e5", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffID" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.StaffID = deleted.StaffID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Staff because Sales.SalesOrderVehicle exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.tU_Staff ON HumanResources.Staff FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Staff */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insStaffID sdSequenceInteger.SurrogateKeyIntNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Staff  Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00015856", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(StaffID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.StaffID = deleted.StaffID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Staff because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Analytics.tD_MarketingCategory ON Analytics.ManufacturerMarketingCategory FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerMarketingCategory */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Analytics.ManufacturerMarketingCategory  Inventory.ManufacturerVehicleMake on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0001a5a0", PARENT_OWNER="Analytics", PARENT_TABLE="ManufacturerMarketingCategory"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_ManufacturerMarketingCategory", FK_COLUMNS="ManufacturerVehicleMarketingCategoryID" */
    IF EXISTS (
      SELECT * FROM deleted,Inventory.ManufacturerVehicleMake
      WHERE
        /*  %JoinFKPK(Inventory.ManufacturerVehicleMake,deleted," = "," AND") */
        Inventory.ManufacturerVehicleMake.ManufacturerVehicleMarketingCategoryID = deleted.ManufacturerMarketingCategoryID
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Analytics.ManufacturerMarketingCategory because Inventory.ManufacturerVehicleMake exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Analytics.tU_MarketingCategory ON Analytics.ManufacturerMarketingCategory FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerMarketingCategory */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerMarketingCategoryID sdSequenceNumber.SurrogateKeyNumber,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Analytics.ManufacturerMarketingCategory  Inventory.ManufacturerVehicleMake on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0001dd64", PARENT_OWNER="Analytics", PARENT_TABLE="ManufacturerMarketingCategory"
    CHILD_OWNER="Inventory", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_ManufacturerMarketingCategory", FK_COLUMNS="ManufacturerVehicleMarketingCategoryID" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerMarketingCategoryID)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Inventory.ManufacturerVehicleMake
      WHERE
        /*  %JoinFKPK(Inventory.ManufacturerVehicleMake,deleted," = "," AND") */
        Inventory.ManufacturerVehicleMake.ManufacturerVehicleMarketingCategoryID = deleted.ManufacturerMarketingCategoryID
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Analytics.ManufacturerMarketingCategory because Inventory.ManufacturerVehicleMake exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Audit.uTdu_StaffHistory
ON Audit.StaffHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_CustomerHistory
ON Audit.CustomerHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_DepartmentHistory
ON Audit.DepartmentHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_ManufacturerVehicleModelHistory
ON Audit.ManufacturerVehicleModelHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_ManufacturerVehicleMakeHistory
ON Audit.ManufacturerVehicleMakeHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_ManufacturerVehicleStockHistory
ON Audit.ManufacturerVehicleStockHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_CountryHistory
ON Audit.CountryHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_SalesOrderVehicleHistory
ON Audit.SalesOrderVehicleHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END

CREATE TRIGGER Audit.uTdu_SalesOrderVehicleDetailHistory
ON Audit.SalesOrderVehicleDetailHistory
	INSTEAD OF UPDATE, DELETE 
AS
begin
    RAISERROR('cannot modify or remove entries in audit table!',16,1);
    ROLLBACK;
END
