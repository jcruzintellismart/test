/****** Object:  View [dbo].[vUserGroupMenuTab]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupMenuTab]
AS
SELECT     u.ID, u.Code, u.Name, u.ImageFile, u.SeqNo, u.IsActive, u.Comment, u.ID_MenuTab, u.ID_UserGroupMenu, ugm.ID_UserGroup, m.ID_Menu, 
                      ug.Name AS UserGroupMenu, m.Name AS MenuTab, mn.Name AS Menu
FROM         dbo.tUserGroupMenuTab AS u LEFT OUTER JOIN
                      dbo.tMenu AS mn RIGHT OUTER JOIN
                      dbo.tMenuTab AS m ON mn.ID = m.ID_Menu ON u.ID_MenuTab = m.ID LEFT OUTER JOIN
                      dbo.tUserGroup AS ug RIGHT OUTER JOIN
                      dbo.tUserGroupMenu AS ugm ON ug.ID = ugm.ID_UserGroup ON u.ID_UserGroupMenu = ugm.ID
GO
