/****** Object:  View [dbo].[vWebMenuWidgetAssignment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuWidgetAssignment]     
AS    
SELECT     
	t.[ID]  
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
,	t.[ID_WebMenus]  
,	wm.Name WebMenus
,	t.ID_WebMenuWidgets
,	ww.Name WebMenuWidgets
,	t.ID_WebMenuWidgetPosition
,	wp.NAME WebMenuWidgetPosition
,	ISNULL(ww.ID_WebMenuWidgetTypes, 0) ID_WebMenuWidgetTypes
,	ISNULL(wwt.Name, 'Hard Code') WebMenuWidgetTypes
,	ww.Datasource
FROM tWebMenuWidgetAssignment t   
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy      
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tWebMenus wm ON wm.ID = t.ID_WebMenus
LEFT JOIN dbo.tWebMenuWidgets ww ON ww.ID = t.ID_WebMenuWidgets
LEFT JOIN dbo.vWebMenuWidgetPosition wp ON wp.ID = t.ID_WebMenuWidgetPosition
LEFT JOIN dbo.tWebMenuWidgetTypes wwt ON wwt.ID = ww.ID_WebMenuWidgetTypes
GO
