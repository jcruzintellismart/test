/****** Object:  View [dbo].[vAccountNumberType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAccountNumberType] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[Comment]
, NULL SeqNo
FROM 
	tAccountNumberType
GO
