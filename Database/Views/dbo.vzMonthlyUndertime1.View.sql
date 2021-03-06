/****** Object:  View [dbo].[vzMonthlyUndertime1]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzMonthlyUndertime1]
AS

SELECT TOP 100 PERCENT 
e.Code AS EmployeeCode
, ps.FirstName
, ps.LastName
, dm.Name AS Department
, c.Name AS Company
, SUM(eds.UT) AS UnderTime
,  SUM(CASE WHEN UT > 0 THEN 1 ELSE 0 END) AS FreqLate
, e.ID AS ID_Employee
, c.ID AS ID_Company
, d.ID AS ID_Department
, s.Name AS [Section]
, e.ID_Section
,  e.IsActive
, MONTH(eds.[Date]) ID_Month
, YEAR(eds.[Date])  Year
, m.Name Month
--,@StartDate [Date]
FROM         dbo.tEmployee e 
INNER JOIN dbo.tPersona ps ON e.ID_Persona = ps.ID 
INNER JOIN dbo.tDepartment d ON e.ID_Department = d.ID 
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
INNER JOIN dbo.tEmployeeDailySchedule eds ON e.ID = eds.ID_Employee 
LEFT JOIN tMonth m ON m.ID = MONTH(eds.[Date]) 
INNER JOIN dbo.tCompany c ON e.ID_Company = c.ID 
LEFT OUTER JOIN  dbo.tSection s ON s.ID = e.ID_Section
GROUP BY e.Code, ps.FirstName, ps.LastName, dm.Name, c.Name
, e.ID, c.ID, d.ID, s.Name, e.ID_Section, e.IsActive, MONTH(eds.[Date]) , YEAR(eds.[Date]) ,m.Name
ORDER BY ps.LastName
GO
