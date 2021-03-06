/****** Object:  View [dbo].[vUserAccount]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserAccount]
as


SELECT  u.ID,u.LogInName,u.LastPasswordChangeDate,p.EmailAddress,ID_UserGroup,ug.Name 'UserGroup',u.IsFirstLog
	FROM dbo.tUser u
		Left JOIN dbo.tEmployee e ON u.ID_Employee = e.ID
		Left JOIN dbo.tPersona p ON e.ID_Persona = p.ID
		Left JOIN dbo.tUserGroup ug ON u.ID_UserGroup = ug.ID
		
		WHERE u.IsActive = 1 --AND u.ID_UserType = 2
GO
