/****** Object:  View [dbo].[vEmployeeTemplateFileDetail_Dependent]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeTemplateFileDetail_Dependent] 
AS
SELECT	
	[ID]
	,dbo.fIsValidDependent(ID) AS Valid
	,ID_EmployeeTemplateFile
	,EmployeeCode
	,DependentName
	,DependentRelationship
	,DependentBirthDate
	,DependentGender
	,DependentCivilStatus
	,isStudying
FROM 
	tEmployeeTemplateFileDetail_Dependent
GO
