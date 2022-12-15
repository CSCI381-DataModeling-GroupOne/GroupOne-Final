
CREATE TRIGGER uTu_ManufacturerVehicleMake ON Inventory.ManufacturerVehicleMake 
INSTEAD OF UPDATE AS
BEGIN
  DECLARE 
      @TIMESTAMP_NOW datetime = SYSDATETIME,
      @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
      A.ManufacturerVehicleMakeName = I.ManufacturerVehicleMakeName,
      A.ManufacturerVehicleMakeID = I.ManufacturerVehicleMakeID,
      A.CountryID = I.CountryID,
      A.SysStartTime = @TIMESTAMP_NOW, 
      A.SysEndTime = @MAX_DATETIME, 
      A.TransactionNumber = I.TransactionNumber + 1

		FROM Inventory.ManufacturerVehicleMake A
		INNER JOIN INSERTED I
			ON A.ManufacturerVehicleMakeId = I.ManufacturerVehicleMakeId;
	end
    insert into Audit.ManufacturerVehicleMakeHistory
    (
      TriggerOption,
      Notes,
      IsDeleted,
      ManufacturerVehicleMakeName,
      ManufacturerVehicleMakeID,
      CountryID,
      UserAuthorizationId,
      SysStartTime,
      SysEndTime,
      TransactionNumber
    )
    select 
		  'U'
      'Row was updated',
      'N',
      ManufacturerVehicleMakeName,
      ManufacturerVehicleMakeID,
      CountryID,
      Deleted.SysStartTime,
      @MAX_DATETIME,
      UserAuthorizationId,
      Deleted.TransactionNumber
    from Deleted;

end
