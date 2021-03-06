/****** Object:  View [dbo].[vMenuLoadParameters]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuLoadParameters] 
AS
SELECT	
	mlp.ID ,
    mlp.Code ,
    mlp.Name ,
    mlp.ImageFile ,
    mlp.SeqNo ,
    mlp.IsActive ,
    mlp.Comment ,
    mlp.CommandText ,
    mlp.ID_Menu, m.Name [Menu]
FROM 
	tMenuLoadParameters mlp
	LEFT JOIN dbo.tMenu m ON m.ID = mlp.ID_Menu
GO
