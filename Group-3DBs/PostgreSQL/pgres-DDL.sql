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

DROP DOMAIN IF EXISTS  "sdLongDescriptionString"."Note";

DROP DOMAIN IF EXISTS  "sdLongTextString"."Note";

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

DROP DOMAIN IF EXISTS  "sdEmailString";

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

DROP DOMAIN IF EXISTS  "sdPostalCode";

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

CREATE Domain "dEuropeanCarDealership"."dNumber"
	AS INTEGER NULL;

CREATE Domain "dNumber"."dNumber"
	AS INTEGER NULL;

CREATE Domain "dSalary"
	AS INTEGER NULL
	CHECK (VALUE >= 22000);

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

CREATE Domain "sdLongDescriptionString"."Note"
	AS VARCHAR(200) NULL;

CREATE Domain "sdLongTextString"."Note"
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

CREATE Domain "sdEmailString"
	AS VARCHAR(50) NULL;

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

CREATE Domain "sdPostalCode"
	AS VARCHAR(10) NULL;

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

CREATE TABLE "Audit"."CountryHistory"
( 
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL ,
	"TriggerOption"      char(1)  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1,
	"Notes"              varchar(200)  NULL ,
	"IsDeleted"          boolean  NULL ,
	"CountryHistoryId"   integer  NOT NULL ,
	"CountryId"          integer  NULL ,
	"CountryName"        char(18)  NULL ,
	"CountryISO3"        char(3)  NULL ,
	"CountryISO2"        char(2)  NULL ,
	"SalesRegion"        char(18)  NULL 
);

ALTER TABLE "Audit"."CountryHistory"
	ADD CONSTRAINT "XPKCountryHistory" PRIMARY KEY ("CountryHistoryId");

CREATE TABLE "Audit"."CustomerHistory"
( 
	"CustomerHistoryId"  integer  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(20)  NOT NULL   DEFAULT  'Unavailable',
	"CustomerAddress"    varchar(60)  NOT NULL   DEFAULT  'Street Address, P.O. Box, (Optional) Apartment Number',
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL   DEFAULT  'U',
	"UserAuthorizationId" integer  NULL   DEFAULT  1,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"IsDeleted"          boolean  NULL ,
	"CustomerExpenditureClassificationID" integer  NULL ,
	"IsCustomerCreditRisk" char(18)  NULL ,
	"IsCustomerReseller" char(18)  NULL 
);

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "PK_CustomerHistoryId" PRIMARY KEY ("CustomerHistoryId");

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "AK1_CustomerHistory" UNIQUE ("CustomerHistoryId","TransactionNumber","CustomerId","CustomerName");

CREATE TABLE "HumanResources"."Department"
( 
	"DepartmentName"     varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentId"       integer  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1
);

ALTER TABLE "HumanResources"."Department"
	ADD CONSTRAINT "XPKDepartment" PRIMARY KEY ("DepartmentId");

CREATE TABLE "Audit"."DepartmentHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"DepartmentId"       integer  NULL ,
	"DepartmentName"     char(18)  NULL ,
	"DepartmentHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."DepartmentHistory"
	ADD CONSTRAINT "XPKDepartmentHistory" PRIMARY KEY ("DepartmentHistoryId");

CREATE TABLE "Audit"."ManufacturerVehicleMakeHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"ManufacturerVehicleMakeName" varchar(50)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleMakeID" integer  NULL ,
	"CountryID"          integer  NULL ,
	"ManufacturerVehicleMakeHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."ManufacturerVehicleMakeHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleMakeHistory" PRIMARY KEY ("ManufacturerVehicleMakeHistoryId");

CREATE TABLE "Audit"."ManufacturerVehicleModelHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              varchar(200)  NULL   DEFAULT  'Row was inserted',
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"ManufacturerModelName" char(18)  NULL ,
	"ManufacturerVehicleModelID" integer  NULL ,
	"ManufacturerModelVariant" char(18)  NULL ,
	"ManufacturerVehicleModelHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."ManufacturerVehicleModelHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleModelHistory" PRIMARY KEY ("ManufacturerVehicleModelHistoryId");

CREATE TABLE "Audit"."ManufacturerVehicleStockHistory"
( 
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"IsDeleted"          boolean  NULL ,
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1,
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

CREATE TABLE "Sales"."Country"
( 
	"CountryId"          integer  NOT NULL ,
	"CountryName"        varchar(50)  NULL   DEFAULT  'Unavailable',
	"CountryISO3"        char(3)  NOT NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_CountryCountryISO3" CHECK  ( "CountryISO3" ~ '[A-Z][A-Z][A-Z]' ) ,
	"CountryISO2"        char(2)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_CountryISO2" CHECK  ( "CountryISO2" ~ '[A-Z][A-Z]' ) ,
	"SalesRegion"        varchar(20)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_SalesRegion" CHECK  ( "SalesRegion" IN ('Asia', 'South America', 'North America', 'EMEA') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL 
);

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "PKCountry" PRIMARY KEY ("CountryId");

CREATE TABLE "Sales"."Customer"
( 
	"CustomerID"         integer  NOT NULL,
	"CustomerName"       varchar(50)  NULL   DEFAULT  'Unavailable',
	"CustomerAddress1"   varchar(150)  NULL   DEFAULT  'Unavailable',
	"CustomerAddress2"   varchar(150)  NULL   DEFAULT  'Unavailable',
	"CustomerTown"       varchar(20)  NULL   DEFAULT  'Unavailable',
	"CustomerPostalCode" varchar(20)  NULL   DEFAULT  'Unavailable',
    "CustomerCountry"   char(2) null, 
	"IsCustomerReseller" boolean  NULL   DEFAULT  FALSE,
	"IsCustomerCreditRisk" boolean  NULL   DEFAULT  FALSE,
	"CustomerSpendCapacityID" integer  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL ,
	"CountryID"          integer  NULL 
);
ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "PKCustomer" PRIMARY KEY ("CustomerID");

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffID"            integer  NOT NULL ,
	"StaffName"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentName"       varchar(15)  NULL ,
	"ManagerID"          integer  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"Salary"             integer  NULL ,
	"StaffEmail"         varchar(50)  NULL ,
	"UserAuthorizationId" integer  NULL 
);

ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY ("StaffID");

CREATE TABLE "Sales"."SalesOrderVehicle"
( 
	"SalesOrderVehicleID" integer  NOT NULL ,
	"InvoiceNumber"      char(8)  NULL   DEFAULT  '00000000',
	"TotalSalePrice"     numeric(18,2)  NULL   DEFAULT  0.00,
	CONSTRAINT "CK_SalesOrderVehicle_TotalSalePrice_Price" CHECK  ( "TotalSalePrice" >= 0.00 ) ,
	"SaleDate"           date  NULL   DEFAULT  '19991231',
	"SalesOrderCategoryDescription" CHAR(18)  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL ,
	"CustomerID"         integer  NULL ,
	"StaffID"            integer  NOT NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "XPKSalesOrderVehicle" PRIMARY KEY ("SalesOrderVehicleID");

CREATE TABLE "Inventory"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeID" integer  NOT NULL ,
	"ManufacturerVehicleMakeName" char(18)  NULL ,
	"ManufacturerVehicleMarketingCategoryID" integer  NULL ,
	"CountryID"          integer  NULL ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL 
--	CONSTRAINT "FK_ManufacturerVehicleMake_ManufacturerMarketingCategory" FOREIGN KEY ("ManufacturerVehicleMarketingCategoryID") REFERENCES "Analytics"."ManufacturerMarketingCategory"("ManufacturerMarketingCategoryID")
--		ON UPDATE SET NULL
--		ON DELETE SET NULL
);

ALTER TABLE "Inventory"."ManufacturerVehicleMake"
	ADD CONSTRAINT "PKMake" PRIMARY KEY ("ManufacturerVehicleMakeID");

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
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"SalesOrderVehicleID" integer  NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "PKSalesDetails" PRIMARY KEY ("SalesOrderVehicleDetailID");

CREATE TABLE "Inventory"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockID" integer  NOT NULL,
	"StockID" INTEGER null,
	"ModelID" INTEGER null,
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
	"VehicleColor"       varchar(50)  NULL   DEFAULT  'Unavailable',
	"CustomerComments"   varchar(200)  NULL   DEFAULT  'Unavailable',
	"PurchaseDate"       date  NULL   DEFAULT  '19991231',
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleModelID" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleStock"
	ADD CONSTRAINT "PKStock" PRIMARY KEY ("ManufacturerVehicleStockID");


CREATE TABLE "Inventory"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelID" integer  NOT NULL,
	"ManufacturerVehicleModelName" varchar(150)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleModelVariant" char(3)  NULL   DEFAULT  'Unavailable',
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"UserAuthorizationId" integer  NULL ,
	"ManufacturerVehicleMakeID" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleModel"
	ADD CONSTRAINT "PKModel1" PRIMARY KEY ("ManufacturerVehicleModelID");

CREATE TABLE "Audit"."StaffHistory"
( 
	"StaffHistoryID"     integer  NOT NULL GENERATED always AS identity,
	"Salary"             numeric(15,2)  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"TransactionNumber"  smallint  NULL ,
	"TriggerOption"      char(1)  NULL ,
	"UserAuthorizationId" integer  NULL ,
	"IsDeleted"          boolean  NULL ,
	"Notes"              char(18)  NULL ,
	"DepartmentName"       varchar(15)  NULL ,
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
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
);

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XPKUserAuthorization" PRIMARY KEY ("UserAuthorizationId");

CREATE TABLE "Audit"."SalesOrderVehicleHistory"
( 
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS')
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


CREATE TABLE "Audit"."SalesOrderVehicleDetailHistory"
( 
	"IsDeleted"          boolean  NULL ,
	"Notes"              varchar(18)  NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL ,
	"UserAuthorizationId" integer  NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  to_timestamp(now()::text, 'YYYY-MM-DD HH24:MI:SS'),
	"SysEndTime"         timestamp  NULL   DEFAULT  to_timestamp('9999-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS'),
	"SalesOrderVehicleDetailHistoryID" integer  NOT NULL ,
	"SalePrice"          char(18)  NULL ,
	"LineItemNumber"     char(18)  NULL ,
	"LineItemDiscount"   char(18)  NULL ,
	"DerivedDiscountedSalePrice" numeric(18,2)  NULL ,
	"StockCode"          char(18)  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"SalesOrderVehicleID" integer  NULL ,
	"SalesOrderVehicleDetailID" integer  NULL ,
	"StaffID"            integer  NULL 
);

ALTER TABLE "Audit"."SalesOrderVehicleDetailHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleDetailHistory" PRIMARY KEY ("SalesOrderVehicleDetailHistoryID");

drop table "Audit"."SalesOrderVehicleDetailHistory"

