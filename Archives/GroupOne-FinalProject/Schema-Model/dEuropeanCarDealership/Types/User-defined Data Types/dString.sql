﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dEuropeanCarDealership].[dString]') IS NOT NULL
	DROP TYPE [dEuropeanCarDealership].[dString];

GO
CREATE TYPE [dEuropeanCarDealership].[dString] FROM nvarchar (20) NULL
GO
