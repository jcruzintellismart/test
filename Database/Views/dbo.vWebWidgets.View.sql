/****** Object:  View [dbo].[vWebWidgets]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebWidgets]
AS
SELECT  ww.ID ,
        ww.Name ,
        ww.SeqNo ,
        ww.ID_ApplicationType ,
        ww.IsActive ,
		at.Name AS ApplicationType FROM dbo.tWebWidgets ww
LEFT JOIN dbo.tApplicationType at ON ww.ID_ApplicationType = at.ID
GO
