﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdAddressesString].[CountryString]') IS NOT NULL
	DROP TYPE [sdAddressesString].[CountryString];

GO
CREATE TYPE [sdAddressesString].[CountryString] FROM nvarchar (50) NULL
GO
