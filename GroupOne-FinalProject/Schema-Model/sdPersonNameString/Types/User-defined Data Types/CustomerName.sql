﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdPersonNameString].[CustomerName]') IS NOT NULL
	DROP TYPE [sdPersonNameString].[CustomerName];

GO
CREATE TYPE [sdPersonNameString].[CustomerName] FROM nvarchar (50) NULL
GO
