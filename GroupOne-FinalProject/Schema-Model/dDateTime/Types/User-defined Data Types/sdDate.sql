﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dDateTime].[sdDate]') IS NOT NULL
	DROP TYPE [dDateTime].[sdDate];

GO
CREATE TYPE [dDateTime].[sdDate] FROM date NULL
GO
