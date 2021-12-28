/****** Object:  View [dbo].[vUserGroupWebMenusUser]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vUserGroupWebMenusUser]
AS
SELECT  ugwmu.ID_UserGroup ,
        ugwmu.ID_WebMenus ,
        ugwmu.ID ,
		wm.Name AS WebMenus FROM dbo.tUserGroupWebMenusUser ugwmu
		LEFT JOIN dbo.tWebMenus wm ON ugwmu.ID_WebMenus = wm.ID
GO
