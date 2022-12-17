CREATE TABLE `Sales.Country`
( 
	`CountryID`          integer  NOT NULL ,
	`CountryName`        varchar(50)  NULL   DEFAULT  'Unavailable',
	`CountryISO3`        char(3)  NOT NULL   DEFAULT  'AAA',
	CONSTRAINT `CK_CountryCountryISO3` CHECK  ( `CountryISO3` like '[A-Z][A-Z][A-Z]' ) ,
	`CountryISO2`        char(2)  NULL   DEFAULT  'AA',
	CONSTRAINT `CK_Country_CountryISO2` CHECK  ( `CountryISO2` like '[A-Z][A-Z]' ) ,
	`SalesRegion`        varchar(20)  NULL   DEFAULT  'Unavailable',
	CONSTRAINT `CK_Country_SalesRegion` CHECK  ( `SalesRegion` IN ('Asia', 'South_America', 'North_America', 'EMEA') ) ,
	`Note`               varchar(200)  NOT NULL   DEFAULT  'Row was inserted',
	`IsDeleted`          boolean  NULL   DEFAULT  '0',
	CONSTRAINT `CK_Country_IsDeleted_AuditFlag` CHECK  ( `IsDeleted` IN ('1', '0') ) ,
	`TransactionNumber`  smallint  NOT NULL DEFAULT '1',
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07'
);

ALTER TABLE `Sales.Country`
	ADD  CONSTRAINT PKCountry PRIMARY KEY  ( `CountryID` );


CREATE TABLE `Audit.CountryHistory`
(
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`UserAuthorizationId` integer NULL ,
	`TriggerOption` VARCHAR(20)  DEFAULT 'U' NOT NULL ,
	`TransactionNumber`  smallint  NOT NULL DEFAULT '1',
	`Notes` CHAR(18) NULL ,
	`IsDeleted`  boolean  DEFAULT '0' NULL ,
	`CountryHistoryId` integer NOT NULL 
);

ALTER TABLE `Audit.CountryHistory`
	ADD  CONSTRAINT XPKAuditCountryHistory PRIMARY KEY  ( `CountryHistoryId` );

CREATE TABLE `Sales.Customer`
(
	`CustomerID` integer NOT NULL ,
	`CustomerName` varchar(50)  DEFAULT 'Unavailable' NULL ,
	`CustomerAddress1` varchar(150)  DEFAULT 'Unavailable' NULL ,
	`CustomerAddress2` varchar(150)  DEFAULT 'Unavailable' NULL ,
	`CustomerTown` varchar(20)  DEFAULT 'Unavailable' NULL ,
	`CustomerPostalCode` varchar(20)  DEFAULT 'Unavailable' NULL ,
	`IsCustomerReseller` TINYINT  DEFAULT 0 CONSTRAINT `CK_Customer_IsCustomerReseller_FlagBit` CHECK (`IsCustomerReseller` IN (1, 0)) NULL ,
	`IsCustomerCreditRisk` TINYINT  DEFAULT 0 CONSTRAINT `CK_Customer_IsCustomerCreditRisk_FlagBit` CHECK (`IsCustomerCreditRisk` IN (1, 0)) NULL ,
	`TransactionNumber`  smallint  NOT NULL DEFAULT '1',
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',		
	`CountryID` integer NULL ,
	`CustomerExpenditureClassificationID` INTEGER NULL 
);


ALTER TABLE `Sales.Customer`
	ADD  CONSTRAINT PKCustomer PRIMARY KEY  ( `CustomerID` );

CREATE TABLE `Audit.CustomerHistory`
(
	`CustomerHistoryId` integer NOT NULL ,
	`CustomerId` integer NOT NULL ,
	`CustomerCompanyName` varchar(50)  DEFAULT 'Unavailable' NOT NULL ,
	`CustomerAddress` VARCHAR(150)  DEFAULT 'Street Address, P.O. Box, (Optional) Apartment Number' NOT NULL ,
	`Notes` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`TransactionNumber`  smallint  NOT NULL DEFAULT '1',
	`TriggerOption` VARCHAR(20)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',	
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`CustomerExpenditureClassificationID` INTEGER NULL ,
	`IsCustomerCreditRisk` CHAR(18) NULL ,
	`IsCustomerReseller` CHAR(18) NULL 
);

ALTER TABLE `Audit.CustomerHistory`
	ADD  CONSTRAINT PK_CustomerHistoryId PRIMARY KEY  ( `CustomerHistoryId` );

ALTER TABLE `Audit.CustomerHistory`
	ADD CONSTRAINT `AK1_CustomerHistory` UNIQUE  (
	`CustomerHistoryId`,
	`TransactionNumber`,
	`CustomerId`,
	`CustomerCompanyName` );

CREATE TABLE `HumanResources.Department`
(
	`DepartmentName` varchar(50)  DEFAULT 'Unavailable' NULL ,
	`DepartmentID` INTEGER NOT NULL ,
	`UserAuthorizationId` integer NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysEndTime` CHAR(18) NULL 
);

ALTER TABLE `HumanResources.Department`
	ADD  CONSTRAINT XPKHumanResourcesDepartment PRIMARY KEY  ( `DepartmentID` );

CREATE TABLE `Audit.DepartmentHistory`
(
	`IsDeleted` boolean  DEFAULT '0' NOT NULL ,
	`Notes` CHAR(18) NULL ,
	`TransactionNumber`  smallint  NOT NULL DEFAULT '1',
	`TriggerOption` VARCHAR(20)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationId` INTEGER NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`DepartmentId` INTEGER NULL ,
	`Department` CHAR(18) NULL ,
	`DepartmentHistoryId` INTEGER NOT NULL 
);

ALTER TABLE `Audit.DepartmentHistory`
	ADD  CONSTRAINT XPKAuditDepartmentHistory PRIMARY KEY  ( `DepartmentHistoryId` );


CREATE TABLE `HumanResources.Staff`
(
	`StaffID` integer NOT NULL ,
	`StaffName` varchar(50)  DEFAULT 'Unavailable' NULL ,
	`DepartmentID` INTEGER NULL ,
	`ManagerID` INTEGER NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',	
	`Salary` INTEGER NULL ,
	`StaffEmail` CHAR(18) NULL ,
	`UserAuthorizationId` integer NULL 
);

ALTER TABLE `HumanResources.Staff`
	ADD  CONSTRAINT XPKStaff PRIMARY KEY  ( `StaffID` );

CREATE TABLE `Audit.StaffHistory`
(
	`StaffHistoryID` integer NOT NULL ,
	`Salary` CHAR(18) NULL ,
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`TriggerOption` VARCHAR(20)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`Notes` CHAR(18) NULL ,
	`DepartmentID` INTEGER NULL ,
	`ManagerID` INTEGER NULL ,
	`StaffName` CHAR(18) NULL ,
	`StaffEmail` CHAR(18) NULL ,
	`StaffID` INTEGER NULL 
);

ALTER TABLE `Audit.StaffHistory`
	ADD  CONSTRAINT XPKAuditStaffHistory PRIMARY KEY  ( `StaffHistoryID` );	
	
CREATE TABLE `Analytics.ManufacturerMarketingCategory`
(
	`ManufacturerMarketingCategoryID` INTEGER NOT NULL ,
	`ManufacturerVehicleMarketingType` varchar(250)  DEFAULT 'Unavailable' NULL 
);

ALTER TABLE `Analytics.ManufacturerMarketingCategory`
	ADD  CONSTRAINT XPKManufacturerMarketingCategory PRIMARY KEY  ( `ManufacturerMarketingCategoryID` );

CREATE TABLE `Analytics.CustomerExpenditureClassification`
(
	`CustomerExpenditureClassificationID` INTEGER NOT NULL ,
	`CustomerExpenditureClassifier` varchar(25)  DEFAULT 'Unavailable' NULL 
);

ALTER TABLE `Analytics.CustomerExpenditureClassification`
	ADD  CONSTRAINT XPKCustomerExpenditureClassification PRIMARY KEY  ( `CustomerExpenditureClassificationID` );

CREATE TABLE `Inventory.ManufacturerVehicleMake`
(
	`ManufacturerVehicleMakeID` integer NOT NULL ,
	`ManufacturerVehicleMakeName` varchar(150)  DEFAULT 'Unavailable' NULL ,
	`ManufacturerVehicleMarketingCategoryID` INTEGER NULL ,
	`CountryID` INTEGER NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`UserAuthorizationId` INTEGER NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL
);

ALTER TABLE `Inventory.ManufacturerVehicleMake`
	ADD  CONSTRAINT PKMake PRIMARY KEY  ( `ManufacturerVehicleMakeID` );
	
	
CREATE TABLE `Audit.ManufacturerVehicleMakeHistory`
(
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`Notes` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`TriggerOption` char(1)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`ManufacturerVehicleMakeName` VARCHAR(50)  DEFAULT 'Unavailable' NULL ,
	`ManufacturerVehicleMakeID` INTEGER NULL ,
	`CountryID` INTEGER NULL ,
	`ManufacturerVehicleMakeHistoryId` integer NOT NULL 
);

ALTER TABLE `Audit.ManufacturerVehicleMakeHistory`
	ADD  CONSTRAINT XPKManufacturerVehicleMakeHistory PRIMARY KEY  ( `ManufacturerVehicleMakeHistoryId` );
	
CREATE TABLE `Audit.ManufacturerVehicleModelHistory`
(
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`Notes` CHAR(18) NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`TriggerOption` char(1)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`ManufacturerModelName` CHAR(18) NULL ,
	`ManufacturerVehicleModelID` INTEGER NULL ,
	`ManufacturerModelVariant` CHAR(18) NULL ,
	`ManufacturerVehicleModelHistoryId` integer NOT NULL 
);

ALTER TABLE `Audit.ManufacturerVehicleModelHistory`
	ADD  CONSTRAINT XPKManufacturerVehicleModelHistory PRIMARY KEY  ( `ManufacturerVehicleModelHistoryId` );

CREATE TABLE `Audit.ManufacturerVehicleStockHistory`
(
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`Notes` CHAR(18) NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`TriggerOption` char(1)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`ManufacturerVehicleStockID` INTEGER NULL ,
	`ManufacturerVehicleModelID` INTEGER NULL ,
	`StockCode` CHAR(18) NULL ,
	`Cost` CHAR(18) NULL ,
	`DeliveryCharge` CHAR(18) NULL ,
	`PartsCharge` CHAR(18) NULL ,
	`PurchaseDate` CHAR(18) NULL ,
	`RepairsCharge` CHAR(18) NULL ,
	`ManufacturerVehicleStockHistoryId` integer NOT NULL 
);

ALTER TABLE `Audit.ManufacturerVehicleStockHistory`
	ADD  CONSTRAINT XPKManufacturerVehicleStockHistory PRIMARY KEY  ( `ManufacturerVehicleStockHistoryId` );
	
CREATE TABLE `Audit.SalesOrderVehicleDetailHistory`
(
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`Notes` CHAR(18) NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`TriggerOption` char(1)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SalesOrderVehicleDetailHistoryid` integer NOT NULL ,
	`SalePrice` CHAR(18) NULL ,
	`LineItemNumber` CHAR(18) NULL ,
	`LineItemDiscount` CHAR(18) NULL ,
	`DerivedDiscountedSalePrice` CHAR(18) NULL ,
	`StockCode` CHAR(18) NULL ,
	`ManufacturerVehicleStockID` INTEGER NULL ,
	`SalesOrderVehicleID` INTEGER NULL ,
	`SalesOrderVehicleDetailID` INTEGER NULL ,
	`StaffID` INTEGER NULL 
);

ALTER TABLE `Audit.SalesOrderVehicleDetailHistory`
	ADD  CONSTRAINT XPKSalesOrderVehicleDetailHistory PRIMARY KEY  ( `SalesOrderVehicleDetailHistoryid` );	
	
	
CREATE TABLE `Audit.SalesOrderVehicleHistory`
(
	`IsDeleted` boolean  DEFAULT '0' NULL ,
	`Notes` CHAR(18) NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`TriggerOption` char(1)  DEFAULT 'U' NOT NULL ,
	`UserAuthorizationID` integer  NOT NULL DEFAULT '1',
	`SysEndTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SalesOrderVehicleHistoryId` integer NOT NULL ,
	`SaleDate` CHAR(18) NULL ,
	`CustomerID` INTEGER NULL ,
	`InvoiceNumber` CHAR(18) NULL ,
	`StaffID` INTEGER NULL ,
	`SalesOrderVehicleID` INTEGER NULL 
);

ALTER TABLE `Audit.SalesOrderVehicleHistory`
	ADD  CONSTRAINT XPKAuditSalesOrderVehicleHistory PRIMARY KEY  ( `SalesOrderVehicleHistoryId` );
	
CREATE TABLE `Inventory.ManufacturerVehicleModel`
(
	`ManufacturerVehicleModelID` integer NOT NULL ,
	`ManufacturerVehicleModelName` varchar(150)  DEFAULT 'Unavailable' NULL ,
	`ManufacturerVehicleModelVariant` varchar(150)  DEFAULT 'Unavailable' NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',	
	`UserAuthorizationId` integer NULL ,
	`ManufacturerVehicleMakeID` integer NULL 
);

ALTER TABLE `Inventory.ManufacturerVehicleModel`
	ADD  CONSTRAINT PKModel1 PRIMARY KEY  ( `ManufacturerVehicleModelID` );
	
CREATE TABLE `Inventory.ManufacturerVehicleStock`
(
	`ManufacturerVehicleStockID` integer NOT NULL ,
	`StockCode` varchar(50)  DEFAULT 'Unavailable' NULL ,
	`Cost` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_ManufacturerVehicleStock_Cost_Price` CHECK (`Cost` >= 0.00) NULL ,
	`RepairsCharge` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_ManufacturerVehicleStock_RepairsCharge_Price` CHECK (`RepairsCharge` >= 0.00) NULL ,
	`PartsCharge` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_ManufacturerVehicleStock_PartsCharge_Price` CHECK (`PartsCharge` >= 0.00) NULL ,
	`DeliveryCharge` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_ManufacturerVehicleStock_DeliveryCharge_Price` CHECK (`DeliveryCharge` >= 0.00) NULL ,
	`IsPremiumRoadHandlingPackage` TINYINT  DEFAULT 0 CONSTRAINT `CK_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagBit` CHECK (`IsPremiumRoadHandlingPackage` IN (1, 0)) NULL ,
	`VehicleColor` varchar(50)  DEFAULT 'Unavailable' NULL ,
	`CustomerComments` varchar(200)  DEFAULT 'Unavailable' NULL ,
	`PurchaseDate` date  DEFAULT '1999-12-31' NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',	
	`UserAuthorizationId` integer NULL ,
	`ManufacturerVehicleModelID` integer NULL 
);

ALTER TABLE `Inventory.ManufacturerVehicleStock`
	ADD  CONSTRAINT PKStock PRIMARY KEY  ( `ManufacturerVehicleStockID` );
	
CREATE TABLE `Sales.SalesOrderVehicle`
(
	`SalesOrderVehicleID` integer NOT NULL ,
	`InvoiceNumber` char(8)  DEFAULT '00000000' NULL ,
	`TotalSalePrice` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_SalesOrderVehicle_TotalSalePrice_Price` CHECK (`TotalSalePrice` >= 0.00) NULL ,
	`SaleDate` date  DEFAULT '1999-12-31' NULL ,
	`SalesOrderCategoryDescription` CHAR(18) NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',	
	`UserAuthorizationId` integer NULL ,
	`CustomerID` integer NULL ,
	`StaffID` integer NOT NULL 
);

ALTER TABLE `Sales.SalesOrderVehicle`
	ADD  CONSTRAINT XPKSalesSalesOrderVehicle PRIMARY KEY  ( `SalesOrderVehicleID` );


CREATE TABLE `Analytics.SalesCategoryThreshold`
(
	`SalesCategoryThresholdID` integer NOT NULL ,
	`LowerThreshold` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_SalesCategoryThreshold_LowerThreshold_Price` CHECK (`LowerThreshold` >= 0.00) NULL ,
	`UpperThreshold` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_SalesCategoryThreshold_UpperThreshold_Price` CHECK (`UpperThreshold` >= 0.00) NULL ,
	`CategoryDescription` varchar(50)  DEFAULT 'Unavailable' CONSTRAINT `CK_SalesCategoryThreshold_CategoryDescription_SalesThreshold` CHECK (`CategoryDescription` IN ('Outstanding', 'Exceptional', 'Very_High', 'High', 'Medium', 'Low', 'Very_Low')) NULL 
);

ALTER TABLE `Analytics.SalesCategoryThreshold`
	ADD  CONSTRAINT XPKAnalyticsSalesCategoryThreshold PRIMARY KEY  ( `SalesCategoryThresholdID` );

CREATE TABLE `Sales.SalesOrderVehicleDetail`
(
	`SalesOrderVehicleDetailID` integer NOT NULL ,
	`LineItemNumber` SMALLINT  DEFAULT 1 NOT NULL ,
	`StockCode` varchar(50)  DEFAULT 'Unavailable' NULL ,
	`SalePrice` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_Template_Price` CHECK (`SalePrice` >= 0.00) NULL ,
	`LineItemDiscount` numeric(18,2)  DEFAULT 0.00 CONSTRAINT `CK_SalesOrderVehicleDetail_LineItemDiscount_Price` CHECK (`LineItemDiscount` >= 0.00) NULL ,
	`DerivedDiscountedSalePrice` numeric(18,2) CONSTRAINT `CK_SalesOrderVehicleDetail_DeriveDDiscountedSalePrice_Price` CHECK (`DerivedDiscountedSalePrice` >= 0.00) NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 1 NULL ,
	`SysStartTime`       timestamp  NOT NULL   DEFAULT  current_timestamp,
	`SysEndTime`         timestamp  NOT NULL   DEFAULT  '2038-01-19 03:14:07',	
	`UserAuthorizationId` integer NULL ,
	`ManufacturerVehicleStockID` integer NULL ,
	`SalesOrderVehicleID` integer NULL 
);

ALTER TABLE `Sales.SalesOrderVehicleDetail`
	ADD  CONSTRAINT PKSalesDetails PRIMARY KEY  ( `SalesOrderVehicleDetailID` );
	
CREATE TABLE `DbSecurity.UserAuthorization`
(
	`UserAuthorizationId` integer NOT NULL ,
	`ClassTime` CHAR(18) NULL ,
	`Individualproject` INTEGER NULL ,
	`GroupMemberLastName` CHAR(18) NULL ,
	`GroupMemberFirstName` CHAR(18) NULL ,
	`GroupName` CHAR(18) NULL ,
	`SysStartTime` VARCHAR(200)  DEFAULT 'Row was inserted' NULL ,
	`SysEndTime` CHAR(18) NULL 
);

ALTER TABLE `DbSecurity.UserAuthorization`
	ADD  CONSTRAINT XPKDbSecurityUserAuthorization PRIMARY KEY  ( `UserAuthorizationId` );

ALTER TABLE `Inventory.ManufacturerVehicleMake`
	ADD  CONSTRAINT `FK_ManufacturerVehicleMake_ManufacturerMarketingCategory` FOREIGN KEY (`ManufacturerVehicleMarketingCategoryID`) REFERENCES `Analytics.ManufacturerMarketingCategory` (`ManufacturerMarketingCategoryID`)
		ON DELETE NO ACTION 
		ON UPDATE NO ACTION ;