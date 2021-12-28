/****** Object:  View [dbo].[vFacultySemester]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFacultySemester] 
AS
SELECT	
	fs.[ID]
,	fs.[Code]
,	fs.[Name]
,	fs.[IsActive]
,	fs.[ID_Company]
,	fs.StartDate
,	fs.EndDate
,	fs.Year
,	c.Name Company

FROM 
	tFacultySemester fs
	LEFT OUTER JOIN dbo.tCompany c ON c.ID = fs.ID_Company
GO
