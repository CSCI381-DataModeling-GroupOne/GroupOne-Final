USE [GroupOne-EuropeanCarManufacturer];
GO

/** Object:  View [dbo].[uvw_Sales2018]    Script Date: 12/16/2022 11:30:56 PM **/
SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

-- 1 Sales2018
CREATE VIEW [dbo].[uvw_Sales2018]
AS
SELECT           DISTINCT  YEAR(SO.SaleDate) AS SalesYear,
                           MK.ManufacturerVehicleMakeName AS MakeName,
                           MO.ManufacturerVehicleModelName AS ModelName,
                           C.CustomerName AS CustomerName,
                           Ctry.CountryName AS CountryName,
                           STK.Cost,
                           STK.RepairsCharge,
                           STK.PartsCharge,
                           STK.DeliveryCharge,
                           SOD.SalePrice,
                           SO.SaleDate
  FROM           Inventory.ManufacturerVehicleMake AS MK
 INNER JOIN      Inventory.ManufacturerVehicleModel AS MO
    ON MK.ManufacturerVehicleMakeID  = MO.ManufacturerVehicleMakeID
 INNER JOIN      Sales.Country AS Ctry
 INNER           JOIN      Sales.Customer AS C
    ON Ctry.CountryID = C.CountryID
 INNER           JOIN      Sales.SalesOrderVehicleDetail AS SOD
 INNER           JOIN Inventory.ManufacturerVehicleStock AS STK
    ON SOD.ManufacturerVehicleStockID = STK.ManufacturerVehicleStockID
 INNER           JOIN Sales.SalesOrderVehicle AS SO
    ON SOD.SalesOrderVehicleID = SO.SalesOrderVehicleID
    ON C.CustomerID = SO.CustomerID
    ON MO.ManufacturerVehicleModelID = STK.ManufacturerVehicleModelID
 WHERE           YEAR(SO.SaleDate) = 2018
   AND           CountryName              <> 'Switzerland';
GO
-- 2 Yearly sales
USE [GroupOne-EuropeanCarManufacturer];
GO

/** Object:  View [dbo].[YearlySales]    Script Date: 12/16/2022 11:33:05 PM **/
SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO


CREATE VIEW [dbo].[YearlySales]
AS
SELECT      DISTINCT YEAR(SO.SaleDate) AS SalesYear,
                     MK.ManufacturerVehicleMakeName AS MakeName,
                     MO.ManufacturerVehicleModelName AS ModelName,
                     C.CustomerName AS CustomerName,
                     Ctry.CountryName AS CountryName,
                     STK.Cost,
                     STK.RepairsCharge,
                     STK.PartsCharge,
                     STK.DeliveryCharge,
                     SOD.SalePrice,
                     SO.SaleDate
  FROM      Sales.Country AS Ctry
 INNER JOIN Sales.Customer AS C
    ON Ctry.CountryID                 = C.CountryID
 INNER JOIN Inventory.ManufacturerVehicleMake AS MK
    ON Ctry.CountryID                 = MK.CountryID
 INNER JOIN Inventory.ManufacturerVehicleModel AS MO
    ON MK.ManufacturerVehicleMakeID   = MO.ManufacturerVehicleMakeID
 INNER JOIN Inventory.ManufacturerVehicleStock AS STK
    ON MO.ManufacturerVehicleModelID  = STK.ManufacturerVehicleModelID
 INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
    ON STK.ManufacturerVehicleStockID = SOD.ManufacturerVehicleStockID
 INNER JOIN Sales.SalesOrderVehicle AS SO
    ON C.CustomerID                   = SO.CustomerID
   AND SOD.SalesOrderVehicleID        = SO.SalesOrderVehicleID;
GO
-- 3 Stock prices


/** Object:  View [Inventory].[uvwStockPrices]    Script Date: 12/16/2022 11:35:40 PM **/
SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO



CREATE VIEW [Inventory].[uvwStockPrices]
AS
SELECT      MK.ManufacturerVehicleMakeName,
            MO.ManufacturerVehicleModelName,
            STK.Cost
  FROM      Inventory.ManufacturerVehicleMake AS MK
 INNER JOIN Inventory.ManufacturerVehicleModel AS MO
    ON MO.ManufacturerVehicleMakeID   = MK.ManufacturerVehicleMakeID
 INNER JOIN Inventory.ManufacturerVehicleStock AS STK
    ON STK.ManufacturerVehicleModelID = MO.ManufacturerVehicleModelID;
GO
-- 4 PIVOT


/** Object:  View [Sales].[uvwPivotTable]    Script Date: 12/16/2022 11:36:26 PM **/
SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

GO
CREATE VIEW [Sales].[uvwPivotTable]
AS
SELECT VehicleColor,
       [2015] AS CY2015,
       [2016] AS CY2016,
       [2017] AS CY2017,
       [2018] AS CY2018
  FROM (   SELECT      SOD.SalePrice,
                       DATEPART(YEAR, SO.SaleDate) AS SaleYear,
                       MVS.VehicleColor
             FROM      Inventory.ManufacturerVehicleStock AS MVS
            INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
               ON MVS.ManufacturerVehicleStockID = SOD.ManufacturerVehicleStockID
            INNER JOIN Sales.SalesOrderVehicle AS SO
               ON SO.SalesOrderVehicleID         = SOD.SalesOrderVehicleID) STK
  PIVOT (   SUM(SalePrice)
            FOR SaleYear IN ([2015], [2016], [2017], [2018])) pvt;
GO




CREATE VIEW [dbo].[uwv_SalesByCountry]
AS
SELECT      stk.ManufacturerVehicleStockID,
            MK.ManufacturerVehicleMakeName AS MakeName,
            MO.ManufacturerVehicleModelName AS ModelName,
            C.CustomerName AS CustomerName,
            Ctry.CountryName AS CountryName,
            stk.Cost,
            stk.RepairsCharge,
            stk.PartsCharge,
            stk.DeliveryCharge,
            stk.VehicleColor,
            SOD.SalePrice,
            SOD.LineItemDiscount,
            SO.InvoiceNumber,
            SO.SaleDate,
            SOD.SalesOrderVehicleDetailID
  FROM      Sales.Country AS Ctry
 INNER JOIN Inventory.ManufacturerVehicleMake AS MK
    ON Ctry.CountryID                 = MK.CountryID
 INNER JOIN Inventory.ManufacturerVehicleModel AS MO
    ON MK.ManufacturerVehicleMakeID   = MO.ManufacturerVehicleMakeID
 INNER JOIN Inventory.ManufacturerVehicleStock AS stk
    ON MO.ManufacturerVehicleModelID  = stk.ManufacturerVehicleModelID
 INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
    ON stk.ManufacturerVehicleStockID = SOD.ManufacturerVehicleStockID
 INNER JOIN Sales.Customer AS C
    ON Ctry.CountryID                 = C.CountryID
 INNER JOIN Sales.SalesOrderVehicle AS SO
    ON SOD.SalesOrderVehicleID        = SO.SalesOrderVehicleID
   AND C.CustomerID                   = SO.CustomerID;
GO
USE [GroupOne-EuropeanCarManufacturer];
GO
/****** Object:  View [dbo].[uwv_SalesByCountry]    Script Date: 12/16/2022 11:37:38 PM ******/
SET ANSI_NULLS ON;
GO

--KB
USE [GroupOne-EuropeanCarManufacturer];
GO

/** Object:  View [dbo].[uvw_SalesText]    Script Date: 12/16/2022 11:45:23 PM **/
SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

CREATE VIEW [dbo].[uvw_SalesText]
AS
SELECT      Ctry.CountryName,
            STK.Cost,
            SOD.SalePrice,
            MK.ManufacturerVehicleMakeName
  FROM      Sales.SalesOrderVehicleDetail AS SOD
 INNER JOIN Inventory.ManufacturerVehicleStock AS STK
    ON SOD.ManufacturerVehicleStockID = STK.ManufacturerVehicleStockID
   AND SOD.ManufacturerVehicleStockID = STK.ManufacturerVehicleStockID
   AND SOD.ManufacturerVehicleStockID = STK.ManufacturerVehicleStockID
 CROSS JOIN Sales.Country AS Ctry
 INNER JOIN Inventory.ManufacturerVehicleMake AS MK
    ON Ctry.CountryID = MK.CountryID;
GO


