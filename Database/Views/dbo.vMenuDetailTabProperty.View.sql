/****** Object:  View [dbo].[vMenuDetailTabProperty]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE ViEW [dbo].[vMenuDetailTabProperty] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[SeqNo] 
,	[IsActive]
,	[Comment]
,	Value
,ID_MenuDetailTab
FROM 
	tMenuDetailTabProperty
GO
