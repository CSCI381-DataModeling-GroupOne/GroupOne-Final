
CREATE TRIGGER uTu_SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
    insert into Audit.SalesOrderVehicleDetailHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		SalesOrderVehicleDetailID,
		ManufacturerVehicleStockID,
		SalesOrderVehicleID,
		SalePrice,
		LineItemNumber,
		LineItemDiscount,
		DerivedDiscountedSalePrice,
		StockCode,
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
		SalesOrderVehicleDetailID,
		ManufacturerVehicleStockID,
		SalesOrderVehicleID,
		SalePrice,
		LineItemNumber,
		LineItemDiscount,
		DerivedDiscountedSalePrice,
		StockCode,
		StaffID,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
