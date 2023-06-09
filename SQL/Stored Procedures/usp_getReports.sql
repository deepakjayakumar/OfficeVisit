USE [Direct20KA_Dev]
GO
/****** Object:  StoredProcedure [dbo].[usp_getReports]    Script Date: 4/18/2023 3:41:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Usha Devi Saravanan
-- Create date: <Create Date,,>
-- Description: <Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_getReports]
-- Add the parameters for the stored procedure here
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT  [OfficeId]
      ,[NSSId]
      ,[SOMId]
      ,[SBDId]
      ,[VisitedDate]
      ,[LastAuditDate]
      ,[OfficeScore]
 from [OfficeVisit_Report]
END