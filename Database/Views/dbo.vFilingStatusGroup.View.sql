/****** Object:  View [dbo].[vFilingStatusGroup]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vFilingStatusGroup] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,NULL SeqNo

FROM 
	tFilingStatusGroup
GO
