/****** Object:  View [dbo].[vInsysDashboard]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vInsysDashboard] 
AS
SELECT	
isd.ID ,
isd.Code ,
isd.Name ,
isd.ImageFile ,
isd.SeqNo ,
isd.IsActive ,
isd.Comment ,
isd.ID_PositionInsysDashboard ,
pid.Name [PositionInsysDashboard],
isd.FROMDate,
isd.TODate,
isd.DataSource
FROM 
	tInsysDashboard isd
	LEFT JOIN dbo.tPositionInsysDashboard pid ON pid.ID = isd.ID_PositionInsysDashboard
GO
