
CREATE TRIGGER uTu_ManufacturerVehicleStock ON Inventory.ManufacturerVehicleStock 
INSTEAD OF UPDATE AS
BEGIN
  DECLARE 
    @TIMESTAMP_NOW datetime = SYSDATETIME,
    @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
      A.ManufacturerVehicleStockID = I.ManufacturerVehicleStockID,
      A.ManufacturerVehicleModelID = I.ManufacturerVehicleModelID,
      A.StockCode = I.StockCode,
      A.Cost = I.Cost,
      A.DeliveryCharge = I.DeliveryCharge,
      A.PartsCharge = I.PartsCharge,
      A.PurchaseDate = I.PurchaseDate,
      A.RepairsCharge = I.RepairsCharge,
      A.SysStartTime = @TIMESTAMP_NOW, 
      A.SysEndTime = @MAX_DATETIME, 
      A.TransactionNumber = I.TransactionNumber + 1

		FROM Inventory.ManufacturerVehicleStock A
		INNER JOIN INSERTED I
			ON A.ManufacturerVehicleStockId = I.ManufacturerVehicleStockId;
	end
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
      UserAuthorizationId,
      SysStartTime,
      SysEndTime,
      TransactionNumber
    )
    select 
		  'U'
      'Row was updated',
      'N',
      ManufacturerVehicleStockID,
      ManufacturerVehicleModelID,
      StockCode,
      Cost,
      DeliveryCharge,
      PartsCharge,
      PurchaseDate,
      RepairsCharge,
      Deleted.SysStartTime,
      @MAX_DATETIME,
      UserAuthorizationId,
      Deleted.TransactionNumber
    from Deleted;

end
