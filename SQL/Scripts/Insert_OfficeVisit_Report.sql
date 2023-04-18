USE [Direct20KA_Dev]
GO

INSERT INTO [dbo].[OfficeVisit_Report]
           (
           [OfficeId]
           ,[NSSId]
           ,[SOMId]
           ,[SBDId]
           ,[VisitedDate]
           ,[LastAuditDate]
           ,[OfficeScore]
           ,[StatusId])
           
     VALUES
           ('5','1111','2222','3333',CONVERT(DATE, GETDATE()),CONVERT(DATE, GETDATE()),90,1),
           ('6','1211','2322','3433',CONVERT(DATE, GETDATE()),CONVERT(DATE, GETDATE()),70,2)
GO


--SELECT * from  [OfficeVisit_Report]


