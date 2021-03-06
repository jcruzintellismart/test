/****** Object:  View [dbo].[vzMonthlyAttendanceSummary]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzMonthlyAttendanceSummary]
AS
SELECT     TOP 100 PERCENT 
e.Code AS EmployeeCode
, p.FirstName
, p.LastName
,p.Name1 AS Name
, dm.Name AS Department, c.Name AS Company
, SUM(eds.TARDY) AS Late
, SUM(CASE WHEN TARDY > 0 THEN 1 ELSE 0 END) AS FreqLate
, SUM(eds.UT) AS UnderTime
, SUM(CASE WHEN UT > 0 THEN 1 ELSE 0 END)  AS FreqUT
, SUM(CAST(ISNULL(eds.IsAbsent, 0) AS Integer)) AS Absences
, SUM(eds.OT) AS OverTime
, SUM(eds.ND) AS ND
, SUM(eds.NDOT) AS NDOT
--, CAST(CONVERT(varchar, MONTH(eds.[Date])) + '/1/' + CONVERT(varchar, YEAR(eds.[Date])) AS DateTime) AS [Date]
, MONTH(eds.Date) ID_Month
, YEAR(eds.Date)  AS [Year]
, YEAR(eds.Date)  AS [YR]
, e.ID AS ID_Employee
,  c.ID AS ID_Company
, d.ID AS ID_Department
, s.Name AS [Section], e.ID_Section
, e.IsActive
, m.Name Month
FROM         
dbo.tEmployee e
INNER JOIN dbo.tPersona p ON e.ID_Persona = p.ID 
INNER JOIN dbo.tDepartment d ON e.ID_Department = d.ID 
LEFT OUTER JOIN  dbo.tDepartmentMaintenance AS dm ON	dm.ID = d.ID_DepartmentMaintenance
INNER JOIN  dbo.tEmployeeDailySchedule eds ON e.ID = eds.ID_Employee 
INNER JOIN dbo.tCompany c ON e.ID_Company = c.ID 
LEFT OUTER JOIN tMonth m ON m.ID = Month(eds.Date)
LEFT OUTER JOIN  dbo.tSection s ON s.ID = e.ID_Section
GROUP BY 
e.Code
, p.FirstName
, p.LastName
, dm.Name
, c.Name
, e.ID
, c.ID
, d.ID
, s.Name
, e.ID_Section
, e.IsActive
, MONTH(eds.Date) 
, YEAR(eds.Date)
,m.Name
,p.Name1
ORDER BY p.LastName
GO
