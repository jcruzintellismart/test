/****** Object:  View [dbo].[vUserMenu]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserMenu] 
AS
SELECT	
	[ID]
,ID_User
,ID_Menu
,GUID_Parent
,GroupCount
FROM 
	tUserMenu
GO
