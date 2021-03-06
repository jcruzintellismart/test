/****** Object:  View [dbo].[vUserGroupMenuButton]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupMenuButton]
AS
SELECT     ugmb.ID, ugmb.ID_UserGroupMenu, ugmb.ID_MenuButton, mb.Name AS MenuButton, ugmb.Comment, mb.ID_Menu, mb.SeqNo, mb.IsActive, ugm.ID_UserGroup
FROM         dbo.tUserGroupMenuButton AS ugmb LEFT OUTER JOIN
                      dbo.tUserGroupMenu AS ugm ON ugmb.ID_UserGroupMenu = ugm.ID LEFT OUTER JOIN
                      dbo.tMenuButton AS mb ON ugmb.ID_MenuButton = mb.ID
GO
