
DROP DOMAIN IF EXISTS  "sdAddressesString"."AddressString";

DROP DOMAIN IF EXISTS  "sdAddressString"."AddressString";

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

DROP DOMAIN IF EXISTS  "dNumber"."dNumber";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dNumber";

DROP DOMAIN IF EXISTS  "Domain1645";

DROP DOMAIN IF EXISTS  "dSalary";

DROP DOMAIN IF EXISTS  "dString"."dString";

DROP DOMAIN IF EXISTS  "dEuropeanCarDealership"."dString";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."FirstNameString";

DROP DOMAIN IF EXISTS  "sdFlagBit"."FlagFalse";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."FullNameString";

DROP DOMAIN IF EXISTS  "sdProjectString"."GrouplProjectNameString";

DROP DOMAIN IF EXISTS  "Udt"."hauska";

DROP DOMAIN IF EXISTS  "sdShortTextString"."InvoiceNumber";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."LastNameFirstNameString";

DROP DOMAIN IF EXISTS  "sdPersonNameString"."LastNameString";

DROP DOMAIN IF EXISTS  "sdSequenceNumber"."LineItemNumber";

DROP DOMAIN IF EXISTS  "sdLongTextString"."Note";

DROP DOMAIN IF EXISTS  "sdLongDescriptionString"."Note";

DROP DOMAIN IF EXISTS  "sdAddressesString"."PostalCodeString";

DROP DOMAIN IF EXISTS  "sdDate"."PurchaseDate";

DROP DOMAIN IF EXISTS  "sdAddressesString"."RegionString";

DROP DOMAIN IF EXISTS  "sdHashKey"."RowLevelKey";

DROP DOMAIN IF EXISTS  "sdDate"."SaleDate";

DROP DOMAIN IF EXISTS  "dString"."sdAddressesString";

DROP DOMAIN IF EXISTS  "dString"."sdAddressString";

DROP DOMAIN IF EXISTS  "dString"."sdBusinessComponentsString";

DROP DOMAIN IF EXISTS  "dString"."sdBusinessEntityNameString";

DROP DOMAIN IF EXISTS  "dString"."sdCountryStringVariants";

DROP DOMAIN IF EXISTS  "dString"."sdCustomerString";

DROP DOMAIN IF EXISTS  "dDateTime"."sdDate";

DROP DOMAIN IF EXISTS  "dDateTime"."sdDatetime2";

DROP DOMAIN IF EXISTS  "dDateTime"."sdDatetime2Precision7";

DROP DOMAIN IF EXISTS  "Udt"."sdDecimal";

DROP DOMAIN IF EXISTS  "dNumber"."sdFlagBit";

DROP DOMAIN IF EXISTS  "dString"."sdFlagCharString";

DROP DOMAIN IF EXISTS  "dString"."sdFlagString";

DROP DOMAIN IF EXISTS  "dBlob"."sdHashKey";

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

DROP DOMAIN IF EXISTS  "sdDateTime2"."SysStartTime";

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

CREATE Domain "sdAddressesString"."AddressString"
	AS VARCHAR(150) NULL;

CREATE Domain "sdAddressString"."AddressString"
	AS VARCHAR(60) NULL;

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

--CREATE Domain "dEuropeanCarDealership"."dBlob"
--	AS VARBINARY(MAX) NULL;

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

CREATE Domain "dNumber"."dNumber"
	AS INTEGER NULL;

CREATE Domain "dEuropeanCarDealership"."dNumber"
	AS INTEGER NULL;

--CREATE Domain "dSalary"
--	AS INTEGER NULL
--	CHECK %AttFieldName >= 22000;

CREATE Domain "dSalary"
	AS INTEGER null
	CHECK (VALUE >= 22000);

--CREATE Domain "dString"."dString"
--	AS VARCHAR(50) NULL;

--CREATE Domain "dEuropeanCarDealership"."dString"
--	AS VARCHAR(20) NULL;

CREATE Domain "sdPersonNameString"."FirstNameString"
	AS VARCHAR(25) NOT NULL;

CREATE Domain "sdFlagBit"."FlagFalse"
	AS BIT NULL;

CREATE Domain "sdPersonNameString"."FullNameString"
	AS VARCHAR(50) NOT NULL;

CREATE Domain "sdProjectString"."GrouplProjectNameString"
	AS VARCHAR(50) NULL;

CREATE Domain "Udt"."hauska"
	AS CHAR(18) NULL;

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

--CREATE Domain "sdHashKey"."RowLevelKey"
--	AS VARBINARY(32) NULL;

CREATE Domain "sdDate"."SaleDate"
	AS DATE NULL;

CREATE Domain "dString"."sdAddressesString"
	AS VARCHAR(20) NULL;

CREATE Domain "dString"."sdAddressString"
	AS VARCHAR(60) NULL;

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

CREATE Domain "dString"."sdFlagCharString"
	AS CHAR(1) NULL;

CREATE Domain "dString"."sdFlagString"
	AS VARCHAR(20) NULL;

--CREATE Domain "dBlob"."sdHashKey"
--	AS VARBINARY(MAX) NULL;

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

CREATE Domain "sdDateTime2"."SysStartTime"
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
	"CountryID"          integer  NOT NULL GENERATED always AS IDENTITY(SEQUENCE NAME xyz START WITH 1),
	"CountryName"        varchar(50)  NULL   DEFAULT  'Unavailable',
	"CountryISO3"        char(3)  NOT NULL,
	CONSTRAINT "CK_CountryCountryISO3" CHECK  ( "CountryISO3" like '[A-Z][A-Z][A-Z]' ) ,
	"CountryISO2"        char(2)  NULL,
	CONSTRAINT "CK_Country_CountryISO2" CHECK  ( "CountryISO2" like '[A-Z][A-Z]' ) ,
	"SalesRegion"        varchar(20)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_SalesRegion" CHECK  ( "SalesRegion" IN ('Asia', 'South_America', 'North_America', 'EMEA') ) ,
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_Country_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL 
);
drop table "Sales"."Country"
ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "PKCountry" PRIMARY KEY ("CountryID");

CREATE TABLE "Audit"."CountryHistory"
( 
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"IsDeleted"          char(18)  NULL ,
	"CountryHistoryId"   integer  NOT null generated always as identity(SEQUENCE NAME xyz START WITH 1)
);
drop table  "Audit"."CountryHistory"
ALTER TABLE "Audit"."CountryHistory"
	ADD CONSTRAINT "XPKCountryHistory" PRIMARY KEY ("CountryHistoryId");

CREATE TABLE "Sales"."Customer"
( 
	"CustomerID"         integer  NOT NULL GENERATED always AS identity,
	"CustomerName"       varchar(50)  NULL   DEFAULT  'Unavailable',
	"CustomerAddress1"   varchar(150)  NULL   DEFAULT  'Unavailable',
	"CustomerAddress2"   varchar(150)  NULL   DEFAULT  'Unavailable',
	"CustomerTown"       varchar(20)  NULL   DEFAULT  'Unavailable',
	"CustomerPostalCode" varchar(20)  NULL   DEFAULT  'Unavailable',
	"IsCustomerReseller" boolean  NULL   DEFAULT  FALSE,
--	CONSTRAINT "CK_Customer_IsCustomerReseller_FlagBit" CHECK  ( "IsCustomerReseller" IN (1, 0) ) ,
	"IsCustomerCreditRisk" boolean  NULL   DEFAULT  FALSE,
--	CONSTRAINT "CK_Customer_IsCustomerCreditRisk_FlagBit" CHECK  ( "IsCustomerCreditRisk" IN (1, 0) ) ,
	"CustomerExpenditureClassificationID" integer  NULL ,
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_Customer_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"CountryID"          integer  NULL 
);

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "PKCustomer" PRIMARY KEY ("CustomerID");

CREATE TABLE "Analytics"."CustomerExpenditureClassification"
( 
	"CustomerExpenditureClassificationID" integer  NOT NULL   DEFAULT  NEXT VALUE FOR [PKSequence].[CustomerExpenditureClassificationID],
	"CustomerExpenditureClassifier" varchar(25)  NULL   DEFAULT  'Unavailable'
);

ALTER TABLE "Analytics"."CustomerExpenditureClassification"
	ADD CONSTRAINT "XPKCustomerExpenditureClassification" PRIMARY KEY ("CustomerExpenditureClassificationID");

CREATE TABLE "Audit"."CustomerHistory"
( 
	"CustomerHistoryId"  integer  NOT NULL GENERATED always AS identity,
	"CustomerId"         integer  NOT NULL ,
	"CustomerCompanyName" varchar(50)  NOT NULL ,
	"CustomerAddress"    varchar(60)  NOT NULL   DEFAULT  'Street Address, P.O. Box, (Optional) Apartment Number',
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  integer  NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL   DEFAULT  'U',
	"UserAuthenticatedKey" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  '99991231 23:59:59.0000000',
	"IsDeleted"          boolean  NULL ,
	"CustomerExpenditureClassificationID" char(18)  NULL ,
	"IsCustomerCreditRisk" boolean  null default  FALSE,
	"IsCustomerReseller" boolean  null default FALSE
);

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "PK_CustomerHistoryId" PRIMARY KEY ("CustomerHistoryId");

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "AK1_CustomerHistory" UNIQUE ("CustomerHistoryId","TransactionNumber","CustomerId","CustomerCompanyName");

CREATE TABLE "HumanResources"."Department"
( 
	"DepartmentName"     varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentID"       integer  NOT NULL GENERATED always AS identity,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  '99991231 23:59:59.0000000'
);

ALTER TABLE "HumanResources"."Department"
	ADD CONSTRAINT "XPKDepartment" PRIMARY KEY ("DepartmentID");

CREATE TABLE "Audit"."DepartmentHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              boolean  NULL ,
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" integer  not NULL ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  '99991231 23:59:59.0000000',
	"DepartmentId"       integer  NULL ,
	"Department"         varchar(18)  NULL ,
	"DepartmentHistoryId" integer  NOT NULL GENERATED always AS identity
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
	"ManufacturerVehicleMakeID" integer  NOT NULL GENERATED always AS identity,
	"ManufacturerVehicleMakeName" varchar(150)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleMarketingCategoryID" integer  NULL ,
	"CountryID"          integer  NULL ,
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_ManufacturerVehicleMake_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
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
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"ManufacturerVehicleMakeName" char(18)  NULL ,
	"ManufacturerVehicleMakeID" integer  NULL ,
	"CountryID"          integer  NULL ,
	"ManufacturerVehicleMakeHistoryId" integer  NOT NULL GENERATED always AS identity
);

ALTER TABLE "Audit"."ManufacturerVehicleMakeHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleMakeHistory" PRIMARY KEY ("ManufacturerVehicleMakeHistoryId");

CREATE TABLE "Inventory"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelID" integer  NOT NULL GENERATED always AS identity,
	"ManufacturerVehicleModelName" varchar(150)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleModelVariant" varchar(150)  NULL   DEFAULT  'Unavailable',
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_ManufacturerVehicleModel_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
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
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"ManufacturerModelName" char(18)  NULL ,
	"ManufacturerVehicleModelID" integer  NULL ,
	"ManufacturerModelVariant" char(18)  NULL ,
	"ManufacturerVehicleModelHistoryId" integer  NOT null GENERATED always AS identity 
);

ALTER TABLE "Audit"."ManufacturerVehicleModelHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleModelHistory" PRIMARY KEY ("ManufacturerVehicleModelHistoryId");

CREATE TABLE "Inventory"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockID" integer  NOT NULL GENERATED always AS identity,
	"StockCode"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"Cost"               numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_Cost_Price" CHECK  ( "Cost" >= 0.00 ) ,
	"RepairsCharge"      integer  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_RepairsCharge_Price" CHECK  ( "RepairsCharge" >= 0.00 ) ,
	"PartsCharge"        integer  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_PartsCharge_Price" CHECK  ( "PartsCharge" >= 0.00 ) ,
	"DeliveryCharge"     integer  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_ManufacturerVehicleStock_DeliveryCharge_Price" CHECK  ( "DeliveryCharge" >= 0.00 ) ,
	"IsPremiumRoadHandlingPackage" boolean  NULL   DEFAULT  FALSE,
--	CONSTRAINT "CK_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagBi" CHECK  ( "IsPremiumRoadHandlingPackage" IN (1, 0) ) ,
	"VehicleColor"       varchar(50)  NULL   DEFAULT  'Unavailable',
	"CustomerComments"   varchar(200)  NULL   DEFAULT  'Unavailable',
	"PurchaseDate"       date  NULL   DEFAULT  '19991231',
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_ManufacturerVehicleStock_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
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
	"SysStartTime"       timestamp  NULL   DEFAULT  NOW(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"IsDeleted"          BOOLEAN  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  SMALLINT  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" INTEGER  NULL ,
	"ManufacturerVehicleStockID" INTEGER  NULL ,
	"ManufacturerVehicleModelID" INTEGER  NULL ,
	"StockCode"          char(18)  NULL ,
	"Cost"               NUMERIC(10,2)  NULL ,
	"DeliveryCharge"     NUMERIC(10,2)  NULL ,
	"PartsCharge"        NUMERIC(10,2)  NULL ,
	"PurchaseDate"       NUMERIC(10,2)  NULL ,
	"RepairsCharge"      NUMERIC(10,2)  NULL ,
	"ManufacturerVehicleStockHistoryId" integer  NOT NULL GENERATED always AS identity
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
	"SalesOrderVehicleID" integer  NOT NULL GENERATED always AS identity,
	"InvoiceNumber"      char(8)  NULL   DEFAULT  '00000000',
	"TotalSalePrice"     numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesOrderVehicle_TotalSalePrice_Price" CHECK  ( "TotalSalePrice" >= 0.00 ) ,
	"SaleDate"           date  NULL   DEFAULT  '19991231',
	"SalesOrderCategoryDescription" CHAR(18)  NULL ,
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_SalesOrderVehicle_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"CustomerID"         integer  NULL ,
	"StaffID"            integer  NOT NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "XPKSalesOrderVehicle" PRIMARY KEY ("SalesOrderVehicleID");

CREATE TABLE "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleDetailID" integer  NOT NULL GENERATED always AS identity,
	"LineItemNumber"     smallint  NOT NULL   DEFAULT  1,
	"StockCode"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"SalePrice"          numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_Template_Price" CHECK  ( "SalePrice" >= 0.00 ) ,
	"LineItemDiscount"   numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesOrderVehicleDetail_LineItemDiscount_Price" CHECK  ( "LineItemDiscount" >= 0.00 ) ,
	"DerivedDiscountedSalePrice" numeric(18,2)  NOT NULL ,
	CONSTRAINT "CK_SalesOrderVehicleDetail_DeriveDDiscountedSalePrice_Price" CHECK  ( "DerivedDiscountedSalePrice" >= 0.00 ) ,
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_SalesOrderVehicleDetail_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"SalesOrderVehicleID" integer  NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "PKSalesDetails" PRIMARY KEY ("SalesOrderVehicleDetailID");

CREATE TABLE "Audit"."SalesOrderVehicleDetailHistory"
( 
	"IsDeleted"         boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"SalesOrderVehicleDetailHistoryid" integer  NOT NULL GENERATED always AS identity,
	"SalePrice"          numeric(10,2)  NULL ,
	"LineItemNumber"     char(18)  NULL ,
	"LineItemDiscount"   numeric(5,2)  NULL ,
	"DerivedDiscountedSalePrice" numeric(10,2)  NULL ,
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
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"SalesOrderVehicleHistoryId" integer  NOT NULL GENERATED always AS identity,
	"SaleDate"           date  NULL ,
	"CustomerID"         integer  NULL ,
	"InvoiceNumber"      char(18)  NULL ,
	"StaffID"            integer  NULL ,
	"SalesOrderVehicleID" integer  NULL 
);

ALTER TABLE "Audit"."SalesOrderVehicleHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleHistory" PRIMARY KEY ("SalesOrderVehicleHistoryId");

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffID"            integer  NOT NULL GENERATED always AS identity,
	"StaffName"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentID"       integer  NULL ,
	"ManagerID"          integer  NULL ,
--	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
--	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
--	CONSTRAINT "CK_Staff_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"Salary"             integer  NULL ,
	"StaffEmail"         varchar(50)  NULL ,
	"UserAuthorizationId" integer  NULL 
);
drop table "HumanResources"."Staff" 

ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY ("StaffID");

CREATE TABLE "Audit"."StaffHistory"
( 
	"StaffHistoryID"     integer  NOT NULL GENERATED always AS identity,
	"Salary"             numeric(15,2)  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"DepartmentID"       integer  NULL ,
	"ManagerID"          integer  NULL ,
	"StaffName"          varchar(30)  NULL ,
	"StaffEmail"         varchar(50)  NULL ,
	"StaffID"            integer  NULL 
);

ALTER TABLE "Audit"."StaffHistory"
	ADD CONSTRAINT "XPKStaffHistory" PRIMARY KEY ("StaffHistoryID");

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" integer  NOT NULL GENERATED always AS identity,
	"ClassTime"          varchar(5)  NULL default '9:15',
	"Individualproject"  char(18)  NULL ,
	"GroupMemberLastName" char(18)  NULL ,
	"GroupMemberFirstName" char(18)  NULL ,
	"GroupName"          char(18)  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  now(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999'
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



CREATE OR REPLACE FUNCTION log_Country_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Sales.Country 
        SET CountryID = NEW.CountryID,
            CountryName = NEW.CountryName,
            CountryISO3 = NEW.CountryISO3,
            CountryISO2 = NEW.CountryISO2,
            SalesRegion = NEW.SalesRegion,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;

        INSERT INTO Audit.CountryHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Country
    BEFORE UPDATE ON "Sales"."Country"
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_update();


CREATE OR REPLACE FUNCTION log_Country_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.Country WHERE CountryId = OLD.CountryId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.CountryHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_Country
    AFTER DELETE ON "Sales"."Country"
    FOR EACH ROW
    EXECUTE FUNCTION log_Country_delete();
   
CREATE OR REPLACE FUNCTION log_Customer_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Sales.Customer
        SET CustomerId = NEW.CustomerId,
            CustomerName = NEW.CustomerName,
            CustomerAddress = NEW.CustomerAddress,
            CustomerExpenditureClassificationID = NEW.CustomerExpenditureClassificationID,
            IsCustomerCreditRisk = NEW.IsCustomerCreditRisk,
            IsCustomerReseller = NEW.IsCustomerReseller,
            SysStartTime = NEW.SysStartTime,
            SysEndTime = NEW.SysEndTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;
        
        INSERT INTO Audit.CustomerHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Customer
    BEFORE UPDATE ON "Sales"."Customer"
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_update();

CREATE OR REPLACE FUNCTION log_Customer_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.Customer WHERE NEW.CustomerId = OLD.CustomerId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO CustomerHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Customer
    AFTER DELETE ON "Sales"."Customer"
    FOR EACH ROW
    EXECUTE FUNCTION log_Customer_delete();

CREATE OR REPLACE FUNCTION log_Department_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE HumanResources.Department
        SET DepartmentId = NEW.DepartmentId,
            Department = NEW.Department,
            SysStartTime = NEW.SysStartTime,
            SysEndTime = NEW.SysEndTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.DepartmentHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Department
    AFTER DELETE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_update();
   
CREATE OR REPLACE FUNCTION log_Department_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE HumanResources.Department
        SET DepartmentId = NEW.DepartmentId,
            Department = NEW.Department,
            SysStartTime = NEW.SysStartTime,
            SysEndTime = NEW.SysEndTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.DepartmentHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Department
    AFTER DELETE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_update();
    

CREATE OR REPLACE FUNCTION log_Department_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM HumanResources.Department WHERE NEW.DepartmentId = OLD.DepartmentId;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.DepartmentHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Department
    AFTER UPDATE ON "HumanResources"."Department"
    FOR EACH ROW
    EXECUTE FUNCTION log_Department_delete();

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleMake_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Inventory.ManufacturerVehicleMake
        SET ManufacturerVehicleMakeName = NEW.ManufacturerVehicleMakeName,
            ManufacturerVehicleMakeID = NEW.ManufacturerVehicleMakeID,
            CountryID = NEW.CountryID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.ManufacturerVehicleMakeHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_ManufacturerVehicleMake
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleMake"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleMake_update();
   
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleMake_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Customer WHERE NEW.ManufacturerVehicleMakeID = OLD.ManufacturerVehicleMakeID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.ManufacturerVehicleMakeHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_ManufacturerVehicleMake
    AFTER DELETE ON "Inventory"."ManufacturerVehicleMake"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleMake_delete();
    
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleModel_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Inventory.ManufacturerVehicleModel
        SET ManufacturerVehicleModelID = NEW.ManufacturerVehicleModelID,
            ManufacturerModelName = NEW.ManufacturerModelName,
            ManufacturerModelVariant = NEW.ManufacturerModelVariant,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.ManufacturerVehicleModelHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_ManufacturerVehicleModel
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_update();
   
-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTdu_ManufacturerVehicleModel
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_update();
    

CREATE OR REPLACE FUNCTION log_ManufacturerVehicleModel_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Customer WHERE NEW.ManufacturerVehicleModelID = OLD.ManufacturerVehicleModelID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.ManufacturerVehicleModelHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_ManufacturerVehicleModel
    AFTER delete on "Inventory"."ManufacturerVehicleModel"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleModel_delete();
   
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Inventory.ManufacturerVehicleStock
        SET ManufacturerVehicleStockID = NEW.ManufacturerVehicleStockID,
            ManufacturerVehicleModelID = NEW.ManufacturerVehicleModelID,
            StockCode = NEW.StockCode,
            Cost = NEW.Cost,
            DeliveryCharge = NEW.DeliveryCharge,
            PartsCharge = NEW.PartsCharge,
            PurchaseDate = NEW.PurchaseDate,
            RepairsCharge = NEW.RepairsCharge,
            SysStartTime = NEW.SysStartTime,
            SysEndTime = NEW.SysEndTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.ManufacturerVehicleStockHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_ManufacturerVehicleStock
    BEFORE UPDATE ON "Inventory"."ManufacturerVehicleStock"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_update();
   
CREATE OR REPLACE FUNCTION log_ManufacturerVehicleStock_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Customer WHERE NEW.ManufacturerVehicleStockID = OLD.ManufacturerVehicleStockID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.ManufacturerVehicleStockHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_ManufacturerVehicleStock
    AFTER DELETE ON "Inventory"."ManufacturerVehicleStock"
    FOR EACH ROW
    EXECUTE FUNCTION log_ManufacturerVehicleStock_delete();
   
CREATE OR REPLACE FUNCTION log_SalesOrderVehicle_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Sales.SalesOrderVehicle
        SET SalesOrderVehicleID = NEW.SalesOrderVehicleID,
            InvoiceNumber = NEW.InvoiceNumber,
            SaleDate = NEW.SaleDate,
            CustomerID = NEW.CustomerID,
            StaffID = NEW.StaffID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.SalesOrderVehicleHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_SalesOrderVehicle
    BEFORE UPDATE ON "Sales"."SalesOrderVehicle"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_update();

CREATE TRIGGER uTu_SalesOrderVehicle
    BEFORE UPDATE ON "Sales"."SalesOrderVehicle"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_update();
    

CREATE OR REPLACE FUNCTION log_SalesOrderVehicle_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.SalesOrderVehicleDetail WHERE NEW.SalesOrderVehicleID = OLD.SalesOrderVehicleID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.SalesOrderVehicleHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_SalesOrderVehicle
    AFTER DELETE ON "Sales"."SalesOrderVehicle"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicle_delete();
   
CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE Sales.SalesOrderVehicleDetail
        SET SalesOrderVehicleDetailID = NEW.SalesOrderVehicleDetailID,
            ManufacturerVehicleStockID = NEW.ManufacturerVehicleStockID,
            SalesOrderVehicleID = NEW.SalesOrderVehicleID,
            SalePrice = NEW.SalePrice,
            LineItemNumber = NEW.LineItemNumber,
            LineItemDiscount = NEW.LineItemDiscount,
            DerivedDiscountedSalePrice = NEW.DerivedDiscountedSalePrice,
            StockCode = NEW.StockCode,
            StaffID = NEW.StaffID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.ManufacturerVehicleMakeHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_SalesOrderVehicleDetail
    BEFORE UPDATE ON "Sales"."SalesOrderVehicleDetail"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_update();

CREATE OR REPLACE FUNCTION log_SalesOrderVehicleDetail_delete() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM Sales.SalesOrderVehicleDetail WHERE NEW.SalesOrderVehicleDetailID = OLD.SalesOrderVehicleDetailID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.SalesOrderVehicleDetailHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;


-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_SalesOrderVehicleDetail
    AFTER DELETE ON "Sales"."SalesOrderVehicleDetail"
    FOR EACH ROW
    EXECUTE FUNCTION log_SalesOrderVehicleDetail_delete();

CREATE OR REPLACE FUNCTION log_Staff_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        NEW.TransactionNumber = OLD.TransactionNumber + 1;
        NEW.SysStartTime = CURRENT_TIME;   
        NEW.SysEndTime = MAX_DATETIME;

        UPDATE HumanResources.Staff
        SET StaffID = NEW.StaffID,
            StaffName = NEW.StaffName,
            StaffEmail = NEW.StaffEmail,
            Salary = NEW.Salary,
            DepartmentID = NEW.DepartmentID,
            ManagerID = NEW.ManagerID,
            SysEndTime = NEW.SysEndTime,
            SysStartTime = NEW.SysStartTime,
            UserAuthorizationId = NEW.UserAuthorizationId,
            TransactionNumber = NEW.TransactionNumber;
        IF NOT FOUND THEN RETURN NULL; END IF;            
        
        INSERT INTO Audit.StaffHistory VALUES('U', 'Row was updated', FALSE, OLD.*);
        RETURN NEW;
    END;
$$ LANGUAGE plpgsql;

drop trigger uTu_Staff on "HumanResources"."Staff";
-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTu_Staff
    BEFORE UPDATE ON "HumanResources"."Staff"
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_update();
    
CREATE OR REPLACE FUNCTION log_Staff_update() RETURNS TRIGGER AS $$
    DECLARE
        CURRENT_TIME timestamp := now();
        MAX_DATETIME timestamp := '9999-12-31 23:59:59';  -- Remember that any date or time literal input needs to be enclosed in single quotes, like text strings.
    BEGIN
        --
        -- Perform the required operation on emp, and create a row in emp_audit
        -- to reflect the change made to emp.
        --
        DELETE FROM HumanResources.Staff WHERE NEW.StaffID = OLD.StaffID;
        IF NOT FOUND THEN RETURN NULL; END IF;

        OLD.SysEndTime = CURRENT_TIME;
        INSERT INTO Audit.StaffHistory VALUES('D', 'Row was deleted', TRUE, OLD.*);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

drop trigger uTd_Staff on "HumanResources"."Staff";

-- trigger function logs updates to Country table, but only if something changed
CREATE TRIGGER uTd_Staff
    AFTER DELETE ON "HumanResources"."Staff"
    FOR EACH ROW
    EXECUTE FUNCTION log_Staff_delete();
   
   
INSERT INTO "HumanResources"."Department"("DepartmentName")
VALUES ('Accounting') RETURNING *;

INSERT INTO "HumanResources"."Staff"("StaffName", "Salary", "StaffEmail")
VALUES ('john bernice', 20000.00, 'jb1@GMAIL.COM'),
('jane bernice', 30000.00, 'jbernice2@GMAIL.COM'),
('thor hammond', 40000.00, 'thammond1@GMAIL.COM'),
('michael shota', 50000.00, 'mshota1@GMAIL.COM')
RETURNING *;

update "HumanResources"."Staff"
set "DepartmentID" = 1
where "StaffID" = 2