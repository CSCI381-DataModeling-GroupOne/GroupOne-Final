CREATE TRIGGER uTu_Customer ON HumanResources.Staff 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET 
            A.StaffID = I.StaffID,
            A.StaffName = I.StaffName,
            A.StaffEmail = I.StaffEmail,
            A.Salary = I.Salary,
            A.DepartmentID = I.DepartmentID,
            A.ManagerID = I.ManagerID,
            A.SysStartTime = @TIMESTAMP_NOW, 
            A.SysEndTime = @MAX_DATETIME, 
            A.TransactionNumber = I.TransactionNumber + 1
		FROM HumanResources.Staff A
		INNER JOIN INSERTED I
			ON A.StaffID = I.StaffID;
	end
    insert into Audit.StaffHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
        StaffID,
        StaffName,
        ManagerID,
        DepartmentID,
        Salary,
        StaffEmail,
        SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'U',
        'Row was updated',
        'N',
        StaffID,
        StaffName,
        ManagerID,
        DepartmentID,
        Salary,
        StaffEmail,
        Deleted.SysStartTime,
        @TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end