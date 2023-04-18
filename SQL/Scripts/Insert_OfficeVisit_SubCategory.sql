USE [Direct20KA_Dev]
GO

INSERT INTO [dbo].[OfficeVisit_SubCategory]
           ([Name]
           ,[CategoryId])
          
     VALUES
          ('Is the overall office organized; free of any broken/unused equipment(chairs, phones, copier, etc.)?',1),
           ('Are all light fixtures working correctly. No light bulbs out?)?',1),
		   ('Are empty desks cleared off inside & out? Only equipped with monitors & cables?',1),
		   ('Are the main floor carpet squares free from stains; walls & doors have minimal scuffs?',1),
		   ('Are unoccupied conference rooms with white boards clear?',1),
		   ('Does the SOM have 5-10 spare access cards?If the answer is No, please email REQ@keyence.com to request additional cards.',1),
		   ('Is there an updated seating chart in the "U" drive?',1),

		   ('All Kitchen appliances function properly?   (No restricted appliances like toaster ovens present?',2),
		   ('Are Kitchen counters & tables clean? (no spills or stains & is free of clutter)',2),
		   ('Are cabinets efficiently organized? (similar contents housed together. Example: toxic cleaning supplies being kept with perishable foods is not good)',2),
		   ('Are cabinets labeled by contents?',2),
		   ('Is the Refrigerator free from spoiled food? Is it clean & fresh?',2)
		   
GO

--select * from [dbo].[OfficeVisit_SubCategory]
--Delete from [dbo].[OfficeVisit_SubCategory]
--DBCC CHECKIDENT ('[OfficeVisit_SubCategory]', RESEED, 0);


