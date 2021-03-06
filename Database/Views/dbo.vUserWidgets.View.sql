/****** Object:  View [dbo].[vUserWidgets]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserWidgets]
AS
SELECT  uw.ID ,
        uw.Name ,
        uw.xPos ,
        uw.yPos ,
        uw.ID_User ,
        uw.ID_WidgetType ,
		uw.BGColor ,
		uw.ID_Menu ,
		uw.wWidth ,
		uw.hHeight ,
		uw.DataSource ,
		uw.SelectedColumn ,
		uw.SelectedColumn2 ,
		uw.ID_ApplicationType ,
		wt.Name WidgetType ,
		wt.MinW ,
		wt.MinH ,
		m.Name Menu ,
		at.Name ApplicationType FROM dbo.tUserWidgets uw
		LEFT JOIN dbo.tWidgetType wt ON uw.ID_WidgetType = wt.ID
		LEFT JOIN dbo.tMenu m ON uw.ID_Menu = m.ID
		LEFT JOIN dbo.tApplicationType at ON uw.ID_ApplicationType = at.ID
GO
