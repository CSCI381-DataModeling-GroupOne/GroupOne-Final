-- CREATE TABLE Sales.SalesOrderVehicleDetail
-- ( 
-- 	SalesOrderVehicleDetailID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	LineItemNumber       sdSequenceNumber.smallint  NOT NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_LineItemNumber_SequenceStartingValue
-- 		 DEFAULT  1,
-- 	StockCode            sdShortTextString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_StockCode_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	SalePrice            sdVehicleSalePayment.numeric(18,2)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_SalePrice_Price
-- 		 DEFAULT  0.00,
-- 	LineItemDiscount     sdVehicleSalePayment.numeric(18,2)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_LineItemDiscount_Price
-- 		 DEFAULT  0.00,
-- 	DerivedDiscountedSalePrice AS (SalePrice - (SalePrice - (LineItemDiscount/(LineItemNumber * 1.0)) PERSISTED NOT NULL ,
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_Note_Note
-- 		 DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_IsDeleted_FlagNo
-- 		 DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_TransactionNumber_OrdinalNumber
-- 		 DEFAULT  1,
-- 	UserAuthorizationID  dNumber.integer  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_UserAuthorizationID_OrdinalNumber
-- 		 DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_SysStartTime_Sysdatetime
-- 		 DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_SalesOrderVehicleDetail_SysEndTime_SysEndTime
-- 		 DEFAULT  '99991231 23:59:59.9999999',
-- 	-- SysStartTime__1680   char(18)  NULL ,
-- 	-- SysEndTime__1681     char(18)  NULL ,
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	default              char(18)  NULL ,
-- 	ManufacturerVehicleStockID sdSequenceInteger.int  NULL ,
-- 	SalesOrderVehicleID  sdSequenceInteger.int  NULL 
-- )
-- go

create trigger Sales.uTdu_SalesOrderVehicleDetailHistory
on Sales.SalesOrderVehicleDetail
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
        insert into Audit.SalesOrderVehicleDetailHistory
        (
            SalesOrderVehicleDetailHistoryTimestamp
            , TriggerOption
            , SalesOrderVehicleDetailID
            , ManufacturerVehicleStockID
            , SalesOrderVehicleID
            , LineItemNumber
			, StockCode
            , SalePrice
            , LineItemDiscount
            , DerivedDiscountedSalePrice
            , Notes
            , IsDeleted
            , TransactionNumber
            , UserAuthenticatedKey
            , TimestampRowChanged
            , SysStartTime
            , SysEndTime
        )
        select sysdatetime()       as SalesOrderVehicleDetailHistoryTimestamp
                , @action             as TriggerOption
                , SalesOrderVehicleDetailID
                , ManufacturerVehicleStockID
                , SalesOrderVehicleID
                , LineItemNumber
				, concat(StockCode1, CustomerAddress2, CustomerTown, CustomerPostalCode)
                , SalePrice
                , LineItemDiscount
                , DerivedDiscountedSalePrice
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


