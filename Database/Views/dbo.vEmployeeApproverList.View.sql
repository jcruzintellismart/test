/****** Object:  View [dbo].[vEmployeeApproverList]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeApproverList]
as

SELECT 
c.ID ID_Company
,c.Name Company
,e.ID_Department
,dm.Name Department
,e.ID ID_Employee
,e.NAme Employee
FROM vEmployee e
INNER JOIN dbo.tCompany c ON c.ID = e.ID_Company
LEFT  OUTER JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
WHERE e.IsActive = 1
GO
