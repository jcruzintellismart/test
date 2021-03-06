/****** Object:  View [dbo].[vSystemVersionMenuDetailTab]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemVersionMenuDetailTab] 
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
,s.ID_MenuDetailTab
,s.ID_SystemVersionMenu
,m.Name MenuDetailTab
FROM 
	tSystemVersionMenuDetailTab s LEFT OUTER JOIN 
	dbo.tMenuDetailTab m ON m.ID = s.ID_MenuDetailTab
GO
