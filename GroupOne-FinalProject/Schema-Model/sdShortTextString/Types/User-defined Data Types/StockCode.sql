﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdShortTextString].[StockCode]') IS NOT NULL
	DROP TYPE [sdShortTextString].[StockCode];

GO
CREATE TYPE [sdShortTextString].[StockCode] FROM nvarchar (50) NULL
GO
