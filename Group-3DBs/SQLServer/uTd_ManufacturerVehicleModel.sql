
CREATE TRIGGER uTd_ManufacturerVehicleModel ON Inventory.ManufacturerVehicleModel 
AFTER DELETE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
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
		'D'
        'Row was deleted',
        'Y',
		ManufacturerVehicleModelID,
		ManufacturerModelName,
		ManufacturerModelVariant,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
