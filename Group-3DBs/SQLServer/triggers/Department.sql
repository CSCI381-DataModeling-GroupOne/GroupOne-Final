-- create table HumanResources.Department
-- ( 
-- 	DepartmentName       sdBusinessComponentString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_Department_Department_Unavailable DEFAULT  'Unavailable',
-- 	DepartmentID         sdVehicleSalePayment.integer  NOT NULL ,
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	SysStartTime         char(18)  NULL ,
-- 	SysEndTime           char(18)  NULL 
-- )
-- go

create trigger HumanResources.uTdu_Department
on HumanResources.Department
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
        insert into Audit.DepartmentHistory
        (
            DepartmentHistoryTimestamp
            , TriggerOption
            , DepartmentID
            , DepartmentName
            , Department
            , Salary
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as DepartmentHistoryTimestamp
                , @action             as TriggerOption
                , DepartmentID
                , DepartmentName
                , Department
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

