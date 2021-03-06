/****** Object:  View [dbo].[vUserGroupWebMenus]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupWebMenus]   
AS  
SELECT
	t.ID
,	t.ID_UserGroup
,	ug.Name AS UserGroup
,	t.ID_WebMenus
,	wm.Name AS WebMenus
,	pwm.ID AS ID_ParentWebMenu
,	pwm.Name AS ParentWebMenu
FROM tUserGroupWebMenus t 
LEFT JOIN dbo.tUserGroup AS ug ON ug.ID = t.ID_UserGroup 
LEFT JOIN dbo.tWebMenus AS wm ON wm.ID = t.ID_WebMenus
LEFT JOIN dbo.tWebMenus AS pwm ON pwm.ID = wm.ID_WebMenus
--LEFT JOIN dbo.tWebSystemApplicationMenu wsam ON wsam.ID_WebMenu = wm.ID
--LEFT JOIN dbo.tWebSystemApplication wsa ON wsa.ID = wsam.ID_WebSystemApplication
GO
