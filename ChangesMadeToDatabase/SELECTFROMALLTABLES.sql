/****** Script for SelectTopNRows command from SSMS  ******/
USE RawEuropeanCarManufacturer
GO 
SELECT *
  FROM [AddToExistTables].[MarketingCategory]
GO
SELECT *
FROM AddToExistTables.MarketingInformation
GO
SELECT *
FROM AddToExistTables.SalesCategoryThreshold
GO
SELECT *
FROM RawData.CommonColumnsForTriggerTemplate
GO
SELECT *
FROM RawData.Country
GO
SELECT *
FROM RawData.Customer
GO
SELECT *
FROM RawData.ManufacturerVehicleModel
GO
SELECT *
FROM RawData.ManufacturerVehicleStock
GO
SELECT *
FROM RawData.ManufacturerVehicleMake
GO
SELECT *
FROM RawData.SalesOrderVehicle
GO
SELECT *
FROM RawData.SalesOrderVehicleDetail
GO
SELECT *
FROM RawData.Staff
GO

SELECT *
FROM RawData.SalesOrderVehicleDetail
ORDER BY SalePrice DESC

SELECT *
FROM RawData.SalesOrderVehicle
ORDER BY TotalSalePrice DESC