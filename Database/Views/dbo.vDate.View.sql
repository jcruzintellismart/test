/****** Object:  View [dbo].[vDate]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE ViEW [dbo].[vDate] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[Date]
,	[SeqNo] 
,	[Comment]
FROM 
	tDate
GO
