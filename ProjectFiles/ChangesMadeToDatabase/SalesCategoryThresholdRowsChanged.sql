USE [RawEuropeanCarManufacturer]
GO
/****** Object:  Table [AddToExistTables].[SalesCategoryThreshold]    Script Date: 12/2/2022 4:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [AddToExistTables].[SalesCategoryThreshold](
	[LowerThreshold] [int] NULL,
	[UpperThreshold] [int] NULL,
	[CategoryDescription] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (100, 25000, N'Very Low')
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (25001, 50000, N'Low')
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (50001, 75000, N'Medium')
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (75001, 100000, N'High')
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (100001, 200000, N'Very High')
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (200001, 300000, N'Exceptional')
INSERT [AddToExistTables].[SalesCategoryThreshold] ([LowerThreshold], [UpperThreshold], [CategoryDescription]) VALUES (300001, 400000, N'Outstanding')
GO
