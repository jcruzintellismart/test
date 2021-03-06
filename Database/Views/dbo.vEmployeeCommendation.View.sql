/****** Object:  View [dbo].[vEmployeeCommendation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeCommendation]
AS
SELECT cm.ID,
       cm.ID_Employee,
       cc.ID_CommendationType,
       cm.Date,
       cm.SeqNo,
       cm.IsActive,
       cm.Comment,
       e.ID_Persona,
       e.ID_Company,
       e.ID_Branch,
       e.ID_Department,
       e.ID_EmployeeStatus,
       e.ID_WeeklySchedule,
       p.Name AS Employee,
       c.Name AS Company,
       bm.Name AS Branch,
       dm.Name AS Department,
       es.Name AS EmployeeStatus,
       w.Name AS WeeklySchedule,
       p.ImageFile,
       cm.ID_Commendation,
       cm.Weight,
       ct.Name AS CommendationType,
       cc.Name AS Commendation,
       p.Name,
       p.LastName,
       p.FirstName,
       e.Code AS EmployeeCode
FROM dbo.tCommendationType AS ct
INNER JOIN dbo.tCommendation AS cc ON ct.ID = cc.ID_CommendationType
RIGHT OUTER JOIN dbo.tEmployee AS e
RIGHT OUTER JOIN dbo.tEmployeeCommendation AS cm ON e.ID = cm.ID_Employee
	ON cc.ID = cm.ID_Commendation
LEFT OUTER JOIN dbo.tPersona AS p ON e.ID_Persona = p.ID
LEFT OUTER JOIN dbo.tBranch AS b ON e.ID_Branch = b.ID
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tCompany AS c ON e.ID_Company = c.ID
LEFT OUTER JOIN dbo.tDepartment AS d ON e.ID_Department = d.ID
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tEmployeeStatus AS es ON e.ID_EmployeeStatus = es.ID
LEFT OUTER JOIN dbo.tWeeklySchedule AS w ON e.ID_WeeklySchedule = w.ID;
GO
