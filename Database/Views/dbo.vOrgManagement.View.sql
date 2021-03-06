/****** Object:  View [dbo].[vOrgManagement]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOrgManagement]   
AS  
SELECT   
		t.ID ,
        t.IsActive ,
        t.Comment ,
        cr.ID_Company ,
        c.Name Company,
        c.companycolor,
        dep.ID_Division ,
        div.Name Division ,
        t.ID_Department ,
        dm.Name Department,
        t.ID_Section ,
        sec.Name [Section],
        t.ID_Designation ,
        t.ID_JobClassGroup,
        jcg.Name JobClassGroup,
        jcg.color JobClassGroupColor,
        d.ID_JobClass,
        jcm.Name JobClass,
        dem.Name Designation,
        t.ID_OrgManagement,
        dm2.Name OrgManagement,
        t.ID_OrgManagement2,
        dm3.Name OrgManagement2,
        t.ID_Employee,
        per.Name Employee,
        per.ID ID_Persona,
        dem.Name AS [Name]
FROM tOrgManagement t 
LEFT JOIN dbo.tDepartment dep ON dep.ID = t.ID_Department
LEFT JOIN dbo.tDivision div ON div.ID = dep.ID_Division
LEFT JOIN dbo.tSection sec ON sec.ID = t.ID_Section
LEFT JOIN dbo.tDesignation d ON d.ID = t.ID_Designation
LEFT JOIN dbo.tJobClass jc ON jc.ID = d.ID_JobClass
LEFT JOIN dbo.tStore AS s ON s.ID = jc.ID_Store
LEFT JOIN dbo.tArea AS a ON a.ID = s.ID_Area
LEFT JOIN dbo.tDistrict AS dis ON dis.ID = a.ID_District
LEFT JOIN dbo.tCompanyRegion AS cr ON cr.ID = dis.ID_CompanyRegion
LEFT JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
LEFT JOIN dbo.tOrgManagement org ON org.ID = t.ID_OrgManagement
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = d.ID_DesignationMaintenance
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
LEFT JOIN dbo.tOrgManagement org2 ON org2.ID = t.ID_OrgManagement2
LEFT JOIN dbo.tDepartment dep2 ON dep2.ID = org.ID_Department
LEFT JOIN dbo.tDivision div2 ON div2.ID = dep2.ID_Division
LEFT JOIN dbo.tSection sec2 ON sec2.ID = org.ID_Section
LEFT JOIN dbo.tDesignation d2 ON d2.ID = org.ID_Designation
LEFT JOIN dbo.tDesignation d3 ON d3.ID = org2.ID_Designation
LEFT JOIN dbo.tJobClass jc2 ON jc2.ID = d2.ID_JobClass
INNER JOIN dbo.tDesignationMaintenance AS dm2 ON dm2.ID = d2.ID_DesignationMaintenance
INNER JOIN dbo.tDesignationMaintenance AS dm3 ON dm3.ID = d3.ID_DesignationMaintenance
LEFT JOIN dbo.tStore AS s2 ON s2.ID = jc2.ID_Store
LEFT JOIN dbo.tArea AS a2 ON a2.ID = s2.ID_Area
LEFT JOIN dbo.tDistrict AS dis2 ON dis2.ID = a2.ID_District
LEFT JOIN dbo.tCompanyRegion AS cr2 ON cr2.ID = dis2.ID_CompanyRegion
LEFT JOIN dbo.tCompany AS c2 ON c2.ID = cr2.ID_Company
LEFT JOIN dbo.tEmployee e ON e.ID = t.ID_Employee
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
LEFT JOIN dbo.tJobClassGroup jcg ON jcg.ID = t.ID_JobClassGroup
LEFT JOIN dbo.tJobClassGroup jcg2 ON jcg2.ID = org.ID_JobClassGroup
GO
