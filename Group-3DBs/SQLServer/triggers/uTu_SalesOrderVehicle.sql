
CREATE TRIGGER uTu_SalesOrderVehicle ON Sales.SalesOrderVehicle 
INSTEAD OF UPDATE AS
BEGIN
  DECLARE 
    @TIMESTAMP_NOW datetime = SYSDATETIME,
    @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
      A.SalesOrderVehicleID = I.SalesOrderVehicleID,
      A.InvoiceNumber = I.InvoiceNumber,
      A.SaleDate = I.SaleDate,
      A.CustomerID = I.CustomerID,
      A.StaffID = I.StaffID,
      A.SysStartTime = @TIMESTAMP_NOW, 
      A.SysEndTime = @MAX_DATETIME, 
      A.TransactionNumber = I.TransactionNumber + 1

		FROM Sales.SalesOrderVehicle A
		INNER JOIN INSERTED I
			ON A.SalesOrderVehicleId = I.SalesOrderVehicleId;
	end
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
      UserAuthorizationId,
      SysStartTime,
      SysEndTime,
      TransactionNumber
    )
    select 
		  'U'
      'Row was updated',
      'N',
      SalesOrderVehicleID,
      InvoiceNumber,
      SaleDate,
      CustomerID,
      StaffID,
      Deleted.SysStartTime,
      @MAX_DATETIME,
      UserAuthorizationId,
      Deleted.TransactionNumber
    from Deleted;

end
