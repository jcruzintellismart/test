/****** Object:  View [dbo].[vWebMenuButton_Validation]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuButton_Validation]   
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
,	t.ID_WebMenuButtons
,	t.CommandText
,	t.ValidationMessage
,	wmb.Name as WebMenuButtons
,	t.ID_WebMenuButton_Validation_Type
,	wmv.Name AS WebMenuButton_Validation_Type
,   t.ID_ValidationOn
,	vo.Name AS ValidationON
,	wmb.ID_WebMenus
FROM tWebMenuButton_Validation t 
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy    
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tWebMenuButtons wmb ON wmb.ID = t.ID_WebMenuButtons
LEFT JOIN dbo.tWebMenuButton_Validation_Type wmv ON wmv.ID = t.ID_WebMenuButton_Validation_Type
LEFT JOIN dbo.tValidationON vo ON vo.ID = t.ID_ValidationON
GO
