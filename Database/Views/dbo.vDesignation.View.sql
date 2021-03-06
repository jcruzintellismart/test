/****** Object:  View [dbo].[vDesignation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vDesignation]
AS
SELECT D.ID,
       D.IsActive,
       D.DateTimeCreated,
       D.DateTimeModified,
       CG.Name AS CompanyGroup,
       D.ID_JobClass,
       jcm.Name AS JobClass,
       D.GraceMinutes,
       D.Budgeted,
       D.[Current],
       D.TurnOverDays,
       D.MinOtHours,
       D.JobSummary,
       D.MonthlyRate,
       D.DailyRate,
       D.AutoApproveHoliday,
       D.ID_UserGroup,
       ug.Name AS UserGroup,
       D.Actual,
       D.Vacancy,
       D.MaxPRFApprover,
       D.MaxInterviewApprover,
	   D.ID_Department,
	   dm2.Name Department,
	   jc.ID_Store,
	   sm.Name Store,
	   cr.ID_Company,
	   c.Name Company,
	   d.ID_DesignationMaintenance,
	   dm.Name DesignationMaintenance,
	   dm.Name,
	   dm.Code
FROM dbo.tDesignation AS d
INNER JOIN dbo.tDesignationMaintenance AS dm ON dm.ID = d.ID_DesignationMaintenance
INNER JOIN dbo.tDepartment AS dept ON dept.ID = d.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm2 ON dm2.ID = dept.ID_DepartmentMaintenance
INNER JOIN dbo.tJobClass AS jc ON jc.ID = d.ID_JobClass
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
INNER JOIN dbo.tStore AS s ON s.ID = jc.ID_Store
INNER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tDistrict AS dis ON dis.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = dis.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
LEFT OUTER JOIN dbo.tUserGroup AS ug ON D.ID_UserGroup = ug.ID
LEFT OUTER JOIN dbo.tCompanyGroup AS CG ON C.ID_CompanyGroup = CG.ID
--LEFT OUTER JOIN
--(
--    SELECT e.ID_Designation,
--            d.ID_Company,
--            COUNT(e.ID) AS Vacancy2
--    FROM dbo.tEmployee AS e
--        LEFT OUTER JOIN dbo.tDesignation AS d
--            ON e.ID_Designation = d.ID
--    GROUP BY e.ID_Designation,
--                d.ID_Company
--) AS a ON D.ID = a.ID_Designation AND D.ID_Company = a.ID_Company
GO
