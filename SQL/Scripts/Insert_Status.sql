USE [Direct20KA_Dev]
GO

INSERT INTO [dbo].[Status]
           ([Code]
           ,[Description]
           ,[Type]
           )
           
     VALUES
           ('COMP','Completed','OfficeVisit'),
		   ('PROG','In Progress','OfficeVisit')
GO

--Select * from [dbo].[Status]





