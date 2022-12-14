WITH HierarchyList_CTE
AS
(
SELECT StaffID,OrganizationNode,OrganizationNode.ToString() AS OrgNodeString,StaffName, ManagerID, 1 AS HierarchyLevel
FROM HumanResources.Staff
WHERE ManagerID IS NULL
UNION ALL
SELECT TH.StaffID,TH.OrganizationNode,TH.OrganizationNode.ToString() AS OrgNodeString, TH.StaffName 
, TH.ManagerID, HierarchyLevel + 1
FROM HumanResources.Staff AS TH
INNER JOIN HierarchyList_CTE CTE
 ON TH.ManagerID = CTE.StaffID
)
SELECT 
DHR.DepartmentName,
HR.StaffName,
HR.StaffID,
HR.ManagerID,
HR.OrganizationNode,
HR.OrganizationNode.ToString() AS OrgNodeString,
CTE.HierarchyLevel
FROM HumanResources.Staff AS HR
INNER JOIN HierarchyList_CTE AS CTE
ON HR.ManagerID = CTE.StaffID
INNER JOIN HumanResources.Department AS DHR
ON DHR.DepartmentID = HR.DepartmentID