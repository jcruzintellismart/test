/****** Object:  View [dbo].[vzEmployeeBirthDayList]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeBirthDayList]
AS
SELECT e.ID AS ID_Employee,
       e.Code,
       p.Name AS Employee,
       dm.Name AS DepartmentName,
       e.ID_Department,
       c.ID AS ID_Company,
       pos.ID AS ID_Designation,
       e.IsActive,
       dem.Name AS Designation,
       c.Name AS CompanyName,
       p.BirthDate,
       MONTH(p.BirthDate) AS ID_Month,
       YEAR(p.BirthDate) AS [Year],
       c.Address CompanyAddress
FROM dbo.tEmployee e
    INNER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
    INNER JOIN dbo.tDepartment d ON e.ID_Department = d.ID
	INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
    INNER JOIN dbo.tCompany c ON e.ID_Company = c.ID
    INNER JOIN dbo.tDesignation pos ON e.ID_Designation = pos.ID
	INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = pos.ID_DesignationMaintenance
WHERE (e.ID_EmployeeStatus <> 5);
GO
