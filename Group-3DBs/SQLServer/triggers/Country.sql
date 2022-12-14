-- CREATE TABLE Sales.Country
-- ( 
-- 	CountryID            sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	CountryName          sdAddressesString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Country_CountryName_Unavailable DEFAULT  'Unavailable',
-- 	CountryISO3          sdCountryStringVariants.nchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_Country_CountryISO3_Unavailable DEFAULT  'Unavailable',
-- 	CountryISO2          sdCountryStringVariants.nchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Country_CountryISO2_Unavailable DEFAULT  'Unavailable',
-- 	SalesRegion          sdAddressesString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Country_SalesRegion_Unavailable DEFAULT  'Unavailable',
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_Country_Note_Note DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Country_IsDeleted_FlagNo DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_Country_TransactionNumber_OrdinalNumber DEFAULT  1,
-- 	UserAuthorizationID  sdSequenceNumber.integer  NULL 
-- 	CONSTRAINT DF_Country_UserAuthorizationID_OrdinalNumber DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Country_SysStartTime_Sysdatetime DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Country_SysEndTime_SysEndTime DEFAULT  '99991231 23:59:59.9999999',
-- 	UserAuthorizationId  char(18)  NULL 
-- )
-- go

create trigger Sales.uTdu_CountryHistory
on Sales.Country
after delete, update --, insert
as
begin
    declare @action char(1) = 'I';
    declare @IsDeleted char(1) = 'N';
    declare @DeletedMessage char(25) = 'Rows has been deleted';
    declare @SysStartTimeAsSysEnd datetime2;
    --
    if (exists (select * from inserted) and exists (select * from deleted))
    begin
        set @action = 'U';
        select @SysStartTimeAsSysEnd = Inserted.SysStartTime from Inserted
    end;
    else if (exists (select * from deleted))
    begin
        set @action = 'D';
        set @IsDeleted = 'Y';
    end;
    else
        set @action = 'I';

    if (@action <> 'I')
        insert into Audit.CountryHistory
        (
            CountryHistoryTimestamp
            , TriggerOption
            , CountryID
            , CountryName
            , CountryISO3
            , CountryISO2
            , SalesRegion
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as CountryHistoryTimestamp
                , @action             as TriggerOption
                , CountryID
                , CountryName
                , CountryISO3
                , CountryISO2
                , SalesRegion
                , case
                    when @action <> 'D' then
                        Deleted.Notes
                    else
                        @DeletedMessage
                end
                , @IsDeleted          as IsDeleted
                , Deleted.TransactionNumber
                , UserAuthenticatedKey
                , TimestampRowChanged
                , Deleted.SysStartTime
                , case
                    when @action <> 'D' then
                        @SysStartTimeAsSysEnd
                    else
                        sysdatetime()
                end as SysEndTime
        from Deleted;
end;

