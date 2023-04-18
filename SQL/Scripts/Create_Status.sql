USE [Direct20KA_Dev]
GO

/****** Object:  Table [dbo].[Status]    Script Date: 4/18/2023 3:33:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](4) NULL,
	[Description] [varchar](30) NULL,
	[IsActive] [bit] NOT NULL,
	[Type] [varchar](20) NULL,
	[AddedBy] [varchar](10) NULL,
	[AddDateTime] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_AddDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [AddDateTime]
GO

ALTER TABLE [dbo].[Status] ADD  CONSTRAINT [DF_Status_UpdatedDateTime]  DEFAULT (format(getdate(),'MM-dd-yyyy HH:mm:ss')) FOR [UpdatedDateTime]
GO

ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [FK_Status_Status] FOREIGN KEY([Id])
REFERENCES [dbo].[Status] ([Id])
GO

ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [FK_Status_Status]
GO


