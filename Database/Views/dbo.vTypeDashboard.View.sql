/****** Object:  View [dbo].[vTypeDashboard]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE ViEW [dbo].[vTypeDashboard] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[ImageFile]
--,	[ImagePath]
,	[SeqNo] 
,	[IsActive]
,	[Comment]
FROM 
	tTypeDashboard
GO
