/****** Object:  View [dbo].[vWebMenuTabs]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuTabs] 
AS
	SELECT	
		wmt.ID ,
		wmt.Name ,
		wmt.ID_WebMenus ,
		wmt.ImageFile ,
		wmt.SeqNo ,
		wmt.IsActive ,
		wmt.Description ,
		wmt.Comment,
		wmt.GetNumberOfColumns,
		wm.Name AS WebMenus
	FROM tWebMenuTabs wmt
	LEFT JOIN dbo.tWebMenus wm ON wmt.ID_WebMenus = wm.ID
GO
