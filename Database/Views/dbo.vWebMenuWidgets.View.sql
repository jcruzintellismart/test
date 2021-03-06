/****** Object:  View [dbo].[vWebMenuWidgets]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuWidgets]     
AS    
SELECT     
	t.[ID]  
,	t.[Code]  
,	t.[Name]  
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
,	t.IsHideIfZero
,	t.ID_WebMenuWidgetTypes
,	wwt.Name WebMenuWidgetTypes
,	t.Datasource
FROM tWebMenuWidgets t   
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy      
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tWebMenuWidgetTypes wwt ON wwt.ID = t.ID_WebMenuWidgetTypes
GO
