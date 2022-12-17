UPDATE `HumanResources.Staff` c
SET c.DepartmentID = 3,
    c.Notes = 'Change Department, increase salary',
    c.Salary = 10000,
    c.UserAuthorizationId = 3
	WHERE `StaffId`=2;

	
DELETE from `HumanResources.Staff` c where c.StaffID = 2;