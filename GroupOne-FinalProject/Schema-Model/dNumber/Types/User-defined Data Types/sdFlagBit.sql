﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[dNumber].[sdFlagBit]') IS NOT NULL
	DROP TYPE [dNumber].[sdFlagBit];

GO
CREATE TYPE [dNumber].[sdFlagBit] FROM bit NULL
GO
