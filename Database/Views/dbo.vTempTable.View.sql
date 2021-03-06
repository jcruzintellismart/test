/****** Object:  View [dbo].[vTempTable]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTempTable]   
AS  
SELECT   
	t.[ID]
,	t.[Code]
,	t.[ImageFile]
,	t.[SeqNo]
,	t.[IsActive]
,	t.[Comment]
,	t.[DateTimeCreated]
,	t.[ID_CreatedBy]
,	t.[DateTimeModified]
,	t.[ID_ModifiedBy]
,	cb.[Name] AS CreatedBy
,	mb.[Name] AS ModifiedyBy
,	t.[VarCharColumn01]
,	t.[VarCharColumn02]
,	t.[VarCharColumn03]
FROM tTempTable t 
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy    
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
GO
