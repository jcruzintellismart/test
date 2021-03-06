/****** Object:  View [dbo].[vUserGroupMenu]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupMenu]
AS
SELECT     TOP (100) PERCENT UGM.ID, UGM.ID_UserGroup, UGM.ID_Menu, UGM.AllowEdit, UGM.Comment, M.Name AS Menu, PM.Name AS ParentMenu, M.DataSource, 
                      M.ReportFile, ug.Name AS UserGroup, UGM.AllowNew, UGM.AllowDelete,PM.ID AS ID_ParentMenu,pm.SeqNo
FROM         dbo.tUserGroup AS ug RIGHT OUTER JOIN
                      dbo.tUserGroupMenu AS UGM ON ug.ID = UGM.ID_UserGroup LEFT OUTER JOIN
                      dbo.tMenu AS PM RIGHT OUTER JOIN
                      dbo.tMenu AS M ON PM.ID = M.ID_Menu ON UGM.ID_Menu = M.ID
ORDER BY PM.SeqNo, ParentMenu, M.SeqNo, Menu
GO
