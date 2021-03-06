/****** Object:  View [dbo].[vAlertTypeUserGroup]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlertTypeUserGroup] 
AS
SELECT	
atug.ID
,atug.Comment
,atug.IsActive
,atug.ID_AlertType
,at.Name AS AlertType
,atug.ID_UserGroup
,ug.Name AS UserGroup


FROM 

	tAlertTypeUserGroup atug   LEFT OUTER JOIN 
	dbo.tUserGroup ug ON ug.ID = atug.ID_UserGroup LEFT OUTER JOIN 
	tAlertType at ON at.ID = atug.ID_UserGroup
GO
