
CREATE TRIGGER uTu_ManufacturerVehicleStock ON Inventory.ManufacturerVehicleStock 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
    insert into Audit.ManufacturerVehicleStockHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		ManufacturerVehicleStockID,
		ManufacturerVehicleModelID,
		StockCode,
		Cost,
		DeliveryCharge,
		PartsCharge,
		PurchaseDate,
		RepairsCharge,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'D'
        'Row was deleted',
        'Y',
		ManufacturerVehicleStockID,
		ManufacturerVehicleModelID,
		StockCode,
		Cost,
		DeliveryCharge,
		PartsCharge,
		PurchaseDate,
		RepairsCharge,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
