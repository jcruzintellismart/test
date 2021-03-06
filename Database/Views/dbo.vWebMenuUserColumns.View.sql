/****** Object:  View [dbo].[vWebMenuUserColumns]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vWebMenuUserColumns]   
AS  
	SELECT   
		t.ID ,
		t.ID_WebMenuColumns ,
		t.ID_User ,
		t.IsActive ,
		t.Seqno ,
		t.GroupSeqNo ,
		wmc.Name,
		wmt.ID_WebMenus,
		wmc.ID_WebMenuControlTypes,
		wmc.colDataType,
		wmc.Width,
		wmc.Label
	FROM tWebMenuUserColumns t 
	LEFT JOIN dbo.vWebMenuColumns wmc ON wmc.ID = t.ID_WebMenuColumns
	LEFT JOIN dbo.tWebMenuTabs wmt ON wmt.ID = wmc.ID_WebMenuTabs
GO
