USE [Direct20KA_Dev]
GO

/****** Object:  Table [dbo].[OfficeVisit_SubCategory]    Script Date: 4/18/2023 3:33:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OfficeVisit_SubCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](300) NULL,
	[CategoryId] [int] NULL,
	[DeleteFlag] [char](1) NULL,
	[AddedBy] [varchar](10) NULL,
	[AddDateTime] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OfficeVisit_SubCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OfficeVisit_SubCategory] ADD  CONSTRAINT [DF_SubCategory_AddDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [AddDateTime]
GO

ALTER TABLE [dbo].[OfficeVisit_SubCategory] ADD  CONSTRAINT [DF_SubCategory_UpdatedDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [UpdatedDateTime]
GO

ALTER TABLE [dbo].[OfficeVisit_SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_OfficeVisit_SubCategory_OfficeVisit_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[OfficeVisit_Category] ([Id])
GO

ALTER TABLE [dbo].[OfficeVisit_SubCategory] CHECK CONSTRAINT [FK_OfficeVisit_SubCategory_OfficeVisit_Category]
GO


