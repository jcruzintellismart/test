/****** Object:  View [dbo].[vzEmployeeUndertime1]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeUndertime1]
AS
SELECT 
eds.ID
,eds.ID_Employee
,e.Code AS EmployeeCode
,per.Name AS Employee
,eds.Date
,eds.ID_DailySchedule
,ds.Name DailySchedule
,eds.UT
,dbo.fGetTimeIn(eds.ID_Employee,eds.Date,e.ID_Company) TimeIn
,dbo.fGetTimeOut(eds.ID_Employee,eds.Date,e.ID_Company) TimeOut
,e.ID_Company
,c.Name AS Company
,e.ID_Department
,dm.Name Department
,e.ID_Branch
,bm.Name AS Branch
,e.StartDate
,e.EndDate
FROM dbo.tEmployeeDailySchedule eds
LEFT JOIN dbo.tEmployee e ON e.ID = eds.ID_Employee
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tBranch br ON br.ID = e.ID_Branch
LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = br.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tCompany c ON c.ID = e.ID_Company
LEFT OUTER JOIN dbo.tDailySchedule ds ON ds.ID = eds.ID_DailySchedule
GO
