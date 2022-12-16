
CREATE TRIGGER uTd_Customer ON Sales.Customer 
AFTER DELETE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
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
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'D'
        'Row was deleted',
        'Y',
		CustomerId,
		CustomerName,
		CustomerAddress,
		CustomerExpenditureClassificationID,
		IsCustomerCreditRisk,
		IsCustomerReseller,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
