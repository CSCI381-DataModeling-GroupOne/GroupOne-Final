﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dString].[sdCountryStringVariants]') IS NOT NULL
	DROP TYPE [dString].[sdCountryStringVariants];

GO
CREATE TYPE [dString].[sdCountryStringVariants] FROM nvarchar (20) NULL
GO
