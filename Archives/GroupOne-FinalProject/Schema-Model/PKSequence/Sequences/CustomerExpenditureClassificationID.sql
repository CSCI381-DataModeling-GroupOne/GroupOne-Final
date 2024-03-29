﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

IF OBJECT_ID('[PKSequence].[CustomerExpenditureClassificationID]') IS NOT NULL
	DROP SEQUENCE [PKSequence].[CustomerExpenditureClassificationID];

GO
CREATE SEQUENCE [PKSequence].[CustomerExpenditureClassificationID]
AS int
START WITH 1
INCREMENT BY 1
MINVALUE -2147483648
MAXVALUE 2147483647
NO CYCLE
CACHE 
GO
