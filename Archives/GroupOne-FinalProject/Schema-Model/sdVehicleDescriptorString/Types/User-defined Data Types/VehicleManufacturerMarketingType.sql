﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdVehicleDescriptorString].[VehicleManufacturerMarketingType]') IS NOT NULL
	DROP TYPE [sdVehicleDescriptorString].[VehicleManufacturerMarketingType];

GO
CREATE TYPE [sdVehicleDescriptorString].[VehicleManufacturerMarketingType] FROM nvarchar (250) NULL
GO