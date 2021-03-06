/****** Object:  View [dbo].[vzMonthlyUndertime]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vzMonthlyUndertime]
AS
--Old View  Script and  DataSource
--SELECT * FROM dbo.fzMonthlyUndertime('2001-01-01','2001-01-01')a
--(SELECT * FROM dbo.fzMonthlyUndertime(@StartDate, @EndDate) WHERE dbo.fEmployeeRights(@ID_Session,ID_Employee)=1) A

SELECT TOP 1000 
e.Code AS EmployeeCode
, CONCAT(ps.FirstName,' ', ps.MiddleName, ' ', ps.LastName) AS EmployeeName
, dm.Name AS Department
, c.Name AS Company
, SUM(eds.UT) AS UnderTime
,  SUM(CASE WHEN UT > 0 THEN 1 ELSE 0 END) AS FreqLate
, e.ID AS ID_Employee
, c.ID AS ID_Company
, d.ID AS ID_Department
, e.IsActive
--, eds.Date
, MONTH(eds.[Date]) ID_Month
, YEAR(eds.[Date])  Year
, m.Name Month
--,@StartDate [Date]
FROM  dbo.tEmployee e 
INNER JOIN dbo.tPersona ps ON e.ID_Persona = ps.ID 
INNER JOIN dbo.tUser AS u ON u.ID_Employee = e.ID
INNER JOIN dbo.tDepartment d ON e.ID_Department = d.ID 
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON	dm.ID = d.ID_DepartmentMaintenance
INNER JOIN dbo.tEmployeeDailySchedule eds ON e.ID = eds.ID_Employee 
LEFT JOIN tMonth m ON m.ID = MONTH(eds.[Date]) 
INNER JOIN dbo.tCompany c ON e.ID_Company = c.ID 
WHERE eds.ActualUT <> 0 
--eds.Date BETWEEN @StartDate AND @EndDate
--AND Year(eds.[Date]) = @Year 
GROUP BY e.Code, ps.FirstName, ps.MiddleName, ps.LastName, dm.Name, c.Name, e.ID, c.ID, d.ID, e.ID_Section, e.IsActive, MONTH(eds.[Date]) , YEAR(eds.[Date]) ,m.Name, u.Name, eds.Date
ORDER BY ps.LastName
GO
