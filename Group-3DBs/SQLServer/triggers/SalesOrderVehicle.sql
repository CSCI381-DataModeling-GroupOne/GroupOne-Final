-- CREATE TABLE Sales.SalesOrderVehicle
-- ( 
-- 	SalesOrderVehicleID  sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	InvoiceNumber        sdShortTextString.nchar(8) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_InvoiceNumber_InvoiceNumber
-- 		 DEFAULT  '00000000',
-- 	TotalSalePrice       sdVehicleSalePayment.numeric(18,2)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_TotalSalePrice_Price
-- 		 DEFAULT  0.00,
-- 	SaleDate             sdDate.date  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_SaleDate_Date
-- 		 DEFAULT  '19991231',
-- 	SalesOrderCategoryDescription AS [Sales].[ufnCategoryDescription_SalesOrderCategoryDescription]([SalesOrderVehicle].[TotalSalePrice]) COLLATE SQL_Latin1_General_CP1_CI_AS ,
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_Note_Unavailable
-- 		 DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_IsDeleted_FlagNo
-- 		 DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_TransactionNumber_OrdinalNumber
-- 		 DEFAULT  1,
-- 	UserAuthorizationID  sdSequenceNumber.integer  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_UserAuthorizationID_OrdinalNumber
-- 		 DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_SysStartTime_Sysdatetime
-- 		 DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicle_SysEndTime_SysEndTime
-- 		 DEFAULT  '99991231 23:59:59.9999999',
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	-- SysStartTime__1684   char(18)  NULL ,
-- 	-- SysEndTime__1685     char(18)  NULL ,
-- 	CustomerID           sdSequenceInteger.int  NULL ,
-- 	StaffID              sdSequenceInteger.int  NOT NULL 
-- )
-- go

create trigger Sales.uTdu_SalesOrderVehicleHistory
on Sales.SalesOrderVehicle
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
        insert into Audit.SalesOrderVehicleHistory
        (
            SalesOrderVehicleHistoryTimestamp
            , TriggerOption
            , CustomerID
            , StaffID
            , SalesOrderVehicleID
            , InvoiceNumber
			, TotalSalePrice
            , SaleDate
            , SalesOrderCategoryDescription
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as SalesOrderVehicleHistoryTimestamp
                , @action             as TriggerOption
                , CustomerID
                , StaffID
                , SalesOrderVehicleID
                , InvoiceNumber
				, TotalSalePrice
                , SaleDate
                , SalesOrderCategoryDescription
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




