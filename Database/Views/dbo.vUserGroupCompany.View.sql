/****** Object:  View [dbo].[vUserGroupCompany]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupCompany]
AS
SELECT     ugc.ID, ugc.Comment, ugc.ID_UserGroup, ugc.ID_Company, ug.Name AS UserGroup, c.Name AS Company, c.SeqNo
FROM         dbo.tUserGroupCompany AS ugc LEFT OUTER JOIN
                      dbo.tUserGroup AS ug ON ugc.ID_UserGroup = ug.ID LEFT OUTER JOIN
                      dbo.tCompany AS c ON ugc.ID_Company = c.ID
GO
