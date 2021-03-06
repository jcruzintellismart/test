/****** Object:  View [dbo].[vEmployeeTemplateFileDetail_EducationalBackground]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeTemplateFileDetail_EducationalBackground] 
AS
SELECT	
	[ID]
	,dbo.fIsValidEducationalBackground(ID) AS Valid
	,ID_EmployeeTemplateFile
	,EmployeeCode
	,School
	,SchoolAddress
	,SchoolLevel
	,Course
	,YearFrom
	,YearTo
	,EducationalAttainmentDegree
	,EducationalAttainmentStatus
	
FROM 
	tEmployeeTemplateFileDetail_EducationalBackground
GO
