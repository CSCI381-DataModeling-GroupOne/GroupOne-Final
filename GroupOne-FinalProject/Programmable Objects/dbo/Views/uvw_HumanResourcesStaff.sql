IF OBJECT_ID('[dbo].[uvw_HumanResourcesStaff]') IS NOT NULL
	DROP VIEW [dbo].[uvw_HumanResourcesStaff];

GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[uvw_HumanResourcesStaff]
AS
SELECT S.StaffID, S.StaffName, S.DepartmentID, D.DepartmentName
FROM HumanResources.Staff AS S
INNER JOIN HumanResources.Department AS D
ON S.DepartmentID = D.DepartmentID
GO
