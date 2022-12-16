
CREATE TRIGGER uTu_SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
	begin
		UPDATE A
		SET
			A.SalesOrderVehicleDetailID = I.SalesOrderVehicleDetailID,
			A.ManufacturerVehicleStockID = I.ManufacturerVehicleStockID,
			A.SalesOrderVehicleID = I.SalesOrderVehicleID,
			A.SalePrice = I.SalePrice,
			A.LineItemNumber = I.LineItemNumber,
			A.LineItemDiscount = I.LineItemDiscount,
			A.DerivedDiscountedSalePrice = I.DerivedDiscountedSalePrice,
			A.StockCode = I.StockCode,
			A.StaffID = I.StaffID,
			A.SysStartTime = @TIMESTAMP_NOW, 
            A.SysEndTime = @MAX_DATETIME, 
            A.UserAuthorizationId = I.UserAuthorizationId,
            A.TransactionNumber = I.TransactionNumber + 1

		FROM Sales.SalesOrderVehicleDetail A
		INNER JOIN INSERTED I
			ON A.SalesOrderVehicleDetailId = I.SalesOrderVehicleDetailId;
	end
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
		'U'
        'Row was updated',
        'N',
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
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
