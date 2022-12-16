
CREATE TRIGGER uTu_ManufacturerVehicleModel ON Inventory.ManufacturerVehicleModel 
INSTEAD OF UPDATE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
	begin
		UPDATE A
		SET
			A.ManufacturerVehicleModelID = I.ManufacturerVehicleModelID,
			A.ManufacturerModelName = I.ManufacturerModelName,
			A.ManufacturerModelVariant = I.ManufacturerModelVariant,
			A.SysStartTime = @TIMESTAMP_NOW, 
            A.SysEndTime = @MAX_DATETIME, 
            A.UserAuthorizationId = I.UserAuthorizationId,
            A.TransactionNumber = I.TransactionNumber + 1

		FROM Inventory.ManufacturerVehicleModel A
		INNER JOIN INSERTED I
			ON A.ManufacturerVehicleModelId = I.ManufacturerVehicleModelId;
	end
    insert into Audit.ManufacturerVehicleModelHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		ManufacturerVehicleModelID,
		ManufacturerModelName,
		ManufacturerModelVariant,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'U'
        'Row was updated',
        'N',
		ManufacturerVehicleModelID,
		ManufacturerModelName,
		ManufacturerModelVariant,
		Deleted.SysStartTime,
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
