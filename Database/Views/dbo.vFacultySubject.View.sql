/****** Object:  View [dbo].[vFacultySubject]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFacultySubject] 
AS
SELECT	
	fs.[ID]
,	fs.[Code]
,	fs.[Name]
,	fs.[IsActive]
,   fs.[ID_Company]
,	c.Name Company
FROM 
	tFacultySubject fs
	LEFT OUTER JOIN dbo.tCompany c ON c.ID = fs.ID_Company
GO
