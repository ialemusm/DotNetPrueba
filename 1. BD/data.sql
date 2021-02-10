USE [PRODUCTOS]
GO

INSERT INTO [dbo].[PRODUCT_CONDITION]
           ([cond_id]
           ,[cond_name])
     VALUES
           (0, 'Optimo'),
		   (1, 'Defectuso')
GO

INSERT INTO [dbo].[PRODUCT_STATUS]
           ([cond_id]
           ,[cond_name])
     VALUES
           (0, 'En Stock'),
		   (1, 'Vendido')
