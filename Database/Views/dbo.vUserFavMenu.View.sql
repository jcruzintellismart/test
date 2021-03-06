/****** Object:  View [dbo].[vUserFavMenu]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserFavMenu]
AS
SELECT     ufm.ID, ufm.ID_User, ufm.ID_Menu, dbo.tUser.Name AS [User], m.Name AS Menu, ufm.SeqNo, ufm.Comment, m.ImageFile, m.ID_ApplicationType
FROM         dbo.tUserFavMenu AS ufm LEFT OUTER JOIN
                      dbo.tMenu AS m ON ufm.ID_Menu = m.ID LEFT OUTER JOIN
                      dbo.tUser ON ufm.ID_User = dbo.tUser.ID
GO
