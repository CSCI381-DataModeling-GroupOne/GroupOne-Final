-- CREATE TABLE HumanResources.Staff
-- ( 
-- 	StaffID              sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	StaffName            sdPersonNameString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Staff_StaffName_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	DepartmentID         sdSequenceNumber.integer  NULL ,
-- 	ManagerID            sdSequenceNumber.integer  NULL ,
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_Staff_Note_Note
-- 		 DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Staff_IsDeleted_FlagNo
-- 		 DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_Staff_TransactionNumber_OrdinalNumber
-- 		 DEFAULT  1,
-- 	UserAuthorizationID  dNumber.integer  NULL 
-- 	CONSTRAINT DF_Staff_UserAuthorizationID_OrdinalNumber
-- 		 DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Staff_SysStartTime_Sysdatetime
-- 		 DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_Staff_SysEndTime_SysEndTime
-- 		 DEFAULT  '99991231 23:59:59.9999999',
-- 	Salary               integer  NULL ,
-- 	StaffEmail           char(18)  NULL ,
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	-- SysStartTime__1657   char(18)  NULL ,
-- 	-- SysEndTime__1658     char(18)  NULL 
-- )
-- go

create trigger HumanResources.uTdu_Staff
on HumanResources.Staff
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
        insert into Audit.StaffHistory
        (
            StaffHistoryTimestamp
            , TriggerOption
            , StaffID
            , StaffName
            , DepartmentID
            , ManagerID
            , Salary
            , StaffEmail
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as StaffHistoryTimestamp
                , @action             as TriggerOption
                , StaffID
                , StaffName
                , DepartmentID
                , ManagerID
                , Salary
                , StaffEmail
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

