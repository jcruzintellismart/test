/****** Object:  View [dbo].[vCertification]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCertification]
AS
SELECT
e.ID ID_Employee
,e.ID_Company
,e.ID_Branch
,e.ID_Designation
,e.ID_Department
,p.Name Employee
,e.StartDate
,e.EndDate
,p.FirstName
,p.LastName
,p.ID_Gender
,c.Name Company
,bm.Name Branch
,dem.Name Designation
,dm.Name Department
,g.Name Gender
,e.IsActive
,c.Address CompanyAddress
FROM 
tEmployee e
INNER JOIN tCompany c ON c.ID = e.ID_Company
INNER JOIN tBranch br ON br.ID = e.ID_Branch
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = br.ID_BranchMaintenance
INNER JOIN tDesignation ds ON ds.ID = e.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = ds.ID_DesignationMaintenance
INNER JOIN tDepartment dep ON dep.ID = e.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
INNER JOIN tPersona p ON p.ID = e.ID_Persona
LEFT JOIn tGender g ON g.ID = p.ID_Gender
GO
