﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dString].[sdFlagString]') IS NOT NULL
	DROP TYPE [dString].[sdFlagString];

GO
CREATE TYPE [dString].[sdFlagString] FROM nvarchar (20) NULL
GO
