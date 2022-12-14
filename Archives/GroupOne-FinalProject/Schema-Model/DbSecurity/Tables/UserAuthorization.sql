﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

CREATE TABLE [DbSecurity].[UserAuthorization]
(
[UserAuthorizationId] [sdSequenceNumber].[SurrogateKeyNumber] NOT NULL IDENTITY(1, 1),
[ClassTime] [sdTimeString].[ClassTimeString] NULL CONSTRAINT [DF_UserAuthorization_ClassTime] DEFAULT ('9:15'),
[GroupName] [dEuropeanCarDealership].[dEuropeanCarManufacturer] NOT NULL CONSTRAINT [DF_UserAuthorization_GroupName] DEFAULT ('Group One'),
[GroupProjectName] [sdProjectString].[GrouplProjectNameString] NULL CONSTRAINT [DF_UserAuthorization_GroupProjectName] DEFAULT ('CSCI381 Group One Final Project'),
[GroupMemberLastName] [sdPersonNameString].[LastNameString] NOT NULL CONSTRAINT [DF_UserAuthorization_GroupMemberLastName] DEFAULT ('Unavailable'),
[GroupMemberFirstName] [sdPersonNameString].[FirstNameString] NOT NULL CONSTRAINT [DF_UserAuthorization_GroupMemberFirstName_Unavailable] DEFAULT ('Unavailable'),
[DateAdded] [sdSysTime].[DateAdded] NULL CONSTRAINT [DF_UserAuthorization_DateAdded__Sysdatetime] DEFAULT (sysdatetime()),
[DateOfLastUpdate] [sdSysTime].[DateOfLastUpdate] NULL CONSTRAINT [DF_UserAuthorization_DateOfOfLastUpdate_Sysdatetime] DEFAULT ('99991231 23:59:59.9999999')
)
GO
ALTER TABLE [DbSecurity].[UserAuthorization] ADD CONSTRAINT [PK_UserAuthorization] PRIMARY KEY CLUSTERED ([UserAuthorizationId])
GO