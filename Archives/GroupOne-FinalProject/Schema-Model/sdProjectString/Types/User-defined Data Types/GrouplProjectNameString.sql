﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdProjectString].[GrouplProjectNameString]') IS NOT NULL
	DROP TYPE [sdProjectString].[GrouplProjectNameString];

GO
CREATE TYPE [sdProjectString].[GrouplProjectNameString] FROM nvarchar (50) NULL
GO
