﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

CREATE TABLE [Inventory].[ManufacturerVehicleModel]
(
[ManufacturerVehicleModelID] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[ManufacturerVehicleMakeID] [sdSequenceNumber].[SurrogateKeyNumber] NULL CONSTRAINT [DF_ManufacturerVehicleModel_ManufacturerVehicleMakeID_ForeignKeyValue] DEFAULT ((0)),
[ManufacturerVehicleModelName] [sdVehicleDescriptorString].[VehicleIdentifier] NULL CONSTRAINT [DF_ManufacturerVehicleModel_ManufacturerModelName_Unknown] DEFAULT ('Unavailable'),
[ManufacturerVehicleModelVariant] [sdVehicleDescriptorString].[VehicleIdentifier] NULL CONSTRAINT [DF_ManufacturerVehicleModel_ManufacturerModelVariant_Unknown] DEFAULT ('Unavailable'),
[Note] [sdLongTextString].[Note] NOT NULL CONSTRAINT [DF_ManufacturerVehicleModel_Note_Note] DEFAULT ('Row was inserted'),
[IsDeleted] [sdFlagString].[AuditFlag] NULL CONSTRAINT [DF_ManufacturerVehicleModel_IsDeleted_FlagNo] DEFAULT ('N'),
[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL CONSTRAINT [DF_ManufacturerVehicleModel_TransactionNumber_OrdinalNumber] DEFAULT ((1)),
[UserAuthorizationID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
[SysStartTime] [sdSysTime].[SysStartTime] NULL CONSTRAINT [DF_ManufacturerVehicleModel_SysStartTime_Sysdatetime] DEFAULT (sysdatetime()),
[SysEndTime] [sdSysTime].[SysEndTime] NULL CONSTRAINT [DF_ManufacturerVehicleModel_SysEndTime_SysEndTime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [CK_ManufacturerVehicleModel_IsDeleted_AuditFlag] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [PK_Model_1] PRIMARY KEY CLUSTERED ([ManufacturerVehicleModelID])
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [FK_ManufacturerVehicleModel_ManufacturerVehicleMake] FOREIGN KEY ([ManufacturerVehicleMakeID]) REFERENCES [Inventory].[ManufacturerVehicleMake] ([ManufacturerVehicleMakeID])
GO
ALTER TABLE [Inventory].[ManufacturerVehicleModel] ADD CONSTRAINT [FK_ManufacturerVehicleModel_ManufacturerVehicleModel] FOREIGN KEY ([ManufacturerVehicleModelID]) REFERENCES [Inventory].[ManufacturerVehicleModel] ([ManufacturerVehicleModelID])
GO
