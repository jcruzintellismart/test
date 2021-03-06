/****** Object:  View [dbo].[vWebWidgetsUserGroup]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebWidgetsUserGroup]
AS
SELECT  wwug.ID ,
        wwug.ID_WebWidgets ,
        wwug.ID_UserGroup ,
		ww.Name AS WebWidgets ,
		ug.Name AS UserGroup FROM dbo.tWebWidgetsUserGroup wwug
LEFT JOIN dbo.tWebWidgets ww ON wwug.ID_WebWidgets = ww.ID
LEFT JOIN dbo.tUserGroup ug ON wwug.ID_UserGroup = ug.ID
GO
