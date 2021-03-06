/****** Object:  View [dbo].[vTimekeepingItem]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTimekeepingItem] 
AS
SELECT	
	ti.ID
,	ti.Code
,	ti.Name
,	ti.ImageFile
--,	ti.ImagePath
,	ti.SeqNo
,	ti.IsActive
,	ti.Comment
,	ti.ID_TimekeepingItemGroup
,	tig.Name TimekeepingItemGroup
,	ti.ID_TimekeepingItemType
,	tit.Name TimekeepingItemType, ti.HCode
FROM tTimekeepingItem ti
LEFT JOIN dbo.tTimekeepingItemGroup AS tig ON tig.ID = ti.ID_TimekeepingItemGroup
LEFT JOIN dbo.tTimekeepingItemType AS tit ON tit.ID = ti.ID_TimekeepingItemType
GO
