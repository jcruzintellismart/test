/****** Object:  View [dbo].[vWorkCredit]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWorkCredit] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[SeqNo] 
,	[IsActive]
,	[Comment]
FROM 
	tWorkCredit
GO
