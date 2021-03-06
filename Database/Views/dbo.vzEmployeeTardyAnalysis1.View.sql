/****** Object:  View [dbo].[vzEmployeeTardyAnalysis1]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeTardyAnalysis1]
AS
SELECT 
		eds.ID,
		e.Code EmployeeCode,
		p.Name Employee,
		eds.Date,
		eds.TARDY,
		c.Name Company,
		dm.Name Department,
		c.Address CompanyAddress,
		bm.Name Branch,
		dbo.fGetTimeIn(eds.ID_Employee,eds.Date,e.ID_Company) TimeIn,
		dbo.fGetTimeOut(eds.ID_Employee,eds.Date,e.ID_Company) TimeOut,
		e.ID_Company,
		e.ID_Branch,
		e.ID_Department,
		e.ID_Designation,
		e.ID_EmployeeStatus,
		eds.ID_Employee,
		e.ID_Section,
		s.Name SECTION,
		eds.ActualTardy,
		e.IsActive,
		e.StartDate,
		e.EndDate,
		dem.Name,
		des.GraceMinutes
		--CASE WHEN(eds.ActualTardy - des.GraceMinutes) < 0 Then 0 Else eds.ActualTardy - des.GraceMinutes END  as Excess
FROM dbo.tEmployeeDailySchedule eds
LEFT JOIN dbo.tEmployee e ON e.ID = eds.ID_Employee
LEFT JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT JOIN dbo.tCompany c ON c.ID = e.ID_Company
LEFT JOIN dbo.tDepartment d ON d.ID = e.ID_Department
LEFT JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
LEFT JOIN dbo.tBranch b ON b.ID = e.ID_Branch
LEFT JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
LEFT JOIN dbo.tSection s ON s.ID = e.ID_Section
LEFT JOIN dbo.tDesignation des ON des.ID = e.ID_Designation
LEFT JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance
GO
