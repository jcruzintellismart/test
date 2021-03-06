/****** Object:  View [dbo].[vWebMenuColumn_Validation]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuColumn_Validation]   
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
,	t.ID_WebMenuColumns
,	t.ValidationMessage
,	t.ID_ColumnValidation
,	mc.Name as WebMenuColumns
,	cv.Name AS ColumnValidation
,	mc.ID_WebMenuControlTypes
,	t.FieldCompare
FROM tWebMenuColumn_Validation t 
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy    
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tWebMenuColumns mc ON mc.ID = t.ID_WebMenuColumns
LEFT JOIN dbo.tColumnValidation cv ON cv.ID = t.ID_ColumnValidation
GO
