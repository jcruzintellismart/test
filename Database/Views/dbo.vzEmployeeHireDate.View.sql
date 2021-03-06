/****** Object:  View [dbo].[vzEmployeeHireDate]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vzEmployeeHireDate]
AS
SELECT e.ID_Company
,e.ID_Department
,e.ID [ID_Employee]
,e.StartDate
,dm.Name [Department]
,e.ID_Designation
,com.Name[Company]
,e.Code [EmployeeCode]
,per.Name [Employee]
,dem.Name [Position]
,es.Name [EmployeeStatus]
,e.StartDate [Date]
,e.ID_Store --Erron 12/15/2020
 FROM  dbo.tEmployee e
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
INNER JOIN dbo.tDepartment  dep ON dep.ID = e.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
INNER JOIN dbo.tCompany com ON com.ID = e.ID_Company
INNER JOIN dbo.tDesignation des ON des.ID = e.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance
LEFT JOIN dbo.tEmployeeStatus es ON es.ID = e.ID_EmployeeStatus
WHERE e.IsActive = 1
GO
