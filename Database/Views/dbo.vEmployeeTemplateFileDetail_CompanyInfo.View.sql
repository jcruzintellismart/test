/****** Object:  View [dbo].[vEmployeeTemplateFileDetail_CompanyInfo]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeTemplateFileDetail_CompanyInfo] 
AS
SELECT	
	[ID]
	,dbo.fIsValidCompanyInfo(ID) AS Valid
	,ID_EmployeeTemplateFile
	,EmployeeCode
	,Company
	,Address
	,ZipCode
	,TIN
	,SSSNo
	,PhilHealthNo
	,HDMFNo
	,Branch
	,Division
	,Department
	,Designation
	,EmployeeStatus
	,JobClass
	,CostCenter
	,IsRequiredToLog
	,DateHired
	,DateRegularized
	,EndDate
	,PayrollScheme
	,PayrollFrequency
	,PayrollStatus
	,MonthlySalary
	,DailySalary
	,HourlySalary
	,DaysperYear
	,DaysperMonth
	,HoursperDay
	,CompanyBank
	,CompanyBankNo
	,AcctNo
	,CompanyBank2
	,CompanyBankNo2
	,AcctNo2
	,Email
FROM 
	tEmployeeTemplateFileDetail_CompanyInfo
GO
