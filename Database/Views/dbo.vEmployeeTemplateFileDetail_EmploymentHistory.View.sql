/****** Object:  View [dbo].[vEmployeeTemplateFileDetail_EmploymentHistory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeTemplateFileDetail_EmploymentHistory] 
AS
SELECT	
	[ID]
	,dbo.fIsValidEmploymentHistoryInfo(ID) AS Valid
	,ID_EmployeeTemplateFile
	,EmployeeCode
	,PreviousEmployer
	,PreviousEmployerSpecialization
	,PreviousEmployerCompanyIndustry
	,PreviousDepartment
	,PreviousDesignation
	,PreviousJobClass
	,PreviousJobRole
	,PreviousEmployerPositionLevel
	,StartDate
	,EndDate
	,PreviousMonthlyRate
	,PreviousEmployerNo
	,PreviousEmployerAddress
	,PreviousEmployerZipCode
	,PreviousEmployerImmediateSupervisor
	,PreviousEmployerContactNo
	,PreviousEmployerTIN
	,PreviousEmployerBenefits
	,ReasonForLeaving
	,YearsOfExperience

FROM 
	tEmployeeTemplateFileDetail_EmploymentHistory
GO
