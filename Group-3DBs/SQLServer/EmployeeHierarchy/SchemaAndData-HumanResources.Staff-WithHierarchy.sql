USE [GroupOne-EuropeanCarManufacturer]
GO
/****** Object:  Table [HumanResources].[Staff]    Script Date: 12/13/2022 3:07:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HumanResources].[Staff](
	[StaffID] [sdSequenceNumber].[SurrogateKeyNumber] IDENTITY(1,1) NOT NULL,
	[OrganizationNode] [hierarchyid] NOT NULL,
	[StaffName] [sdPersonNameString].[FullNameString] NULL,
	[DepartmentID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
	[ManagerID] [sdSequenceNumber].[SurrogateKeyNumber] NULL,
	[Note] [sdLongTextString].[Note] NOT NULL,
	[IsDeleted] [sdFlagString].[AuditFlag] NULL,
	[TransactionNumber] [sdOrdinalNumber].[TransactionNumber] NULL,
	[UserAuthorizationID] [dNumber].[sdSequenceNumber] NULL,
	[SysStartTime] [sdSysTime].[SysStartTime] NULL,
	[SysEndTime] [sdSysTime].[SysEndTime] NULL,
 CONSTRAINT [XPKStaff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [HumanResources].[Staff] ON 

INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (1, N'/', N'Amelia', 0, NULL, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (2, N'/1/1/', N'Gerard', 2, 1, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (3, N'/1/2/', N'Chloe', 3, 1, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (4, N'/1/3/', N'Susan', 1, 1, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (5, N'/1/3/1/', N'Andy', 1, 4, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (6, N'/1/3/2/', N'Steve', 1, 4, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (7, N'/1/3/3/', N'Stan', 1, 4, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (8, N'/1/3/4/', N'Nathan', 1, 4, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (9, N'/1/3/5/', N'Maggie', 1, 4, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (10, N'/1/1/1/', N'Jenny', 2, 2, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (11, N'/1/1/2/', N'Chris', 2, 2, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (12, N'/1/2/1/', N'Megan', 3, 3, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
INSERT [HumanResources].[Staff] ([StaffID], [OrganizationNode], [StaffName], [DepartmentID], [ManagerID], [Note], [IsDeleted], [TransactionNumber], [UserAuthorizationID], [SysStartTime], [SysEndTime]) VALUES (13, N'/1/1/2/1/', N'Sandy', 2, 11, N'Row was inserted', N'N', 1, 1, CAST(N'2022-12-11T15:58:42.2754957' AS DateTime2), CAST(N'9999-12-31T23:59:59.9999999' AS DateTime2))
SET IDENTITY_INSERT [HumanResources].[Staff] OFF
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_StaffName_Unavailable]  DEFAULT ('Unavailable') FOR [StaffName]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_DepartmentID_ForeignKeyValue]  DEFAULT ((0)) FOR [DepartmentID]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_ManagerID_ForeignKeyValue]  DEFAULT ((0)) FOR [ManagerID]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_Note_Note]  DEFAULT ('Row was inserted') FOR [Note]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_IsDeleted_FlagNo]  DEFAULT ('N') FOR [IsDeleted]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_TransactionNumber_OrdinalNumber]  DEFAULT ((1)) FOR [TransactionNumber]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_UserAuthorizationID_OrdinalNumber]  DEFAULT ((1)) FOR [UserAuthorizationID]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_SysStartTime_Sysdatetime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [HumanResources].[Staff] ADD  CONSTRAINT [DF_Staff_SysEndTime_SysEndTime]  DEFAULT ('99991231 23:59:59.9999999') FOR [SysEndTime]
GO
ALTER TABLE [HumanResources].[Staff]  WITH CHECK ADD  CONSTRAINT [CK_Staff_IsDeleted_AuditFlag] CHECK  (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
ALTER TABLE [HumanResources].[Staff] CHECK CONSTRAINT [CK_Staff_IsDeleted_AuditFlag]
GO
