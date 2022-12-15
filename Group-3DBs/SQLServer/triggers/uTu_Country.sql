
CREATE TRIGGER uTu_Country ON Sales.Country 
INSTEAD OF UPDATE AS
BEGIN
  DECLARE 
      @TIMESTAMP_NOW datetime = SYSDATETIME,
      @MAX_DATETIME datetime = '9999-12-31 23:59:59';
	IF exists (SELECT * FROM inserted) and exists (SELECT * FROM deleted)
	begin
		UPDATE A
		SET
      A.CountryID = I.CountryID,
      A.CountryName = I.CountryName,
      A.CountryISO3 = I.CountryISO3,
      A.CountryISO2 = I.CountryISO2,
      A.SalesRegion = I.SalesRegion,
      A.SysStartTime = @TIMESTAMP_NOW, 
      A.SysEndTime = @MAX_DATETIME, 
      A.TransactionNumber = I.TransactionNumber + 1

		FROM Sales.Country A
		INNER JOIN INSERTED I
			ON A.CountryId = I.CountryId;
	end
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
        UserAuthorizationId,
        SysStartTime,
        SysEndTime,
        TransactionNumber
    )
    select 
		'U'
    'Row was updated',
    'N',
    CountryID,
    CountryName,
    CountryISO3,
    CountryISO2,
    SalesRegion,
		Deleted.SysStartTime,
		@MAX_DATETIME,
        UserAuthorizationId,
        Deleted.TransactionNumber
    from Deleted;

end
