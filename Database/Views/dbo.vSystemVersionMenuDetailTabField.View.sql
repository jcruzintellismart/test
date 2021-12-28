/****** Object:  View [dbo].[vSystemVersionMenuDetailTabField]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemVersionMenuDetailTabField] 
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
,s.ID_MenuDetailTabField
,s.ID_SystemVersionMenuDetailTab
,m.Name MenuDetailTabField


FROM 
	tSystemVersionMenuDetailTabField s LEFT OUTER JOIN  
	dbo.tMenuDetailTabField m ON m.ID = s.ID_MenuDetailTabField
GO
