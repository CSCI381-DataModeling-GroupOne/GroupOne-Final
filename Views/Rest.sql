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
SELECT           DISTINCT  YEAR(SaleDate) AS SalesYear,
                           MK.ManufacturerVehicleMakeName AS MakeName,
                           Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelName AS ModelName,
                           Sales.Customer.CustomerName AS CustomerName,
                           Sales.Country.CountryName AS CountryName,
                           Inventory.ManufacturerVehicleStock.Cost,
                           Inventory.ManufacturerVehicleStock.RepairsCharge,
                           Inventory.ManufacturerVehicleStock.PartsCharge,
                           Inventory.ManufacturerVehicleStock.DeliveryCharge,
                           SOD.SalePrice,
                           Sales.SalesOrderVehicle.SaleDate
  FROM           Inventory.ManufacturerVehicleMake AS MK
 INNER JOIN      Inventory.ManufacturerVehicleModel
    ON MK.ManufacturerVehicleMakeID   = Inventory.ManufacturerVehicleModel.ManufacturerVehicleMakeID
 INNER JOIN      Sales.Country
 INNER           JOIN      Sales.Customer
    ON Sales.Country.CountryID = Sales.Customer.CountryID
 INNER           JOIN      Sales.SalesOrderVehicleDetail AS SOD
 INNER           JOIN Inventory.ManufacturerVehicleStock AS STK
    ON SOD.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID
 INNER           JOIN Sales.SalesOrderVehicle AS SO
    ON SOD.SalesOrderVehicleID = Sales.SalesOrderVehicle.SalesOrderVehicleID
    ON Sales.Customer.CustomerID = Sales.SalesOrderVehicle.CustomerID
    ON Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleModelID
 WHERE           YEAR(SaleDate) = 2018
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
SELECT      DISTINCT YEAR(SaleDate) AS SalesYear,
                     MK.ManufacturerVehicleMakeName AS MakeName,
                     Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelName AS ModelName,
                     Sales.Customer.CustomerName AS CustomerName,
                     Sales.Country.CountryName AS CountryName,
                     Inventory.ManufacturerVehicleStock.Cost,
                     Inventory.ManufacturerVehicleStock.RepairsCharge,
                     Inventory.ManufacturerVehicleStock.PartsCharge,
                     Inventory.ManufacturerVehicleStock.DeliveryCharge,
                     SOD.SalePrice,
                     Sales.SalesOrderVehicle.SaleDate
  FROM      Sales.Country
 INNER JOIN Sales.Customer AS C
    ON Sales.Country.CountryID                                       = Sales.Customer.CountryID
 INNER JOIN Inventory.ManufacturerVehicleMake AS MK
    ON Sales.Country.CountryID                                       = MK.CountryID
 INNER JOIN Inventory.ManufacturerVehicleModel AS MO
    ON MK.ManufacturerVehicleMakeID   = Inventory.ManufacturerVehicleModel.ManufacturerVehicleMakeID
 INNER JOIN Inventory.ManufacturerVehicleStock AS STK
    ON Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleModelID
 INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
    ON Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID = SOD.ManufacturerVehicleStockID
 INNER JOIN Sales.SalesOrderVehicle AS SO
    ON Sales.Customer.CustomerID                                     = Sales.SalesOrderVehicle.CustomerID
   AND SOD.SalesOrderVehicleID             = Sales.SalesOrderVehicle.SalesOrderVehicleID;
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
  PIVOT (   SUM(STK.SalePrice)
            FOR SaleYear IN ([2015], [2016], [2017], [2018])) pvt;
GO



--okay so sales by country and sales by text is what i didnt have time to work on
--i meant match the output and fixing
CREATE VIEW [dbo].[uwv_SalesByCountry]
AS
SELECT      ManufacturerVehicleStockID,
            ManufacturerVehicleMakeName AS MakeName,
            ManufacturerVehicleModelName AS ModelName,
            Cust.CustomerName AS CustomerName,
            CountryName AS CountryName,
            Cost,
            RepairsCharge,
            PartsCharge,
            DeliveryCharge,
            VehicleColor,
            SalePrice,
            LineItemDiscount,
            InvoiceNumber,
            SaleDate,
            SalesOrderVehicleDetailID
  FROM      Sales.Country AS Ctry
 INNER JOIN Inventory.ManufacturerVehicleMake AS MK
    ON Ctry.CountryID                                       = MK.CountryID
 INNER JOIN Inventory.ManufacturerVehicleModel AS MO
    ON MK.ManufacturerVehicleMakeID   = Inventory.ManufacturerVehicleModel.ManufacturerVehicleMakeID
 INNER JOIN Inventory.ManufacturerVehicleStock
    ON Inventory.ManufacturerVehicleModel.ManufacturerVehicleModelID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleModelID
 INNER JOIN Sales.SalesOrderVehicleDetail AS SOD
    ON Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID = SOD.ManufacturerVehicleStockID
 INNER JOIN Sales.Customer AS C 
    ON Sales.Country.CountryID                                       = Sales.Customer.CountryID
 INNER JOIN Sales.SalesOrderVehicle
    ON SOD.SalesOrderVehicleID             = Sales.SalesOrderVehicle.SalesOrderVehicleID
   AND Sales.Customer.CustomerID                                     = Sales.SalesOrderVehicle.CustomerID;
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
SELECT      Sales.Country.CountryName,
            Inventory.ManufacturerVehicleStock.Cost,
            SOD.SalePrice,
            MK.ManufacturerVehicleMakeName
  FROM      Sales.SalesOrderVehicleDetail as SOD
 INNER JOIN Inventory.ManufacturerVehicleStock AS STK
    ON SOD.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID
   AND SOD.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID
   AND SO.ManufacturerVehicleStockID = Inventory.ManufacturerVehicleStock.ManufacturerVehicleStockID
 CROSS JOIN Sales.Country AS Ctry
 INNER JOIN Inventory.ManufacturerVehicleMake AS MK
    ON Sales.Country.CountryID = MK.CountryID;
GO


