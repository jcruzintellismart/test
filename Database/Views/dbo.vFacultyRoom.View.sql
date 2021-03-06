/****** Object:  View [dbo].[vFacultyRoom]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFacultyRoom] 
AS
SELECT	
	fr.[ID]
,	fr.[Code]
,	fr.[Name]
,	fr.[IsActive]
,	fr.[ID_Company]
,	c.Name Company
FROM 
	tFacultyRoom fr
	LEFT OUTER JOIN dbo.tCompany c ON c.ID = fr.ID_Company
GO
