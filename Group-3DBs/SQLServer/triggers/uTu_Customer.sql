
CREATE TRIGGER uTu_Customer ON Sales.Customer 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
            A.CustomerId = I.CustomerId,
            A.CustomerName = I.CustomerName,
            A.CustomerAddress = I.CustomerAddress,
            A.CustomerExpenditureClassificationID = I.CustomerExpenditureClassificationID,
            A.IsCustomerCreditRisk = I.IsCustomerCreditRisk,
            A.IsCustomerReseller = I.IsCustomerReseller,
            A.SysStartTime = @TIMESTAMP_NOW, 
            A.SysEndTime = @MAX_DATETIME, 
            A.TransactionNumber = I.TransactionNumber + 1

		FROM Sales.Customer A
		INNER JOIN INSERTED I
			ON A.CustomerId = I.CustomerId;
	end
    insert into Audit.CustomerHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
        CustomerId,
        CustomerName,
        CustomerAddress,
        CustomerExpenditureClassificationID,
        IsCustomerCreditRisk,
        IsCustomerReseller,
        UserAuthorizationId,
        SysStartTime,
        SysEndTime,
        TransactionNumber
    )
    select 
		'U'
        'Row was updated',
        'N',
        CustomerId,
        CustomerName,
        CustomerAddress,
        CustomerExpenditureClassificationID,
        IsCustomerCreditRisk,
        IsCustomerReseller,
		Deleted.SysStartTime,
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
