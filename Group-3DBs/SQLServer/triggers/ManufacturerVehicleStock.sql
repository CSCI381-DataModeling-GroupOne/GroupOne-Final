-- CREATE TABLE Inventory.ManufacturerVehicleStock
-- ( 
-- 	ManufacturerVehicleStockID sdSequenceInteger.int  IDENTITY ( 1,1 )  NOT NULL ,
-- 	StockCode            sdShortTextString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_StockCode_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	Cost                 sdVehicleSalePayment.numeric(18,2)  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_Cost_Price
-- 		 DEFAULT  0.00,
-- 	RepairsCharge        sdVehicleSalePayment.integer  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_RepairsCharge_Price
-- 		 DEFAULT  0.00,
-- 	PartsCharge          sdVehicleSalePayment.integer  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_PartsCharge_Price
-- 		 DEFAULT  0.00,
-- 	DeliveryCharge       sdVehicleSalePayment.integer  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_DeliveryCharge_Price
-- 		 DEFAULT  0.00,
-- 	IsPremiumRoadHandlingPackage sdFlagBit.bit  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_IsPremiumRoadHandlingPackage_FlagFalse
-- 		 DEFAULT  0,
-- 	VehicleColor         sdVehicleDescriptorString.nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_VehicleColor_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	CustomerComments     sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_CustomerComments_Unavailable
-- 		 DEFAULT  'Unavailable',
-- 	PurchaseDate         sdDate.date  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_PurchaseDate_Date
-- 		 DEFAULT  '19991231',
-- 	Note                 sdLongTextString.nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_Note_Note
-- 		 DEFAULT  'Row was inserted',
-- 	IsDeleted            sdFlagString.nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_IsDeleted_FlagNo
-- 		 DEFAULT  'N',
-- 	TransactionNumber    sdOrdinalNumber.smallint  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_TransactionNumber_OrdinalNumber
-- 		 DEFAULT  1,
-- 	UserAuthorizationID  sdSequenceNumber.integer  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_UserAuthorizationID_OrdinalNumber
-- 		 DEFAULT  1,
-- 	SysStartTime         sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_SysStartTime_Sysdatetime
-- 		 DEFAULT  sysdatetime(),
-- 	SysEndTime           sdSysTime.Datetime2(7)  NULL 
-- 	CONSTRAINT DF_ManufacturerVehicleStock_SysEndTime_SysEndTime
-- 		 DEFAULT  '99991231 23:59:59.9999999',
-- 	UserAuthorizationId  char(18)  NULL ,
-- 	SysEndTime__1695     char(18)  NULL ,
-- 	SysStartTime__1696   char(18)  NULL ,
-- 	ManufacturerVehicleModelID sdSequenceInteger.int  NULL 
-- )
-- go

create trigger Inventory.uTdu_ManufacturerVehicleStock
on Inventory.ManufacturerVehicleStock
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
        insert into Audit.ManufacturerVehicleStockHistory
        (
            ManufacturerVehicleStockHistoryTimestamp
            , TriggerOption
            , ManufacturerVehicleStockID
            , StockCode
            , Cost
            , RepairsCharge
			, PartsCharge
            , DeliveryCharge
            , IsPremiumRoadHandlingPackage
            , VehicleColor
            , CustomerComments
            , PurchaseDate
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
                , ManufacturerVehicleStockID
                , StockCode
                , Cost
                , RepairsCharge
				, PartsCharge
                , DeliveryCharge
                , IsPremiumRoadHandlingPackage
                , VehicleColor
                , CustomerComments
                , PurchaseDate
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




