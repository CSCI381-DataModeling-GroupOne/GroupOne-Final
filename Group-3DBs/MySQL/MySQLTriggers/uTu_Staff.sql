CREATE DEFINER=`root`@`%` TRIGGER `uTu_Staff` BEFORE UPDATE ON `HumanResources.Staff` FOR EACH ROW BEGIN
        set
 			NEW.TransactionNumber = OLD.TransactionNumber + 1;
 		set
     	    NEW.SysStartTime = NOW();
    	set 
    		NEW.SysEndTime = '2038-01-19 03:14:07';
	
		INSERT INTO `Audit.StaffHistory` (
		`TriggerOption`,
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
		VALUES (
		'U',
		IFNULL(NEW.Notes, 'Row was updated'),
		FALSE,
		OLD.`StaffID`,
		OLD.`StaffName`,
		OLD.`StaffEmail`,
		OLD.`Salary`,
		OLD.`DepartmentID`,
		OLD.`ManagerID`,
		OLD.`SysEndTime`,
		OLD.`SysStartTime`,
		IFNULL(OLD.`UserAuthorizationId`, 1),
		OLD.`TransactionNumber`);
	END