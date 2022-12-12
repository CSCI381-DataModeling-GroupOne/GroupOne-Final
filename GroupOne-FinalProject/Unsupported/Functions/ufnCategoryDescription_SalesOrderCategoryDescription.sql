IF OBJECT_ID('[Sales].[ufnCategoryDescription_SalesOrderCategoryDescription]') IS NOT NULL
	DROP FUNCTION [Sales].[ufnCategoryDescription_SalesOrderCategoryDescription];

GO
/*
	Unsupported Programmable Object
	-------------------------------
	This script was placed in the Unsupported folder during the initial import process as it
	contains a type of object that requires special handling. This has been done to prevent
	the script from failing during the script-generation and database deployment processes.

	In order to include the script within the Programmable Objects folder, some modifications
	will need to be made to ensure that it executes successfully. For more information,
	please refer to the documentation:
	https://www.red-gate.com/sca/dev/unsupported-programmable-objects
*/

SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE FUNCTION [Sales].[ufnCategoryDescription_SalesOrderCategoryDescription] 
(
	-- Add the parameters for the function here
	@SalePrice NUMERIC(18,2)
    
)
RETURNS NVARCHAR(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result NVARCHAR(60)
			
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
