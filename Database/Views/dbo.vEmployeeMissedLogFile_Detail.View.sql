/****** Object:  View [dbo].[vEmployeeMissedLogFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeMissedLogFile_Detail] 
AS
SELECT	
mld.ID
,mld.ID_EmployeeMissedLogFile
,mld.ID_Employee
,mld.EmployeeCode
,per.Name Employee
,mld.LogDate
,mld.LogTime
,mld.Comment
,mld.LogType
,mld.Reason
,mld.ComputedTime
,mld.IsApplied
,dbo.fIsValidMissLogFile_Detail(mld.ID) Valid
FROM 
tEmployeeMissedLogFile_Detail mld
INNER JOIN dbo.tEmployee e ON e.Code = mld.EmployeeCode
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
