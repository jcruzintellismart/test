/****** Object:  View [dbo].[vWebWidgets_Detail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebWidgets_Detail]
AS
    SELECT  wwd.ID ,
            wwd.ID_WebWidgets ,
            wwd.DataSource ,
			CASE WHEN ISNULL(wwd.ID_Menu, 0) = 0 THEN wwd.DataSource ELSE m.DataSource END EffectiveDataSource ,
            wwd.SeqNo ,
            wwd.Filter ,
            wwd.IsActive ,
            wwd.BaseTable ,
            ww.Name AS WebWidgets ,
            wwd.Name ,
            wwd.ID_Menu ,
			wwd.FreezeColumns ,
            m.Name AS Menu ,
			wwd.ID_WebWidgetsType
    FROM    dbo.tWebWidgets_Detail AS wwd
            LEFT OUTER JOIN dbo.tWebWidgets AS ww ON wwd.ID_WebWidgets = ww.ID
            LEFT OUTER JOIN dbo.tMenu AS m ON wwd.ID_Menu = m.ID
			LEFT OUTER JOIN dbo.tWebWidgetsType wwt ON wwd.ID_WebWidgetsType = wwt.ID
GO
