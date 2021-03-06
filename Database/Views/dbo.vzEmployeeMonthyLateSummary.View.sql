/****** Object:  View [dbo].[vzEmployeeMonthyLateSummary]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeMonthyLateSummary]
AS

--SELECT * FROM fzEmployeeMonthyLateSummary('2011-01-01','2011-01-01'1)a
--(SELECT * FROM dbo.fzEmployeeMonthyLateSummary(@ID_Month,@Year) WHERE dbo.fEmployeeRights(@ID_Session,ID_Employee)=1) A --Old DataSource 
--DECLARE @ID_Month DATETIME ='01/01/2018' , @Year DATETIME = '12/30/2018'
--Edited by Yoku 10/17/2018

SELECT  
TOP 1000  
e.Code AS EmployeeCode
, ps.FirstName
, ps.LastName
, dm.Name AS Department
, c.Name AS Company
, SUM(eds.TARDY) AS Late
,  SUM(CASE WHEN TARDY > 0 THEN 1 ELSE 0 END) AS FreqLate
, e.ID AS ID_Employee
, c.ID AS ID_Company
, d.ID AS ID_Department
, s.Name AS [Section]
, e.ID_Section
,  e.IsActive
, MONTH(eds.[Date]) ID_Month
, YEAR(eds.[Date])  [YEAR]
, m.Name MONTH
, sm.Code AS StoreCode
, sm.Name AS StoreName
, cc.Name AS CostCenterName
,eds.Date
FROM   dbo.tEmployee e 
INNER JOIN dbo.tStore sc ON sc.ID = e.ID_Store 
LEFT OUTER JOIN  dbo.tStoreMaintenance AS sm ON	sm.ID = sc.ID_StoreMaintenance
INNER JOIN dbo.tPersona ps ON e.ID_Persona = ps.ID 
INNER JOIN dbo.tDepartment d ON e.ID_Department = d.ID 
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON	dm.ID = d.ID_DepartmentMaintenance
INNER JOIN dbo.tEmployeeDailySchedule eds ON e.ID = eds.ID_Employee 
LEFT JOIN tMonth m ON m.ID = MONTH(eds.[Date]) 
INNER JOIN dbo.tCompany c ON e.ID_Company = c.ID 
LEFT OUTER JOIN  dbo.tSection s ON s.ID = e.ID_Section
LEFT OUTER JOIN dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
WHERE eds.TARDY <> 0
-- YEAR(eds.[Date]) IN (@Year) AND MONTH(eds.[Date]) IN (@ID_Month)--eds.Date BETWEEN @ID_Month and @Year
--e.IsActive = 1 or eds.Date BETWEEN @ID_Month AND @Year
GROUP BY e.Code, ps.FirstName, ps.LastName, dm.Name, c.Name, e.ID, c.ID, d.ID, s.Name, e.ID_Section, e.IsActive, MONTH(eds.[Date]) , YEAR(eds.[Date]) ,m.Name , sm.Code, sm.Name, cc.Name,cc.ID
,eds.Date --Erron 2021.3.1
ORDER BY e.ID
GO
