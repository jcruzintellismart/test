/****** Object:  View [dbo].[vUserGroupMenuDetailTab]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupMenuDetailTab]
AS
SELECT     udt.ID, udt.Code, udt.Name, udt.ImageFile, udt.SeqNo, udt.IsActive, udt.Comment, udt.ID_UserGroupMenu, udt.ID_MenuDetailTab, md.Name AS MenuDetailTab, 
                      ugm.ID_UserGroup
FROM         dbo.tUserGroupMenuDetailTab AS udt LEFT OUTER JOIN
                      dbo.tUserGroupMenu AS ugm ON udt.ID_UserGroupMenu = ugm.ID LEFT OUTER JOIN
                      dbo.tMenuDetailTab AS md ON udt.ID_MenuDetailTab = md.ID
GO
