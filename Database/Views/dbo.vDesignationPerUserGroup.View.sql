/****** Object:  View [dbo].[vDesignationPerUserGroup]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vDesignationPerUserGroup]
AS

SELECT 
ug.ID ID_UserGroup
,ug.Name UserGroup
,c.ID ID_Company
,c.Name Company
,jc.ID ID_JobClass
,jcm.Name JobClass
,dg.ID ID_Designation
,dgm.Name Designation
FROM dbo.tUserGroupDesignation ugs
INNER JOIN dbo.tDesignation dg ON dg.ID = ugs.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dgm ON dgm.ID = dg.ID_DesignationMaintenance
INNER JOIN dbo.tJobClass jc ON jc.ID = dg.ID_JobClass
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
INNER JOIN dbo.tStore AS s ON s.ID = jc.ID_Store
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
LEFT OUTER JOIN dbo.tUserGroup ug ON ug.ID = ugs.ID_UserGroup
GO
