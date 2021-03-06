/****** Object:  View [dbo].[vSystemVersionMenuTabField]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemVersionMenuTabField] 
AS
SELECT	
	s.[ID]
,	s.[Code]
,	s.[Name]
,	s.[ImageFile]
--,	[ImagePath]
,	s.[SeqNo] 
,	s.[IsActive]
,	s.[Comment]
,s.ID_MenuTabField
,s.ID_SystemVersionMenuTab
,m.Name MenuTabField	
,s.DefaultValue
,s.[ReadOnly]
FROM 
	tSystemVersionMenuTabField s LEFT OUTER JOIN 
	dbo.tMenuTabField m ON m.ID = s.ID_MenuTabField
GO
