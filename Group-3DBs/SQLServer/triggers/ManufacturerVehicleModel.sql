-- CREATE TABLE Inventory.ManufacturerVehicleModel
-- ( 
-- 	ManufacturerVehicleModelID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	ManufacturerVehicleModelName sdVehicleDescriptorString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_ManufacturerModelName_Unknown
-- 		 DEFAULT  'Unavailable',
-- 	ManufacturerVehicleModelVariant sdVehicleDescriptorString.nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_ManufacturerModelVariant_Unknown
-- 		 DEFAULT  'Unavailable',
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_Note_Note
-- 		 DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_IsDeleted_FlagNo
-- 		 DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_TransactionNumber_OrdinalNumber
-- 		 DEFAULT  1,
-- 	UserAuthorizationID  sdSequenceNumber.integer  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_UserAuthorizationID_OrdinalNumber
-- 		 DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_SysStartTime_Sysdatetime
-- 		 DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleModel_SysEndTime_SysEndTime
-- 		 DEFAULT  '99991231 23:59:59.9999999',
-- 	-- SysEndTime__1686     char(18)  NULL ,
-- 	-- SysStartTime__1687   char(18)  NULL ,
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	ManufacturerVehicleMakeID sdSequenceInteger.int  NULL 
-- )
-- go

create trigger Inventory.uTdu_ManufacturerVehicleModel
on Inventory.ManufacturerVehicleModel
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
            , ManufacturerVehicleModelID
            , ManufacturerVehicleModelName
            , ManufacturerVehicleModelVariant
            , Salary
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
                , ManufacturerVehicleModelID
                , ManufacturerVehicleModelName
                , ManufacturerVehicleModelVariant
                , Salary
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


