


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
	CONSTRAINT "CK_CountryCountryISO3" CHECK  ( [CountryISO3] like '[A-Z][A-Z][A-Z]' ) ,
	"CountryISO2"        char(2)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_CountryISO2" CHECK  ( [CountryISO2] like '[A-Z][A-Z]' ) ,
	"SalesRegion"        varchar(20)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT "CK_Country_SalesRegion" CHECK  ( "SalesRegion" IN ('Asia', 'South_America', 'North_America', 'EMEA') ) ,
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_Country_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" char(18)  NULL 
);

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "PKCountry" PRIMARY KEY ("CountryID");

CREATE TABLE "Audit"."CountryHistory"
( 
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"IsDeleted"          char(18)  NULL ,
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
	"IsCustomerReseller" bit  NULL   DEFAULT  0,
	CONSTRAINT "CK_Customer_IsCustomerReseller_FlagBit" CHECK  ( "IsCustomerReseller" IN (1, 0) ) ,
	"IsCustomerCreditRisk" bit  NULL   DEFAULT  0,
	CONSTRAINT "CK_Customer_IsCustomerCreditRisk_FlagBit" CHECK  ( "IsCustomerCreditRisk" IN (1, 0) ) ,
	"CustomerExpenditureClassificationID" integer  NULL ,
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_Customer_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"SysEndTime__1659"   char(18)  NULL ,
	"SysStartTime__1660" char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
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
	"CustomerHistoryId"  integer  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"CustomerCompanyName" varchar(50)  NOT NULL ,
	"CustomerAddress"    varchar(60)  NOT NULL   DEFAULT  'Street Address, P.O. Box, (Optional) Apartment Number',
	"Notes"              varchar(200)  NULL ,
	"TransactionNumber"  integer  NULL   DEFAULT  1,
	"TriggerOption"      char(1)  NOT NULL   DEFAULT  'U',
	"UserAuthenticatedKey" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  '99991231 23:59:59.0000000',
	"IsDeleted"          char(1)  NULL ,
	"CustomerExpenditureClassificationID" char(18)  NULL ,
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
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"SysEndTime"         char(18)  NULL 
);

ALTER TABLE "HumanResources"."Department"
	ADD CONSTRAINT "XPKDepartment" PRIMARY KEY ("DepartmentID");

CREATE TABLE "Audit"."DepartmentHistory"
( 
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"DepartmentId"       char(18)  NULL ,
	"Department"         char(18)  NULL ,
	"DepartmentHistoryId" integer  NOT NULL   DEFAULT  0.00
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
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_ManufacturerVehicleMake_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"SysEndTime__1665"   char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime__1690" char(18)  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleMake"
	ADD CONSTRAINT "PKMake" PRIMARY KEY ("ManufacturerVehicleMakeID");

CREATE TABLE "Audit"."ManufacturerVehicleMakeHistory"
( 
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"ManufacturerVehicleMakeName" char(18)  NULL ,
	"ManufacturerVehicleMakeID" char(18)  NULL ,
	"CountryID"          char(18)  NULL ,
	"ManufacturerVehicleMakeHistoryId" integer  NOT NULL 
);

ALTER TABLE "Audit"."ManufacturerVehicleMakeHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleMakeHistory" PRIMARY KEY ("ManufacturerVehicleMakeHistoryId");

CREATE TABLE "Inventory"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelID" integer  NOT NULL ,
	"ManufacturerVehicleModelName" varchar(150)  NULL   DEFAULT  'Unavailable',
	"ManufacturerVehicleModelVariant" varchar(150)  NULL   DEFAULT  'Unavailable',
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_ManufacturerVehicleModel_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"SysEndTime__1686"   char(18)  NULL ,
	"SysStartTime__1687" char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"ManufacturerVehicleMakeID" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleModel"
	ADD CONSTRAINT "PKModel1" PRIMARY KEY ("ManufacturerVehicleModelID");

CREATE TABLE "Audit"."ManufacturerVehicleModelHistory"
( 
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"ManufacturerModelName" char(18)  NULL ,
	"ManufacturerVehicleModelID" char(18)  NULL ,
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
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_ManufacturerVehicleStock_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" char(18)  NULL ,
	"SysEndTime__1695"   char(18)  NULL ,
	"SysStartTime__1696" char(18)  NULL ,
	"ManufacturerVehicleModelID" integer  NULL 
);

ALTER TABLE "Inventory"."ManufacturerVehicleStock"
	ADD CONSTRAINT "PKStock" PRIMARY KEY ("ManufacturerVehicleStockID");

CREATE TABLE "Audit"."ManufacturerVehicleStockHistory"
( 
	"SysStartTime"       char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"ManufacturerVehicleStockID" char(18)  NULL ,
	"ManufacturerVehicleModelID" char(18)  NULL ,
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
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_SalesOrderVehicle_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime__1684" char(18)  NULL ,
	"SysEndTime__1685"   char(18)  NULL ,
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
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_SalesOrderVehicleDetail_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"SysStartTime__1680" char(18)  NULL ,
	"SysEndTime__1681"   char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"default"            char(18)  NULL ,
	"ManufacturerVehicleStockID" integer  NULL ,
	"SalesOrderVehicleID" integer  NULL 
);

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "PKSalesDetails" PRIMARY KEY ("SalesOrderVehicleDetailID");

CREATE TABLE "Audit"."SalesOrderVehicleDetailHistory"
( 
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"SalesOrderVehicleDetailHistoryid" integer  NOT NULL ,
	"SalePrice"          char(18)  NULL ,
	"LineItemNumber"     char(18)  NULL ,
	"LineItemDiscount"   char(18)  NULL ,
	"DerivedDiscountedSalePrice" char(18)  NULL ,
	"StockCode"          char(18)  NULL ,
	"ManufacturerVehicleStockID" char(18)  NULL ,
	"SalesOrderVehicleID" char(18)  NULL ,
	"SalesOrderVehicleDetailID" char(18)  NULL ,
	"StaffID"            char(18)  NULL 
);

ALTER TABLE "Audit"."SalesOrderVehicleDetailHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleDetailHistory" PRIMARY KEY ("SalesOrderVehicleDetailHistoryid");

CREATE TABLE "Audit"."SalesOrderVehicleHistory"
( 
	"UserAuthorizationId" char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"SalesOrderVehicleHistoryId" integer  NOT NULL ,
	"SaleDate"           char(18)  NULL ,
	"CustomerID"         char(18)  NULL ,
	"InvoiceNumber"      char(18)  NULL ,
	"StaffID"            char(18)  NULL ,
	"SalesOrderVehicleID" char(18)  NULL 
);

ALTER TABLE "Audit"."SalesOrderVehicleHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleHistory" PRIMARY KEY ("SalesOrderVehicleHistoryId");

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffID"            integer  NOT NULL ,
	"StaffName"          varchar(50)  NULL   DEFAULT  'Unavailable',
	"DepartmentID"       integer  NULL ,
	"ManagerID"          integer  NULL ,
	"Note"               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	"IsDeleted"          varchar(20)  NULL   DEFAULT  'N',
	CONSTRAINT "CK_Staff_IsDeleted_AuditFlag" CHECK  ( "IsDeleted" IN ('Y', 'N') ) ,
	"TransactionNumber"  smallint  NULL   DEFAULT  1,
	"UserAuthorizationID" integer  NULL   DEFAULT  1,
	"SysStartTime"       timestamp  NULL   DEFAULT  sysdatetime(),
	"SysEndTime"         timestamp  NULL   DEFAULT  '99991231 23:59:59.9999999',
	"Salary"             integer  NULL ,
	"StaffEmail"         char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"SysStartTime__1657" char(18)  NULL ,
	"SysEndTime__1658"   char(18)  NULL 
);

ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY ("StaffID");

CREATE TABLE "Audit"."StaffHistory"
( 
	"StaffHistoryID"     integer  NOT NULL ,
	"Salary"             char(18)  NULL ,
	"SysEndTime"         char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
	"TransactionNumber"  char(18)  NULL ,
	"TriggerOption"      char(18)  NULL ,
	"UserAuthorizationId" char(18)  NULL ,
	"IsDeleted"          char(18)  NULL ,
	"Notes"              char(18)  NULL ,
	"DepartmentID"       char(18)  NULL ,
	"ManagerID"          char(18)  NULL ,
	"StaffName"          char(18)  NULL ,
	"StaffEmail"         char(18)  NULL ,
	"StaffID"            char(18)  NULL 
);

ALTER TABLE "Audit"."StaffHistory"
	ADD CONSTRAINT "XPKStaffHistory" PRIMARY KEY ("StaffHistoryID");

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" integer  NOT NULL ,
	"ClassTime"          char(18)  NULL ,
	"Individualproject"  char(18)  NULL ,
	"GroupMemberLastName" char(18)  NULL ,
	"GroupMemberFirstName" char(18)  NULL ,
	"GroupName"          char(18)  NULL ,
	"SysStartTime"       char(18)  NULL ,
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


CREATE TRIGGER "Trigger_2148" BEFORE DELETE
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2149" BEFORE UPDATE
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2150" BEFORE INSERT
 ON "Inventory"."ManufacturerVehicleMake"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2151" BEFORE DELETE
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2152" BEFORE UPDATE
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2153" BEFORE INSERT
 ON "Inventory"."ManufacturerVehicleModel"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2154" BEFORE DELETE
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2155" BEFORE UPDATE
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2156" BEFORE INSERT
 ON "Inventory"."ManufacturerVehicleStock"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2157" BEFORE DELETE
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2158" BEFORE UPDATE
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2159" BEFORE INSERT
 ON "Sales"."SalesOrderVehicle"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2160" BEFORE DELETE
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2161" BEFORE UPDATE
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2162" BEFORE INSERT
 ON "Sales"."SalesOrderVehicleDetail"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2163" BEFORE DELETE
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2164" BEFORE UPDATE
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2165" BEFORE INSERT
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2166" BEFORE DELETE
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2167" BEFORE UPDATE
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2168" BEFORE INSERT
 ON "HumanResources"."Staff"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2169" BEFORE DELETE
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2170" BEFORE UPDATE
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2171" BEFORE INSERT
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2172" BEFORE DELETE
 ON "Analytics"."CustomerExpenditureClassification"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2173" BEFORE UPDATE
 ON "Analytics"."CustomerExpenditureClassification"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2174" BEFORE INSERT
 ON "Analytics"."CustomerExpenditureClassification"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2175" BEFORE DELETE
 ON "Analytics"."ManufacturerMarketingCategory"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2176" BEFORE UPDATE
 ON "Analytics"."ManufacturerMarketingCategory"
 FOR EACH STATEMENT;


CREATE TRIGGER "Trigger_2177" BEFORE INSERT
 ON "Analytics"."ManufacturerMarketingCategory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_Country2Audit" AFTER
 ON "Sales"."Country"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_CountryHistory" AFTER
 ON "Audit"."CountryHistory"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_Customer2Audit" AFTER
 ON "Sales"."Customer"
 FOR EACH STATEMENT;


CREATE TRIGGER "uTdu_CustomerHistory" AFTER
 ON "Audit"."CustomerHistory"
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
