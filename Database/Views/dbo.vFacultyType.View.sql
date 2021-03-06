/****** Object:  View [dbo].[vFacultyType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFacultyType] 
AS
SELECT	
	ft.[ID]
,	ft.[Code]
,	ft.[Name] 
,	ft.[IsActive]
,	ft.[ID_Company]
,	ft.ID_FacultyLoadParameter
,	c.Name Company
,	flp.Name FacultyLoadParameter
FROM 
	tFacultyType ft
	LEFT OUTER JOIN dbo.tCompany c ON c.ID = ft.ID_Company
	LEFT OUTER JOIN dbo.tFacultyLoadParameter flp ON flp.ID = ft.ID_FacultyLoadParameter
GO
