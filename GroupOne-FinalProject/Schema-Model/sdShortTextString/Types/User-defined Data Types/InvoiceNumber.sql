﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF TYPE_ID('[sdShortTextString].[InvoiceNumber]') IS NOT NULL
	DROP TYPE [sdShortTextString].[InvoiceNumber];

GO
CREATE TYPE [sdShortTextString].[InvoiceNumber] FROM nchar (8) NULL
GO
