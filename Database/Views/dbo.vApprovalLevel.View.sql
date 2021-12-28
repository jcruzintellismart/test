/****** Object:  View [dbo].[vApprovalLevel]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vApprovalLevel] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[ImageFile]
--,	[ImagePath]
,	[SeqNo] 
,	[IsActive]
,	[ID_Company]
,	[Comment]
,	[ID_Original]
,	[ID_Server]
,	[DateModified]
FROM 
	tApprovalLevel
GO
