/****** Object:  View [dbo].[vWebMenuLinksAssignment2]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuLinksAssignment2]     
AS    
SELECT     
	t.[ID]  
,	ISNULL(t.[ImageFile], wl.ImageFile) ImageFile
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
,	t.ID_WebMenuLinks
,	wl.Name WebMenuLinks
,	ISNULL(t.Comment, wl.Comment) WebMenuLinksDesc
,	wl.ID_WebMenus ID_TargetWebMenus
,	wlm.Name TargetWebMenus
,	wl.ID_WebMenuLinkTypes
,	wlt.Name WebMenuLinkTypes
,	t.MenuFilter
,	wl.IsShowCount
,	t.Label
FROM tWebMenuLinksAssignment t   
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy      
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tWebMenus wm ON wm.ID = t.ID_WebMenus
LEFT JOIN dbo.tWebMenuLinks wl ON wl.ID = t.ID_WebMenuLinks
LEFT JOIN dbo.tWebMenus wlm ON wlm.ID = wl.ID_WebMenus
LEFT JOIN dbo.tWebMenuLinkTypes wlt ON wlt.ID = wl.ID_WebMenuLinkTypes
GO
