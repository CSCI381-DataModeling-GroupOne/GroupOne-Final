﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdFlagBit].[FlagFalse]') IS NOT NULL
	DROP TYPE [sdFlagBit].[FlagFalse];

GO
CREATE TYPE [sdFlagBit].[FlagFalse] FROM bit NULL
GO
