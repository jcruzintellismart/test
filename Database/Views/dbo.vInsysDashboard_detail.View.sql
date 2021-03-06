/****** Object:  View [dbo].[vInsysDashboard_detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vInsysDashboard_detail] 
AS
SELECT	
id.ID ,
id.Code ,
id.Name ,
id.ImageFile ,
id.SeqNo ,
id.IsActive ,
id.Comment ,
id.ID_InsysDashboard,
id.ID_TypeDashboard,
td.Name [TypeDashboard],
id.Label
FROM 
	tInsysDashboard_detail id
	LEFT JOIN dbo.tInsysDashboard id2 ON id2.ID = id.ID_InsysDashboard
	LEFT JOIN dbo.tTypeDashboard td ON td.ID = id.ID_TypeDashboard
GO
