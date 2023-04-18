
CREATE TABLE [dbo].[MST_OfficeTable](
	[OfficeID] [int] NOT NULL,
	[OfficeName1] [nvarchar](10) NULL,
	[OfficeName2] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[CityName] [nvarchar](50) NULL,
	[StateID] [nvarchar](6) NULL,
	[ZipCode] [varchar](15) NULL,
	[CountyName] [nvarchar](30) NULL,
	[CountryID] [int] NULL
	)
	

ALTER TABLE [dbo].[MST_OfficeTable] ADD  CONSTRAINT [DF_MST_OfficeTable_DeleteFlag]  DEFAULT ((0)) FOR [DeleteFlag]
GO


