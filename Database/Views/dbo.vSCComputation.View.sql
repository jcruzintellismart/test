/****** Object:  View [dbo].[vSCComputation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE ViEW [dbo].[vSCComputation] 
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
	tSCComputation
GO
