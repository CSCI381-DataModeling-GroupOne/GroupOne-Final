﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

CREATE TABLE [Sales].[SalesOrderVehicleDetail]
(
[SalesOrderVehicleDetailID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[SalesOrderVehicleID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SalesOrderVehicleID_ForeignKeyValue] DEFAULT ((0)),
[LineItemNumber] [sdSequenceNumber].[LineItemNumber] NOT NULL CONSTRAINT [DF_SalesOrderVehicleDetail_LineItemNumber_SequenceStartingValue] DEFAULT ((1)),
[ManufacturerVehicleStockID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_ManufacturerVehicleStockID_ForeignKeyValue] DEFAULT ((0)),
[StockCode] [sdShortTextString].[StockCode] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_StockCode_Unavailable] DEFAULT ('Unavailable'),
[SalePrice] [sdVehicleSalePayment].[VehiclePrice] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SalePrice_Price] DEFAULT ((0.00)),
[LineItemDiscount] [sdVehicleSalePayment].[DiscountedPrice] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_LineItemDiscount_Price] DEFAULT ((0.00)),
[DerivedDiscountedSalePrice] AS ([SalePrice]-([LineItemDiscount]/[LineItemNumber])) PERSISTED NOT NULL,
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_SalesOrderVehicleDetail_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [dNumber].[sdSequenceNumber] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_UserAuthorizationID_OrdinalNumber] DEFAULT ((1)),
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_SalesOrderVehicleDetail_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_DerivedDiscountedSalePrice_Price] CHECK (([DerivedDiscountedSalePrice]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_LineItemDiscount_Price] CHECK (([LineItemDiscount]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [CK_SalesOrderVehicleDetail_SalePrice_Price] CHECK (([SalePrice]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [PK_SalesDetails] PRIMARY KEY CLUSTERED ([SalesOrderVehicleDetailID])
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [FK_SalesOrderVehicleDetail_ManufacturerVehicleStock] FOREIGN KEY ([ManufacturerVehicleStockID]) REFERENCES [Inventory].[ManufacturerVehicleStock] ([ManufacturerVehicleStockID])
GO
ALTER TABLE [Sales].[SalesOrderVehicleDetail] ADD CONSTRAINT [FK_SalesOrderVehicleDetail_SalesOrderVehicle] FOREIGN KEY ([SalesOrderVehicleID]) REFERENCES [Sales].[SalesOrderVehicle] ([SalesOrderVehicleID])
GO
