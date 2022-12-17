USE [GroupOne-EuropeanCarManufacturer]
GO

/****** Object:  View [Inventory].[uvwStockPrices]    Script Date: 12/14/2022 11:27:14 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


SELECT 
		(DATEPART(YEAR,SO.SaleDate)) AS SaleYear
		,MK.ManufacturerVehicleMakeName
		,mo.ManufacturerVehicleModelName
		,C.CustomerName	
		,Ctry.CountryName
		,Stk.Cost	
		,Stk.RepairsCharge	
		,Stk.PartsCharge	
		,Stk.DeliveryCharge		
		,SO.TotalSalePrice
		,SO.SaleDate
from Inventory.ManufacturerVehicleMake AS MK
INNER JOIN Inventory.ManufacturerVehicleModel AS Mo
ON Mo.ManufacturerVehicleMakeID = MK.ManufacturerVehicleMakeID
INNER JOIN Inventory.ManufacturerVehicleStock AS Stk
ON Stk.ManufacturerVehicleModelID = Mo.ManufacturerVehicleModelID
INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
ON SOD.ManufacturerVehicleStockID = Stk.ManufacturerVehicleStockID
INNER JOIN Sales.SalesOrderVehicle AS So
ON so.SalesOrderVehicleID = sod.SalesOrderVehicleID
INNER JOIN Sales.Customer AS c
ON c.CustomerID = So.CustomerID
INNER JOIN sales.Country AS ctry
ON ctry.CountryID = c.CountryID
WHERE So.SaleDate >='2018-01-01' AND SO.SaleDate < '2019-01-01'
AND ctry.CountryName <> 'Switzerland'
ORDER BY 
	--c.CustomerName DESC,ctry.CountryName ASC,Stk.Cost DESC, So.TotalSalePrice, So.SaleDate DESC,MK.ManufacturerVehicleMakeName,
		Mo.ManufacturerVehicleModelName

CREATE VIEW Sales.uvwPivotTable
AS

SELECT VehicleColor, [2015] AS CY2015,[2016] AS CY2016,[2017] AS CY2017,[2018] AS CY2018
FROM 
(SELECT sod.SalePrice , DATEPART(year,SO.SaleDate) AS SaleYear,MVS.VehicleColor
 FROM Inventory.ManufacturerVehicleStock AS MVS
 inner JOIN Sales.SalesOrderVehicleDetail AS SOD
 ON mvs.ManufacturerVehicleStockID = sod.ManufacturerVehicleStockID
 INNER JOIN Sales.SalesOrderVehicle AS SO
 ON SO.SalesOrderVehicleID = SOD.SalesOrderVehicleID) STK
 PIVOT
 ( SUM(STK.SalePrice)
 FOR SaleYear IN
 ([2015],[2016],[2017],[2018]))  pvt
 go


CREATE VIEW [Inventory].[uvwStockPrices]
AS
SELECT MK.ManufacturerVehicleMakeName, MO.ManufacturerVehicleModelName, STK.Cost
FROM Inventory.ManufacturerVehicleMake AS MK
INNER JOIN Inventory.ManufacturerVehicleModel AS MO
ON MO.ManufacturerVehicleMakeID = MK.ManufacturerVehicleMakeID
INNER JOIN Inventory.ManufacturerVehicleStock AS STK
ON STK.ManufacturerVehicleModelID = MO.ManufacturerVehicleModelID
--INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
--ON SOD.ManufacturerVehicleStockID = STK.ManufacturerVehicleStockID
--INNER JOIN Sales.SalesOrderVehicle AS SO
--ON so.SalesOrderVehicleID = SOD.SalesOrderVehicleID
GO
