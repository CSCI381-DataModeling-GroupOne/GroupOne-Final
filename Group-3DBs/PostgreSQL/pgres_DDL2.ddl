
DROP DOMAIN IF EXISTS  "sdAddressString"."AddressString";

DROP DOMAIN IF EXISTS  "sdAddressesString"."AddressString";

DROP DOMAIN IF EXISTS  "sdFlagString"."AuditFlag";

DROP DOMAIN IF EXISTS  "sdTimeString"."ClassTimeString";

DROP DOMAIN IF EXISTS  "sdBusinessEntityNameString"."CompanyNameString";

DROP DOMAIN IF EXISTS  "sdVehicleSalePayment"."CostOfFee";

DROP DOMAIN IF EXISTS  "sdCountryStringVariants"."CountryISO2";

DROP DOMAIN IF EXISTS  "sdCountryStringVariants"."CountryISO3";

DROP DOMAIN IF EXISTS  "sdAddressesString"."CountryString";

DROP DOMAIN IF EXISTS  "sdLongTextString"."CustomerComments";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."CustomerName";

DROP DOMAIN IF EXISTS  "sdMarketingTextString"."CustomerSpendCapacity";

DROP DOMAIN IF EXISTS  "sdSysTime"."DateAdded";

DROP DOMAIN IF EXISTS  "sdSysTime"."DateOfLastUpdate";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dBlob";

DROP DOMAIN IF EXISTS  "Udt"."dDate";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dDatetime";

DROP DOMAIN IF EXISTS  "dDateTime"."dDatetime";

DROP DOMAIN IF EXISTS  "sdBusinessComponentString"."DepartmentString";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dEuropeanCarManufacturer";

DROP DOMAIN IF EXISTS  "sdVehicleSalePayment"."DiscountedPrice";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dNumber";

DROP DOMAIN IF EXISTS  "dNumber"."dNumber";

DROP DOMAIN IF EXISTS  "dSalary";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dString";

DROP DOMAIN IF EXISTS  "dString"."dString";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."FirstNameString";

DROP DOMAIN IF EXISTS  "sdFlagBit"."FlagFalse";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."FullNameString";

DROP DOMAIN IF EXISTS  "sdProjectString"."GrouplProjectNameString";

DROP DOMAIN IF EXISTS  "sdShortTextString"."InvoiceNumber";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."LastNameFirstNameString";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."LastNameString";

DROP DOMAIN IF EXISTS  "sdSequenceNumber"."LineItemNumber";

DROP DOMAIN IF EXISTS  "sdLongTextString"."Note";

DROP DOMAIN IF EXISTS  "sdLongDescriptionString"."Note";

DROP DOMAIN IF EXISTS  "sdAddressesString"."PostalCodeString";

DROP DOMAIN IF EXISTS  "sdDate"."PurchaseDate";

DROP DOMAIN IF EXISTS  "sdAddressesString"."RegionString";

DROP DOMAIN IF EXISTS  "sdDate"."SaleDate";

DROP DOMAIN IF EXISTS  "dString"."sdAddressesString";

DROP DOMAIN IF EXISTS  "dString"."sdAddressString";

DROP DOMAIN IF EXISTS  "sdBoolean";

DROP DOMAIN IF EXISTS  "dString"."sdBusinessComponentsString";

DROP DOMAIN IF EXISTS  "dString"."sdBusinessEntityNameString";

DROP DOMAIN IF EXISTS  "dString"."sdCountryStringVariants";

DROP DOMAIN IF EXISTS  "dString"."sdCustomerString";

DROP DOMAIN IF EXISTS  "dDateTime"."sdDate";

DROP DOMAIN IF EXISTS  "dDateTime"."sdDatetime2";

DROP DOMAIN IF EXISTS  "dDateTime"."sdDatetime2Precision7";

DROP DOMAIN IF EXISTS  "Udt"."sdDecimal";

DROP DOMAIN IF EXISTS  "dNumber"."sdFlagBit";

DROP DOMAIN IF EXISTS  "sdFlagBoolean";

DROP DOMAIN IF EXISTS  "dString"."sdFlagCharString";

DROP DOMAIN IF EXISTS  "dString"."sdFlagString";

DROP DOMAIN IF EXISTS  "Udt"."sdInteger";

DROP DOMAIN IF EXISTS  "dString"."sdLongDescriptionString";

DROP DOMAIN IF EXISTS  "dString"."sdLongTextString";

DROP DOMAIN IF EXISTS  "Udt"."sdName";

DROP DOMAIN IF EXISTS  "Udt"."sdNote";

DROP DOMAIN IF EXISTS  "Udt"."sdNumber";

DROP DOMAIN IF EXISTS  "dNumber"."sdOrdinalNumber";

DROP DOMAIN IF EXISTS  "dString"."sdPersonNameString";

DROP DOMAIN IF EXISTS  "dString"."sdPhoneNumberString";

DROP DOMAIN IF EXISTS  "dString"."sdProjectString";

DROP DOMAIN IF EXISTS  "dNumber"."sdSequenceIntegerNumber";

DROP DOMAIN IF EXISTS  "Udt"."sdSequenceNo";

DROP DOMAIN IF EXISTS  "dNumber"."sdSequenceNumber";

DROP DOMAIN IF EXISTS  "dString"."sdShortTextString";

DROP DOMAIN IF EXISTS  "Udt"."sdString";

DROP DOMAIN IF EXISTS  "Udt"."sdSurrogateKey";

DROP DOMAIN IF EXISTS  "dDateTime"."sdSysTime";

DROP DOMAIN IF EXISTS  "dString"."sdTimeString";

DROP DOMAIN IF EXISTS  "dNumber"."sdVehicleSalePayment";

DROP DOMAIN IF EXISTS  "dString"."sdVehicleString";

DROP DOMAIN IF EXISTS  "sdSequenceInteger"."SequenceNumber";

DROP DOMAIN IF EXISTS  "sdShortTextString"."StockCode";

DROP DOMAIN IF EXISTS  "sdSequenceInteger"."SurrogateKeyIntNumber";

DROP DOMAIN IF EXISTS  "sdSequenceNumber"."SurrogateKeyNumber";

DROP DOMAIN IF EXISTS  "sdSysTime"."SysEndTime";

DROP DOMAIN IF EXISTS  "sdSysTime"."SysStartTime";

DROP DOMAIN IF EXISTS  "sdPhoneNumberString"."TelephoneNumberString";

DROP DOMAIN IF EXISTS  "sdDatetime2Precision7"."TimeStampNow";

DROP DOMAIN IF EXISTS  "sdAddressesString"."TownString";

DROP DOMAIN IF EXISTS  "sdOrdinalNumber"."TransactionNumber";

DROP DOMAIN IF EXISTS  "sdFlagCharString"."TriggerOptionString";

DROP DOMAIN IF EXISTS  "sdVehicleDescriptorString"."VehicleColor";

DROP DOMAIN IF EXISTS  "sdVehicleDescriptorString"."VehicleIdentifier";

DROP DOMAIN IF EXISTS  "sdVehicleDescriptorString"."VehicleManufacturerMarketingType";

DROP DOMAIN IF EXISTS  "sdVehicleSalePayment"."VehiclePrice";

DROP DOMAIN IF EXISTS  "sdMarketingTextString"."VehicleSalesThresholdCategory";

CREATE SCHEMA "Analytics";

CREATE SCHEMA "Audit";

CREATE SCHEMA "dBlob";

CREATE SCHEMA "DbSecurity";

CREATE SCHEMA "dDateTime";

CREATE SCHEMA "dEuropeanCarDealership";

CREATE SCHEMA "dNumber";

CREATE SCHEMA "dString";

CREATE SCHEMA "HumanResources";

CREATE SCHEMA "Inventory";

CREATE SCHEMA "Output";

CREATE SCHEMA "PKSequence";

CREATE SCHEMA "Sales";

CREATE SCHEMA "sdAddressesString";

CREATE SCHEMA "sdAddressString";

CREATE SCHEMA "sdBusinessComponentString";

CREATE SCHEMA "sdBusinessEntityNameString";

CREATE SCHEMA "sdCountryStringVariants";

CREATE SCHEMA "sdDate";

CREATE SCHEMA "sdDateTime2";

CREATE SCHEMA "sdDatetime2Precision7";

CREATE SCHEMA "sdFlagBit";

CREATE SCHEMA "sdFlagCharString";

CREATE SCHEMA "sdFlagString";

CREATE SCHEMA "sdHashKey";

CREATE SCHEMA "sdLongDescriptionString";

CREATE SCHEMA "sdLongTextString";

CREATE SCHEMA "sdMarketingTextString";

CREATE SCHEMA "sdOrdinalNumber";

CREATE SCHEMA "sdPersonNameString";

CREATE SCHEMA "sdPhoneNumberString";

CREATE SCHEMA "sdProjectString";

CREATE SCHEMA "sdSequenceInteger";

CREATE SCHEMA "sdSequenceNumber";

CREATE SCHEMA "sdShortDescriptionString";

CREATE SCHEMA "sdShortTextString";

CREATE SCHEMA "sdSysTime";

CREATE SCHEMA "sdTimeString";

CREATE SCHEMA "sdVehicleDescriptorString";

CREATE SCHEMA "sdVehicleSalePayment";

CREATE SCHEMA "Triggered";

CREATE SCHEMA "Udt";

CREATE SCHEMA "Utils";

CREATE Domain "sdAddressString"."AddressString"
	AS VARCHAR(60) NULL;

CREATE Domain "sdAddressesString"."AddressString"
	AS VARCHAR(150) NULL;

CREATE Domain "sdFlagString"."AuditFlag"
	AS VARCHAR(20) NULL;

CREATE Domain "sdTimeString"."ClassTimeString"
	AS VARCHAR(20) NULL;

CREATE Domain "sdBusinessEntityNameString"."CompanyNameString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdVehicleSalePayment"."CostOfFee"
	AS INTEGER NULL;

CREATE Domain "sdCountryStringVariants"."CountryISO2"
	AS CHAR(2) NULL;

CREATE Domain "sdCountryStringVariants"."CountryISO3"
	AS CHAR(3) NULL;

CREATE Domain "sdAddressesString"."CountryString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdLongTextString"."CustomerComments"
	AS VARCHAR(200) NULL;

CREATE Domain "sdPersonNameString"."CustomerName"
	AS VARCHAR(50) NULL;

CREATE Domain "sdMarketingTextString"."CustomerSpendCapacity"
	AS VARCHAR(25) NULL;

CREATE Domain "sdSysTime"."DateAdded"
	AS TIMESTAMP NULL;

CREATE Domain "sdSysTime"."DateOfLastUpdate"
	AS TIMESTAMP NOT NULL;

CREATE Domain "dEuropeanCarDealership"."dBlob"
	AS VARBINARY(MAX) NULL;

CREATE Domain "Udt"."dDate"
	AS CHAR(18) NULL;

CREATE Domain "dEuropeanCarDealership"."dDatetime"
	AS TIMESTAMP NULL;

CREATE Domain "dDateTime"."dDatetime"
	AS TIMESTAMP NULL;

CREATE Domain "sdBusinessComponentString"."DepartmentString"
	AS VARCHAR(50) NULL;

CREATE Domain "dEuropeanCarDealership"."dEuropeanCarManufacturer"
	AS CHAR(18) NULL;

CREATE Domain "sdVehicleSalePayment"."DiscountedPrice"
	AS NUMERIC(18,2) NOT NULL;

CREATE Domain "dEuropeanCarDealership"."dNumber"
	AS INTEGER NULL;

CREATE Domain "dNumber"."dNumber"
	AS INTEGER NULL;

CREATE Domain "dSalary"
	AS INTEGER NULL
	CHECK %AttFieldName >= 22000;

CREATE Domain "dEuropeanCarDealership"."dString"
	AS VARCHAR(20) NULL;

CREATE Domain "dString"."dString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdPersonNameString"."FirstNameString"
	AS VARCHAR(25) NOT NULL;

CREATE Domain "sdFlagBit"."FlagFalse"
	AS BIT NULL;

CREATE Domain "sdPersonNameString"."FullNameString"
	AS VARCHAR(50) NOT NULL;

CREATE Domain "sdProjectString"."GrouplProjectNameString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdShortTextString"."InvoiceNumber"
	AS CHAR(8) NULL;

CREATE Domain "sdPersonNameString"."LastNameFirstNameString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdPersonNameString"."LastNameString"
	AS VARCHAR(25) NOT NULL;

CREATE Domain "sdSequenceNumber"."LineItemNumber"
	AS SMALLINT NOT NULL;

CREATE Domain "sdLongTextString"."Note"
	AS VARCHAR(200) NULL;

CREATE Domain "sdLongDescriptionString"."Note"
	AS VARCHAR(200) NULL;

CREATE Domain "sdAddressesString"."PostalCodeString"
	AS VARCHAR(20) NULL;

CREATE Domain "sdDate"."PurchaseDate"
	AS DATE NULL;

CREATE Domain "sdAddressesString"."RegionString"
	AS VARCHAR(20) NULL;

CREATE Domain "sdDate"."SaleDate"
	AS DATE NULL;

CREATE Domain "dString"."sdAddressesString"
	AS VARCHAR(20) NULL;

CREATE Domain "dString"."sdAddressString"
	AS VARCHAR(60) NULL;

CREATE Domain "sdBoolean"
	AS BOOLEAN NULL;

CREATE Domain "dString"."sdBusinessComponentsString"
	AS VARCHAR(50) NULL;

CREATE Domain "dString"."sdBusinessEntityNameString"
	AS VARCHAR(50) NULL;

CREATE Domain "dString"."sdCountryStringVariants"
	AS VARCHAR(20) NULL;

CREATE Domain "dString"."sdCustomerString"
	AS VARCHAR(20) NULL;

CREATE Domain "dDateTime"."sdDate"
	AS DATE NULL;

CREATE Domain "dDateTime"."sdDatetime2"
	AS TIMESTAMP NULL;

CREATE Domain "dDateTime"."sdDatetime2Precision7"
	AS TIMESTAMP NULL;

CREATE Domain "Udt"."sdDecimal"
	AS INTEGER NULL;

CREATE Domain "dNumber"."sdFlagBit"
	AS BIT NULL;

CREATE Domain "sdFlagBoolean"
	AS BOOLEAN NULL;

CREATE Domain "dString"."sdFlagCharString"
	AS CHAR(1) NULL;

CREATE Domain "dString"."sdFlagString"
	AS VARCHAR(20) NULL;

CREATE Domain "Udt"."sdInteger"
	AS INTEGER NULL;

CREATE Domain "dString"."sdLongDescriptionString"
	AS VARCHAR(200) NULL;

CREATE Domain "dString"."sdLongTextString"
	AS VARCHAR(200) NULL;

CREATE Domain "Udt"."sdName"
	AS VARCHAR(18) NULL;

CREATE Domain "Udt"."sdNote"
	AS VARCHAR(18) NULL;

CREATE Domain "Udt"."sdNumber"
	AS CHAR(18) NULL;

CREATE Domain "dNumber"."sdOrdinalNumber"
	AS SMALLINT NOT NULL;

CREATE Domain "dString"."sdPersonNameString"
	AS VARCHAR(50) NOT NULL;

CREATE Domain "dString"."sdPhoneNumberString"
	AS VARCHAR(24) NULL;

CREATE Domain "dString"."sdProjectString"
	AS VARCHAR(50) NULL;

CREATE Domain "dNumber"."sdSequenceIntegerNumber"
	AS INTEGER NULL;

CREATE Domain "Udt"."sdSequenceNo"
	AS INTEGER NULL;

CREATE Domain "dNumber"."sdSequenceNumber"
	AS INTEGER NOT NULL;

CREATE Domain "dString"."sdShortTextString"
	AS VARCHAR(50) NULL;

CREATE Domain "Udt"."sdString"
	AS CHAR(18) NULL;

CREATE Domain "Udt"."sdSurrogateKey"
	AS INTEGER NULL;

CREATE Domain "dDateTime"."sdSysTime"
	AS TIMESTAMP NOT NULL;

CREATE Domain "dString"."sdTimeString"
	AS VARCHAR(20) NULL;

CREATE Domain "dNumber"."sdVehicleSalePayment"
	AS NUMERIC(18,2) NOT NULL;

CREATE Domain "dString"."sdVehicleString"
	AS VARCHAR(50) NULL;

CREATE Domain "sdSequenceInteger"."SequenceNumber"
	AS INTEGER NOT NULL;

CREATE Domain "sdShortTextString"."StockCode"
	AS VARCHAR(50) NULL;

CREATE Domain "sdSequenceInteger"."SurrogateKeyIntNumber"
	AS INTEGER NULL;

CREATE Domain "sdSequenceNumber"."SurrogateKeyNumber"
	AS INTEGER NOT NULL;

CREATE Domain "sdSysTime"."SysEndTime"
	AS TIMESTAMP NOT NULL;

CREATE Domain "sdSysTime"."SysStartTime"
	AS TIMESTAMP NOT NULL;

CREATE Domain "sdPhoneNumberString"."TelephoneNumberString"
	AS VARCHAR(24) NULL;

CREATE Domain "sdDatetime2Precision7"."TimeStampNow"
	AS TIMESTAMP NOT NULL;

CREATE Domain "sdAddressesString"."TownString"
	AS VARCHAR(20) NULL;

CREATE Domain "sdOrdinalNumber"."TransactionNumber"
	AS SMALLINT NOT NULL;

CREATE Domain "sdFlagCharString"."TriggerOptionString"
	AS CHAR(1) NOT NULL;

CREATE Domain "sdVehicleDescriptorString"."VehicleColor"
	AS VARCHAR(50) NULL;

CREATE Domain "sdVehicleDescriptorString"."VehicleIdentifier"
	AS VARCHAR(150) NULL;

CREATE Domain "sdVehicleDescriptorString"."VehicleManufacturerMarketingType"
	AS VARCHAR(250) NULL;

CREATE Domain "sdVehicleSalePayment"."VehiclePrice"
	AS NUMERIC(18,2) NOT NULL;

CREATE Domain "sdMarketingTextString"."VehicleSalesThresholdCategory"
	AS VARCHAR(50) NULL;

CREATE FUNCTION "Sales"."ufnCategoryDescription_SalesOrderCategoryDescription"() AS $$CREATE FUNCTION Sales.ufnCategoryDescription_SalesOrderCategoryDescription 
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
$$
VOLATILE;

CREATE TABLE "Sales"."Country"
( 
	"CountryID"          integer  NOT NULL ,
	"CountryName"        varchar(50)  NULL   DEFAULT  'Unavailable',
	"CountryISO3"        char(3)  NOT NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_CountryCountryISO3" CHECK  ( "CountryISO3" like '[A-Z][A-Z][A-Z]' ) ,
	"CountryISO2"        char(2)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_CountryISO2" CHECK  ( "CountryISO2" like '[A-Z][A-Z]' ) ,
	"SalesRegion"        varchar(20)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_SalesRegion" CHECK  ( "SalesRegion" IN ('Asia', 'South_America', 'North_America', 'EMEA') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL 
);

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "PKCountry" PRIMARY KEY ("CountryID");

CREATE TABLE "Audit"."CountryHistory"
( 
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"UserAuthorizationId" integer  NULL ,
	"TriggerOption"      char(1)  NOT NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"Notes"              char(18)  NULL ,
	"IsDeleted"          boolean  NULL ,
	"CountryHistoryId"   integer  NOT NULL 
);

ALTER TABLE "Audit"."CountryHistory"
	ADD CONSTRAINT "XPKCountryHistory" PRIMARY KEY ("CountryHistoryId");

CREATE TABLE "Sales"."Customer"
( 
	"CustomerID"         integer  NOT NULL ,
	"CustomerName"       varchar(50)  NULL   DEFAULT  'Unavailable',
	"CustomerAddress1"   varchar(150)  NULL   DEFAULT  'Unavailable',
	"CustomerAddress2"   varchar(150)  NULL   DEFAULT  'Unavailable',
	"CustomerTown"       varchar(20)  NULL   DEFAULT  'Unavailable',
	"CustomerPostalCode" varchar(20)  NULL   DEFAULT  'Unavailable',
	"IsCustomerReseller" boolean  NULL ,
	"IsCustomerCreditRisk" boolean  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"CountryID"          integer  NULL ,
	"CustomerExpenditureClassificationID" integer  NULL 
);

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "PKCustomer" PRIMARY KEY ("CustomerID");

CREATE TABLE "Analytics"."CustomerExpenditureClassification"
( 
	"CustomerExpenditureClassificationID" integer  NOT NULL ,
	"CustomerExpenditureClassifier" varchar(25)  NULL   DEFAULT  'Unavailable'
);

ALTER TABLE "Analytics"."CustomerExpenditureClassification"
	ADD CONSTRAINT "XPKCustomerExpenditureClassification" PRIMARY KEY ("CustomerExpenditureClassificationID");

CREATE TABLE "Audit"."CustomerHistory"
( 
	"CustomerHistoryId"  integer  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"CustomerCompanyName" varchar(50)  NOT NULL ,
	"CustomerAddress"    varchar(60)  NOT NULL   DEFAULT  'Street Address, P.O. Box, (Optional) Apartment Number',
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  varchar(25)  NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL   DEFAULT  'U',
	"UserAuthenticatedKey" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NOT NULL ,
	"SysEndTime"         timestamp  NOT NULL ,
	"IsDeleted"          boolean  NULL ,
	"CustomerExpenditureClassificationID" integer  NULL ,
	"IsCustomerCreditRisk" char(18)  NULL ,
	"IsCustomerReseller" char(18)  NULL 
);

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "PK_CustomerHistoryId" PRIMARY KEY ("CustomerHistoryId");

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "AK1_CustomerHistory" UNIQUE ("CustomerHistoryId","TransactionNumber","CustomerId","CustomerCompanyName");

CREATE TABLE "HumanResources"."Department"
( 
	"DepartmentName"     varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentID"       integer  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysEndTime"         char(18)  NULL 
);

ALTER TABLE "HumanResources"."Department"
	ADD CONSTRAINT "XPKDepartment" PRIMARY KEY ("DepartmentID");

CREATE TABLE "Audit"."DepartmentHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"DepartmentId"       integer  NULL ,
	"Department"         char(18)  NULL ,
	"DepartmentHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."DepartmentHistory"
	ADD CONSTRAINT "XPKDepartmentHistory" PRIMARY KEY ("DepartmentHistoryId");

CREATE TABLE "Analytics"."ManufacturerMarketingCategory"
( 
	"ManufacturerMarketingCategoryID" integer  NOT NULL ,
	"ManufacturerVehicleMarketingType" varchar(250)  NULL   DEFAULT  'Unavailable'
);

ALTER TABLE "Analytics"."ManufacturerMarketingCategory"
	ADD CONSTRAINT "XPKManufacturerMarketingCategory" PRIMARY KEY ("ManufacturerMarketingCategoryID");

CREATE TABLE "Inventory"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeID" integer  NOT NULL ,
	"ManufacturerVehicleMakeName" varchar(150)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleMarketingCategoryID" integer  NULL ,
	"CountryID"          integer  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleMake"
	ADD CONSTRAINT "PKMake" PRIMARY KEY ("ManufacturerVehicleMakeID");

CREATE TABLE "Audit"."ManufacturerVehicleMakeHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"ManufacturerVehicleMakeName" varchar(50)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleMakeID" integer  NULL ,
	"CountryID"          integer  NULL ,
	"ManufacturerVehicleMakeHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."ManufacturerVehicleMakeHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleMakeHistory" PRIMARY KEY ("ManufacturerVehicleMakeHistoryId");

CREATE TABLE "Inventory"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelID" integer  NOT NULL ,
	"ManufacturerVehicleModelName" varchar(150)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleModelVariant" varchar(150)  NULL   DEFAULT  'Unavailable',
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleMakeID" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleModel"
	ADD CONSTRAINT "PKModel1" PRIMARY KEY ("ManufacturerVehicleModelID");

CREATE TABLE "Audit"."ManufacturerVehicleModelHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"ManufacturerModelName" char(18)  NULL ,
	"ManufacturerVehicleModelID" integer  NULL ,
	"ManufacturerModelVariant" char(18)  NULL ,
	"ManufacturerVehicleModelHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."ManufacturerVehicleModelHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleModelHistory" PRIMARY KEY ("ManufacturerVehicleModelHistoryId");

CREATE TABLE "Inventory"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockID" integer  NOT NULL ,
	"StockCode"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"Cost"               numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_Cost_Price" CHECK  ( "Cost" >= 0.00 ) ,
	"RepairsCharge"      integer  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_RepairsCharge_Price" CHECK  ( "RepairsCharge" >= 0.00 ) ,
	"PartsCharge"        integer  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_PartsCharge_Price" CHECK  ( "PartsCharge" >= 0.00 ) ,
	"DeliveryCharge"     integer  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_DeliveryCharge_Price" CHECK  ( "DeliveryCharge" >= 0.00 ) ,
	"IsPremiumRoadHandlingPackage" bit  NULL   DEFAULT  0,
	CONSTRAINT "CK_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagBi" CHECK  ( "IsPremiumRoadHandlingPackage" IN (1, 0) ) ,
	"VehicleColor"       varchar(50)  NULL   DEFAULT  'Unavailable',
	"CustomerComments"   varchar(200)  NULL   DEFAULT  'Unavailable',
	"PurchaseDate"       date  NULL   DEFAULT  '19991231',
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleModelID" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleStock"
	ADD CONSTRAINT "PKStock" PRIMARY KEY ("ManufacturerVehicleStockID");

CREATE TABLE "Audit"."ManufacturerVehicleStockHistory"
( 
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"ManufacturerVehicleModelID" integer  NULL ,
	"StockCode"          char(18)  NULL ,
	"Cost"               char(18)  NULL ,
	"DeliveryCharge"     char(18)  NULL ,
	"PartsCharge"        char(18)  NULL ,
	"PurchaseDate"       char(18)  NULL ,
	"RepairsCharge"      char(18)  NULL ,
	"ManufacturerVehicleStockHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."ManufacturerVehicleStockHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleStockHistory" PRIMARY KEY ("ManufacturerVehicleStockHistoryId");

CREATE TABLE "Analytics"."SalesCategoryThreshold"
( 
	"SalesCategoryThresholdID" integer  NOT NULL ,
	"LowerThreshold"     numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesCategoryThreshold_LowerThreshold_Price" CHECK  ( "LowerThreshold" >= 0.00 ) ,
	"UpperThreshold"     numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesCategoryThreshold_UpperThreshold_Price" CHECK  ( "UpperThreshold" >= 0.00 ) ,
	"CategoryDescription" varchar(50)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_SalesCategoryThreshold_CategoryDescription_SalesThreshold" CHECK  ( "CategoryDescription" IN ('Outstanding', 'Exceptional', 'Very_High', 'High', 'Medium', 'Low', 'Very_Low') ) 
);

ALTER TABLE "Analytics"."SalesCategoryThreshold"
	ADD CONSTRAINT "XPKSalesCategoryThreshold" PRIMARY KEY ("SalesCategoryThresholdID");

CREATE TABLE "Sales"."SalesOrderVehicle"
( 
	"SalesOrderVehicleID" integer  NOT NULL ,
	"InvoiceNumber"      char(8)  NULL   DEFAULT  '00000000',
	"TotalSalePrice"     numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesOrderVehicle_TotalSalePrice_Price" CHECK  ( "TotalSalePrice" >= 0.00 ) ,
	"SaleDate"           date  NULL   DEFAULT  '19991231',
	"SalesOrderCategoryDescription" CHAR(18)  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"CustomerID"         integer  NULL ,
	"StaffID"            integer  NOT NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "XPKSalesOrderVehicle" PRIMARY KEY ("SalesOrderVehicleID");

CREATE TABLE "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleDetailID" integer  NOT NULL ,
	"LineItemNumber"     smallint  NOT NULL   DEFAULT  1,
	"StockCode"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"SalePrice"          numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_Template_Price" CHECK  ( "SalePrice" >= 0.00 ) ,
	"LineItemDiscount"   numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesOrderVehicleDetail_LineItemDiscount_Price" CHECK  ( "LineItemDiscount" >= 0.00 ) ,
	"DerivedDiscountedSalePrice" numeric(18,2)  NOT NULL ,
	CONSTRAINT "CK_SalesOrderVehicleDetail_DeriveDDiscountedSalePrice_Price" CHECK  ( "DerivedDiscountedSalePrice" >= 0.00 ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"SalesOrderVehicleID" integer  NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "PKSalesDetails" PRIMARY KEY ("SalesOrderVehicleDetailID");

CREATE TABLE "Audit"."SalesOrderVehicleDetailHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SalesOrderVehicleDetailHistoryid" integer  NOT NULL ,
	"SalePrice"          char(18)  NULL ,
	"LineItemNumber"     char(18)  NULL ,
	"LineItemDiscount"   char(18)  NULL ,
	"DerivedDiscountedSalePrice" char(18)  NULL ,
	"StockCode"          char(18)  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"SalesOrderVehicleID" integer  NULL ,
	"SalesOrderVehicleDetailID" integer  NULL ,
	"StaffID"            integer  NULL 
);

ALTER TABLE "Audit"."SalesOrderVehicleDetailHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleDetailHistory" PRIMARY KEY ("SalesOrderVehicleDetailHistoryid");

CREATE TABLE "Audit"."SalesOrderVehicleHistory"
( 
	"UserAuthorizationId" integer  NULL ,
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"SalesOrderVehicleHistoryId" integer  NOT NULL ,
	"SaleDate"           char(18)  NULL ,
	"CustomerID"         integer  NULL ,
	"InvoiceNumber"      char(18)  NULL ,
	"StaffID"            integer  NULL ,
	"SalesOrderVehicleID" integer  NULL 
);

ALTER TABLE "Audit"."SalesOrderVehicleHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleHistory" PRIMARY KEY ("SalesOrderVehicleHistoryId");

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffID"            integer  NOT NULL ,
	"StaffName"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentID"       integer  NULL ,
	"ManagerID"          integer  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"Salary"             integer  NULL ,
	"StaffEmail"         char(18)  NULL ,
	"UserAuthorizationId" integer  NULL 
);

ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY ("StaffID");

CREATE TABLE "Audit"."StaffHistory"
( 
	"StaffHistoryID"     integer  NOT NULL ,
	"Salary"             char(18)  NULL ,
	"SysEndTime"         varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"TransactionNumber"  varchar(25)  NOT NULL   DEFAULT  'Unavailable',
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"DepartmentID"       integer  NULL ,
	"ManagerID"          integer  NULL ,
	"StaffName"          char(18)  NULL ,
	"StaffEmail"         char(18)  NULL ,
	"StaffID"            integer  NULL 
);

ALTER TABLE "Audit"."StaffHistory"
	ADD CONSTRAINT "XPKStaffHistory" PRIMARY KEY ("StaffHistoryID");

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" integer  NOT NULL ,
	"ClassTime"          char(18)  NULL ,
	"Individualproject"  integer  NULL ,
	"GroupMemberLastName" char(18)  NULL ,
	"GroupMemberFirstName" char(18)  NULL ,
	"GroupName"          char(18)  NULL ,
	"SysStartTime"       varchar(200)  NULL   DEFAULT  'Row was inserted',
	"SysEndTime"         char(18)  NULL 
);

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XPKUserAuthorization" PRIMARY KEY ("UserAuthorizationId");

CREATE OR REPLACE VIEW "Utils"."uvw_FindColumnDefinitionPlusDefaultAndCheckConstraint" AS 
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
  AND cc.COLUMN_NAME = col.COLUMN_NAME;


ALTER TABLE "Inventory"."ManufacturerVehicleMake"
	ADD CONSTRAINT "FK_ManufacturerVehicleMake_ManufacturerMarketingCategory" FOREIGN KEY ("ManufacturerVehicleMarketingCategoryID") REFERENCES "Analytics"."ManufacturerMarketingCategory"("ManufacturerMarketingCategoryID")
		ON UPDATE SET NULL
		ON DELETE SET NULL;


CREATE TRIGGER "ManufacturerVehicleStockHistory" AFTER
 ON "Audit"."ManufacturerVehicleStockHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2089" BEFORE DELETE
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2090" BEFORE UPDATE
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2091" BEFORE INSERT
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2092" BEFORE DELETE
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2093" BEFORE UPDATE
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2094" BEFORE INSERT
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2095" BEFORE DELETE
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2096" BEFORE UPDATE
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2097" BEFORE INSERT
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2098" BEFORE DELETE
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2099" BEFORE UPDATE
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2100" BEFORE INSERT
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2101" BEFORE DELETE
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2102" BEFORE UPDATE
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2103" BEFORE INSERT
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2104" BEFORE DELETE
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2105" BEFORE UPDATE
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2106" BEFORE INSERT
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2107" BEFORE DELETE
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2108" BEFORE UPDATE
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2109" BEFORE INSERT
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2110" BEFORE DELETE
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2111" BEFORE UPDATE
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2112" BEFORE INSERT
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2113" BEFORE DELETE
 ON "Analytics"."CustomerExpenditureClassification"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2114" BEFORE UPDATE
 ON "Analytics"."CustomerExpenditureClassification"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2115" BEFORE INSERT
 ON "Analytics"."CustomerExpenditureClassification"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2116" BEFORE DELETE
 ON "Analytics"."ManufacturerMarketingCategory"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2117" BEFORE UPDATE
 ON "Analytics"."ManufacturerMarketingCategory"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2118" BEFORE INSERT
 ON "Analytics"."ManufacturerMarketingCategory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_Country" BEFORE
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_CountryHistory" AFTER
 ON "Audit"."CountryHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_Customer" BEFORE
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_CustomerHistory" AFTER
 ON "Audit"."CustomerHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_Department" BEFORE
 ON "HumanResources"."Department"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_DepartmentHistory" AFTER
 ON "Audit"."DepartmentHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_ManufacturerVehicleMake" AFTER
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_ManufacturerVehicleMakeHistory" AFTER
 ON "Audit"."ManufacturerVehicleMakeHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_ManufacturerVehicleModel" AFTER
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_ManufacturerVehicleModelHistory" AFTER
 ON "Audit"."ManufacturerVehicleModelHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_ManufacturerVehicleStock" AFTER
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_SalesOrderVehicle" AFTER
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_SalesOrderVehicleDetail" AFTER
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_SalesOrderVehicleDetailHistory" AFTER
 ON "Audit"."SalesOrderVehicleDetailHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_SalesOrderVehicleHistory" AFTER
 ON "Audit"."SalesOrderVehicleHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_Staff" AFTER
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_StaffHistory" AFTER
 ON "Audit"."StaffHistory"
 FOR EACH STATEMENT;
