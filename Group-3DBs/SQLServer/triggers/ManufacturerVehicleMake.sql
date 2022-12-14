-- CREATE TABLE Inventory.ManufacturerVehicleMake
-- ( 
-- 	ManufacturerVehicleMakeID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	ManufacturerVehicleMakeName sdVehicleDescriptorString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleMake_ManufacturerVehicleMakeName_Unknown DEFAULT  'Unavailable',
-- 	ManufacturerVehicleMarketingCategoryID sdSequenceNumber.integer  NULL ,
-- 	CountryID            sdSequenceNumber.integer  NULL ,
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleMake_Note DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Template_FlagNo DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleMake_TransactionNumber DEFAULT  1,
-- 	UserAuthorizationID  sdSequenceNumber.integer  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleMake_UserAuthorizationID_OrdinalNumber DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleMake_SysStartTime_Sysdatetime DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Template_SysEndTime_1062630532 DEFAULT  '99991231 23:59:59.9999999',
-- 	-- SysEndTime__1665     char(18)  NULL ,
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	-- SysStartTime__1690   char(18)  NULL 
-- )
-- go

create trigger Inventory.uTdu_ManufacturerVehicleMake
on Inventory.ManufacturerVehicleMake
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
        insert into Audit.ManufacturerVehicleMakeHistory
        (
            ManufacturerVehicleMakeHistoryTimestamp
            , TriggerOption
            , ManufacturerVehicleMakeID
            , ManufacturerVehicleMakeName
            , ManufacturerVehicleMarketingCategoryID
            , CountryID
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as ManufacturerVehicleMakeHistory
                , @action             as TriggerOption
                , ManufacturerVehicleMakeID
                , ManufacturerVehicleMakeName
                , ManufacturerVehicleMarketingCategoryID
                , CountryID
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


