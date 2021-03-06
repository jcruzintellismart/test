/****** Object:  View [dbo].[vSystemVersionMenuTab]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemVersionMenuTab] 
AS
SELECT	
	s.[ID]
,	s.[Code]
,	s.[Name]
,	s.[ImageFile]
--,	[ImagePath]
,	s.[SeqNo] 
,	s.[IsActive]
, s.ID_SystemVersionMenu
,s.ID_MenuTab
,	s.[Comment]
,m.Name MenuTab
FROM 
	tSystemVersionMenuTab s LEFT OUTER JOIN 
	dbo.tMenuTab m ON m.ID = s.ID_MenuTab
GO
