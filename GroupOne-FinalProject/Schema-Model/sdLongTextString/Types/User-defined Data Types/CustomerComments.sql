﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdLongTextString].[CustomerComments]') IS NOT NULL
	DROP TYPE [sdLongTextString].[CustomerComments];

GO
CREATE TYPE [sdLongTextString].[CustomerComments] FROM nvarchar (200) NULL
GO