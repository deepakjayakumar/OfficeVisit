USE [Direct20KA_Dev]
GO

/****** Object:  Table [dbo].[OfficeVisit_Report]    Script Date: 4/18/2023 3:24:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OfficeVisit_Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](4) NULL,
	[OfficeId] [varchar](30) NULL,
	[NSSId] [varchar](10) NULL,
	[SOMId] [varchar](10) NULL,
	[SBDId] [varchar](10) NULL,
	[VisitedDate] [date] NULL,
	[LastAuditDate] [date] NULL,
	[OfficeScore] [int] NULL,
	[DeleteFlag] [char](1) NULL,
	[StatusId] [int] NULL,
	[AddedBy] [varchar](10) NULL,
	[AddDateTime] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_OfficeVisit_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[OfficeVisit_Report] ADD  CONSTRAINT [DF_Report_AddDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [AddDateTime]
GO

ALTER TABLE [dbo].[OfficeVisit_Report] ADD  CONSTRAINT [DF_Report_UpdatedDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [UpdatedDateTime]
GO

ALTER TABLE [dbo].[OfficeVisit_Report]  WITH CHECK ADD  CONSTRAINT [FK_OfficeVisit_Report_OfficeVisit_Report] FOREIGN KEY([Id])
REFERENCES [dbo].[OfficeVisit_Report] ([Id])
GO

ALTER TABLE [dbo].[OfficeVisit_Report] CHECK CONSTRAINT [FK_OfficeVisit_Report_OfficeVisit_Report]
GO

ALTER TABLE [dbo].[OfficeVisit_Report]  WITH CHECK ADD  CONSTRAINT [FK_OfficeVisit_Report_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO

ALTER TABLE [dbo].[OfficeVisit_Report] CHECK CONSTRAINT [FK_OfficeVisit_Report_Status]
GO


