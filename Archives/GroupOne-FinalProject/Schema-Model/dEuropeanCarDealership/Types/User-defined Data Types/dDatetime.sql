﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dEuropeanCarDealership].[dDatetime]') IS NOT NULL
	DROP TYPE [dEuropeanCarDealership].[dDatetime];

GO
CREATE TYPE [dEuropeanCarDealership].[dDatetime] FROM datetime NULL
GO