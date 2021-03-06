/****** Object:  View [dbo].[vzMissedLogReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzMissedLogReport]
AS
SELECT DISTINCT
e.ID ID_Employee
,e.Code EmpCode
,per.Name Employee
,c.ID ID_Company
,c.Name Company
,dm.ID ID_Department
,dm.Name Department
,ml.workdate [Date]
,x.LogTime ComputedTimeIn
,z.LogTime ComputedTimeOut
,mld.LogDate StartDate
,mld.LogDate EndDate
,b.ID ID_Branch
,bm.Name Branch
FROM tEmployeeMissedLog ml
INNER JOIN dbo.tEmployeeMissedLog_Detail mld ON mld.ID_EmployeeMissedLog = ml.ID
INNER JOIN dbo.tEmployee e ON e.ID = ml.ID_Employee
LEFT OUTER JOIN dbo.tPersona per  ON per.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tBranch b ON b.ID = e.ID_Branch
LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance 

LEFT JOIN (SELECT  DISTINCT ml.ID_Employee,	mld.LogTime		, mld.LogDate			 
				FROM tEmployeeMissedLog ml
				INNER JOIN dbo.tEmployeeMissedLog_Detail mld ON mld.ID_EmployeeMissedLog = ml.ID 
				--WHERE mld.LogDate BETWEEN StartDate AND EndDate 
				----AND ml.ID_FilingStatus = 2  
				--AND ID_AttendanceLogType = 1 
				--AND dbo.fEmployeeRights(@ID_Session,ml.ID_Employee) = 1
				) x ON x.ID_Employee = e.ID  AND x.LogDate = ml.WorkDate

LEFT JOIN (SELECT  DISTINCT ml.ID_Employee,	mld.LogTime				, mld.LogDate			 
				FROM tEmployeeMissedLog ml
				INNER JOIN dbo.tEmployeeMissedLog_Detail mld ON mld.ID_EmployeeMissedLog = ml.ID 
				--WHERE mld.LogDate BETWEEN StartDate AND EndDate 
				----AND ml.ID_FilingStatus = 2  
				--AND ID_AttendanceLogType = 2
				--AND dbo.fEmployeeRights(@ID_Session,ml.ID_Employee) = 1
				) z ON z.ID_Employee = e.ID  AND z.LogDate = ml.WorkDate
GO
