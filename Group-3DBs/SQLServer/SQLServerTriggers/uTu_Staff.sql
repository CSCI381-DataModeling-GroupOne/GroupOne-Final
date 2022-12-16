
CREATE TRIGGER uTu_Staff ON HumanResources.Staff 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
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
            A.UserAuthorizationId = I.UserAuthorizationId,
            A.TransactionNumber = I.TransactionNumber + 1

		FROM HumanResources.Staff A
		INNER JOIN INSERTED I
			ON A.StaffId = I.StaffId;
	end
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
		'U'
        'Row was updated',
        'N',
		StaffID,
		StaffName,
		StaffEmail,
		Salary,
		DepartmentID,
		ManagerID,
		Deleted.SysStartTime,
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
