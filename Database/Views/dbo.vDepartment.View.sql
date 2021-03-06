/****** Object:  View [dbo].[vDepartment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vDepartment]
AS
SELECT 
	dept.ID
,	dept.IsActive
,	div.Name AS Division
,	dept.ID_Division
,	dept.ID_HeadDesignation
,	headm.Name AS DepartmentHead
,	headm.Name AS HeadDesignation
,	dept.ID_Branch
,	dm.Name + ' (' + c.Name + ')(' + bm.Name + ')(' + div.Name + ')' AS CompanyBranchDivisionDept
,	dm.Name + ' (' + bm.Name + ')(' + div.Name + ')' AS BranchDivisionDept
,	dm.Name + ' (' + c.Name + ')(' + sm.Name + ')(' + div.Name + ')' AS CompanyStoreDivisionDept
,	dm.Name + ' (' + sm.Name + ')(' + div.Name + ')' AS StoreDivisionDept
,	dm.Name + ' (' + div.Name + ')' AS DivisionDept
,	dept.series
,   dept.ID_Employee, p.LastName + ', ' + p.FirstName AS Employee
,	dept.ID_OrgManagement
,	dem.Name OrgManagement
,	per1.Name OrgManagementEmp
,	dept.ID_DepartmentMaintenance
,	dm.Name DepartmentMaintenance
,	cr.ID_Company
,	c.Name Company
,	jc.ID_Store
,	sm.Name Store
,	dept.ID_JobClass
,	jcm.Name JobClass
,	dm.Name
,	dm.Code
FROM dbo.tDepartment dept
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dept.ID_DepartmentMaintenance
INNER JOIN dbo.tJobClass AS jc ON jc.ID = dept.ID_JobClass
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
INNER JOIN dbo.tStore AS s ON s.ID = jc.ID_Store
INNER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
LEFT JOIN dbo.tBranch AS b ON b.ID = dept.ID_Branch
LEFT JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
LEFT JOIN  dbo.tEmployee AS e ON e.ID = dept.ID_Employee
LEFT JOIN  dbo.tPersona AS p ON p.ID = e.ID_Persona 
LEFT JOIN dbo.tDesignation head ON head.ID = dept.ID_HeadDesignation
LEFT JOIN dbo.tDesignationMaintenance AS headm ON headm.ID = head.ID_DesignationMaintenance
LEFT JOIN dbo.tDivision div ON div.ID = dept.ID_Division
LEFT JOIN dbo.tOrgManagement org ON org.ID = dept.ID_OrgManagement
LEFT JOIN dbo.tDesignation de ON de.ID = org.ID_Designation
LEFT JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = de.ID_DesignationMaintenance
LEFT JOIN dbo.tEmployee e1 ON e1.ID = org.ID_Employee
LEFT JOIN dbo.tPersona per1 ON per1.ID = e1.ID_Persona
GO
