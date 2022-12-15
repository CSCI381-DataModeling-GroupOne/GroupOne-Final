
CREATE TRIGGER uTd_ManufacturerVehicleMake ON Inventory.ManufacturerVehicleMake 
AFTER DELETE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
    insert into Audit.ManufacturerVehicleMakeHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		ManufacturerVehicleMakeName,
		ManufacturerVehicleMakeID,
		CountryID,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'D'
        'Row was deleted',
        'Y',
		ManufacturerVehicleMakeName,
		ManufacturerVehicleMakeID,
		CountryID,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
