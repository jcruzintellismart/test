/****** Object:  View [dbo].[vWebMenuWidgetAssignmentUserGroup]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuWidgetAssignmentUserGroup]     
AS    
SELECT     
	t.[ID]  
,	t.[ID_WebMenuWidgetAssignment] 
,	t.ID_UserGroup 
FROM tWebMenuWidgetAssignmentUserGroup t   
LEFT JOIN dbo.tUserGroup ug ON ug.ID = t.ID_UserGroup
GO
