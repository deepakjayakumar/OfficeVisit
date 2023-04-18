USE [Direct20KA_Dev]
GO

/****** Object:  Table [dbo].[OfficeVisit_ReportScore]    Script Date: 4/18/2023 3:24:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OfficeVisit_ReportScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReportId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[Score] [int] NULL,
	[Comment] [varchar](200) NULL,
	[Feedback] [varchar](200) NULL,
	[DeleteFlag] [char](1) NULL,
	[AddedBy] [varchar](10) NULL,
	[AddDateTime] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OfficeVisit_ReportScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore] ADD  CONSTRAINT [DF_ReportScore_AddDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [AddDateTime]
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore] ADD  CONSTRAINT [DF_ReportScore_UpdatedDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [UpdatedDateTime]
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore]  WITH CHECK ADD  CONSTRAINT [FK_OfficeVisit_ReportScore_OfficeVisit_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[OfficeVisit_Category] ([Id])
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore] CHECK CONSTRAINT [FK_OfficeVisit_ReportScore_OfficeVisit_Category]
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore]  WITH CHECK ADD  CONSTRAINT [FK_OfficeVisit_ReportScore_OfficeVisit_Report] FOREIGN KEY([ReportId])
REFERENCES [dbo].[OfficeVisit_Report] ([Id])
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore] CHECK CONSTRAINT [FK_OfficeVisit_ReportScore_OfficeVisit_Report]
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore]  WITH CHECK ADD  CONSTRAINT [FK_OfficeVisit_ReportScore_OfficeVisit_SubCategory] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[OfficeVisit_SubCategory] ([Id])
GO

ALTER TABLE [dbo].[OfficeVisit_ReportScore] CHECK CONSTRAINT [FK_OfficeVisit_ReportScore_OfficeVisit_SubCategory]
GO


