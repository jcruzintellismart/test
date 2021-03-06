/****** Object:  View [dbo].[vUserGroupDesignation]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vUserGroupDesignation]
AS
SELECT ugd.ID,
       ugd.ID_UserGroup,
       ug.Name,
       ugd.Comment,
       ugd.ID_Designation,
       dem.Name AS Designation,
       c.Name AS Company,
       cr.ID_Company,
       jcm.Name AS JobClass,
       d.ID_JobClass,
	   d.ID_Department,
	   dm.Name Department,
	   jc.ID_Store,
	   sm.Name AS Store
FROM dbo.tDesignation AS d
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = d.ID_DesignationMaintenance
INNER JOIN dbo.tJobClass AS jc ON d.ID_JobClass = jc.ID
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
LEFT OUTER JOIN dbo.tDepartment AS d2 ON d2.ID = d.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d2.ID_DepartmentMaintenance
INNER JOIN dbo.tStore AS s ON s.ID = jc.ID_Store
INNER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
RIGHT OUTER JOIN dbo.tUserGroupDesignation AS ugd ON d.ID = ugd.ID_Designation
LEFT OUTER JOIN dbo.tUserGroup AS ug ON ugd.ID_UserGroup = ug.ID
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tDistrict AS dis ON dis.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = dis.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
--WHERE ug.id NOT IN(1,2)
GO
