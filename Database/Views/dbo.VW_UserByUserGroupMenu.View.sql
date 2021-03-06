/****** Object:  View [dbo].[VW_UserByUserGroupMenu]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_UserByUserGroupMenu]
AS
SELECT DISTINCT ug.Name AS UserGroup, m.Name AS Menu, ISNULL(pm.Name, m.Name) AS ParentMenu, ugm.AllowEdit
FROM         dbo.tMenu pm RIGHT OUTER JOIN
                      dbo.tMenu m ON pm.ID = m.ID_Menu LEFT OUTER JOIN
                      dbo.tUserGroupMenu ugm INNER JOIN
                      dbo.tUserGroup ug ON ugm.ID_UserGroup = ug.ID ON m.ID = ugm.ID_Menu
GO
