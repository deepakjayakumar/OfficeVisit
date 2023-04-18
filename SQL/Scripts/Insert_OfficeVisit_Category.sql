USE [Direct20KA_Dev]
GO

INSERT INTO [dbo].[OfficeVisit_Category]
           ([Name])
         
     VALUES
          ('Office Organization & Efficiency'),
		  ('Kitchen Area'),
		  ('IT Equipment'),
		  ('Lab Organization'),
		  ('Building & Office HOA'),
		  ('Kizuki'),
		  ('Others')          
GO

--DBCC CHECKIDENT ('[OfficeVisit_Category]', RESEED, 0);

--select * from [dbo].[OfficeVisit_Category]

--Delete from [dbo].[OfficeVisit_Category]




 