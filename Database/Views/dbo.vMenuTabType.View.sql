/****** Object:  View [dbo].[vMenuTabType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE ViEW [dbo].[vMenuTabType] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[SeqNo] 
,	[IsActive]
,	[Comment]
FROM 
	tMenuTabType
GO
