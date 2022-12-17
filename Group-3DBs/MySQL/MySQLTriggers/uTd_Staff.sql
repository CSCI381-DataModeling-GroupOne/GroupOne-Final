CREATE DEFINER = `root` @`%` TRIGGER `uTd_Staff` AFTER DELETE ON `HumanResources.Staff` FOR EACH ROW  
BEGIN       

INSERT INTO `Audit.StaffHistory` 
	(`TriggerOption`,
	`Notes`,
	`IsDeleted`,
	`StaffID`,
	`StaffName`,
	`StaffEmail`,
	`Salary`,
	`DepartmentID`,
	`ManagerID`,
	`SysEndTime`,
	`SysStartTime`,
	`UserAuthorizationId`,
	`TransactionNumber`)
	VALUES 
	('D',
	IFNULL(OLD.Notes, 'Row was deleted'),
	TRUE,
	OLD.`StaffID`,
	OLD.`StaffName`,
	OLD.`StaffEmail`,
	OLD.`Salary`,
	OLD.`DepartmentID`,
	OLD.`ManagerID`,
	NOW(),
	OLD.`SysStartTime`,
	IFNULL(OLD.`UserAuthorizationId`, 1),
	OLD.`TransactionNumber`);
END