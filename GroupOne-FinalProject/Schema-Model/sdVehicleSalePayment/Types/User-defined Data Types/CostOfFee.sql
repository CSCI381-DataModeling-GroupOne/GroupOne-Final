﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdVehicleSalePayment].[CostOfFee]') IS NOT NULL
	DROP TYPE [sdVehicleSalePayment].[CostOfFee];

GO
CREATE TYPE [sdVehicleSalePayment].[CostOfFee] FROM numeric (18, 2) NOT NULL
GO