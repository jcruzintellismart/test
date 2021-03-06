/****** Object:  View [dbo].[vUserFavouriteWebMenu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserFavouriteWebMenu]
AS
SELECT  ufwm.ID ,
        ufwm.ID_User ,
        ufwm.ID_WebMenus ,
		u.Name AS [User] ,
		ISNULL(wm.Label, wm.Name) AS WebMenus,
		'#/' + REPLACE(wm.Name,' ', '-') + '/' AS url ,
		'red' bgcolor ,
		'white' color,
		'<i class=\''fa fa-music\''></i>' icon  FROM dbo.tUserFavouriteWebMenu ufwm
		LEFT JOIN dbo.vUser u ON ufwm.ID_User = u.ID
		LEFT JOIN dbo.vWebMenus wm ON ufwm.ID_WebMenus = wm.ID
GO
