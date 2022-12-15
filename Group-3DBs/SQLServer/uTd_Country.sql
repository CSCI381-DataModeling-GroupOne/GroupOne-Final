
CREATE TRIGGER uTd_Country ON Sales.Country 
AFTER DELETE AS
BEGIN
    DECLARE 
       @TIMESTAMP_NOW datetime = SYSDATETIME,
       @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF (not exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted))
    insert into Audit.CountryHistory
    (
        TriggerOption,
        Notes,
        IsDeleted,
		CountryID,
		CountryName,
		CountryISO3,
		CountryISO2,
		SalesRegion,
		SysStartTime,
        SysEndTime,
        UserAuthorizationId,
        TransactionNumber
    )
    select 
		'D'
        'Row was deleted',
        'Y',
		CountryID,
		CountryName,
		CountryISO3,
		CountryISO2,
		SalesRegion,
		Deleted.SysStartTime,
		@TIMESTAMP_NOW,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
