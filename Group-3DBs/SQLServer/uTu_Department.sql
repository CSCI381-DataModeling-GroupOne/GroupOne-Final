
CREATE TRIGGER uTu_Department ON HumanResources.Department 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
			A.DepartmentId = I.DepartmentId,
			A.Department = I.Department,
			A.SysStartTime = @TIMESTAMP_NOW, 
            A.SysEndTime = @MAX_DATETIME, 
            A.UserAuthorizationId = I.UserAuthorizationId,
            A.TransactionNumber = I.TransactionNumber + 1

		FROM HumanResources.Department A
		INNER JOIN INSERTED I
			ON A.DepartmentId = I.DepartmentId;
	end
    insert into Audit.DepartmentHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		DepartmentId,
		Department,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'U'
        'Row was updated',
        'N',
		DepartmentId,
		Department,
		Deleted.SysStartTime,
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
