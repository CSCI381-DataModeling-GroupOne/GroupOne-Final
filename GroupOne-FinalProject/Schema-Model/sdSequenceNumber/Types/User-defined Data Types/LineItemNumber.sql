﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdSequenceNumber].[LineItemNumber]') IS NOT NULL
	DROP TYPE [sdSequenceNumber].[LineItemNumber];

GO
CREATE TYPE [sdSequenceNumber].[LineItemNumber] FROM smallint NOT NULL
GO