
CREATE TRIGGER uTd_SalesOrderVehicle ON Sales.SalesOrderVehicle 
AFTER DELETE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
    insert into Audit.SalesOrderVehicleHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		SalesOrderVehicleID,
		InvoiceNumber,
		SaleDate,
		CustomerID,
		StaffID,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'D'
        'Row was deleted',
        'Y',
		SalesOrderVehicleID,
		InvoiceNumber,
		SaleDate,
		CustomerID,
		StaffID,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
