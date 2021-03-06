/****** Object:  View [dbo].[vzResignedEmployee]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vzResignedEmployee] AS
SELECT e.ID_Company
,e.ID_Department
,com.Name [Company]
,e.ID [ID_Employee]
,e.StartDate
,dm.Name [Department]
,e.Code [EmployeeCode]
,per.Name [Employee]
,dm.Name [Position]
,e.ID_Designation
,e.EndDate 
,e.ID_EmployeeStatus
,es.Name [EmployeeStatus]
,e.EndDate [Date]
,e.ID_Store --Erron 12/15/2020
 FROM  dbo.tEmployee e
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
LEFT JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT JOIN dbo.tCompany com ON com.ID = e.ID_Company
LEFT JOIN dbo.tDesignation des ON des.ID = e.ID_Designation
LEFT JOIN dbo.tEmployeeStatus es ON es.ID = e.ID_EmployeeStatus
WHERE e.IsActive = 0--e.ID_EmployeeStatus = 5
GO
