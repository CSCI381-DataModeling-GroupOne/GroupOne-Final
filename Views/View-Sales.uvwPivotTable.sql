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
