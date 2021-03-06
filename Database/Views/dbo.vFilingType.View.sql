/****** Object:  View [dbo].[vFilingType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFilingType]   
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
,	t.ID_MenuApproval
,	wma.Name WebMenuApproval
,	t.ID_MenuFiling
,	wmf.Name WebMenuFiling
,	t.ID_WebMenuPending
--,	wmp.Name WebMenuPending
, t.ShowInIONSDashbaord
,t.IconFontAwesome
FROM tFilingType t 
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy    
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tMenu wma ON wma.ID = t.ID_MenuApproval
LEFT JOIN dbo.tMenu wmf ON wmf.ID = t.ID_MenuFiling
--LEFT JOIN dbo.tWebMenus wmp ON wmp.ID = t.ID_WebMenuPending
GO
