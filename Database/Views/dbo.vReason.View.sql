/****** Object:  View [dbo].[vReason]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vReason] 
AS
SELECT	
	r.[ID]
,	r.[Code]
,	r.[Name]
,	r.[ImageFile]
--,	r.[ImagePath]
,	r.[SeqNo] 
,	r.[IsActive]
,	r.[Comment]
,	r.[ID_FilingType]
,	ft.Name [FilingType]
FROM 
	tReason r
	LEFT JOIN dbo.tFilingType ft ON ft.ID = r.ID_FilingType
GO
