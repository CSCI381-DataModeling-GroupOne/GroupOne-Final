
CREATE TRIGGER uTd_Staff ON HumanResources.Staff 
AFTER DELETE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
    insert into Audit.StaffHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		StaffID,
		StaffName,
		StaffEmail,
		Salary,
		DepartmentID,
		ManagerID,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'D'
        'Row was deleted',
        'Y',
		StaffID,
		StaffName,
		StaffEmail,
		Salary,
		DepartmentID,
		ManagerID,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
