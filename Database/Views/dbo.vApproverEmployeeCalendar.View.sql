/****** Object:  View [dbo].[vApproverEmployeeCalendar]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vApproverEmployeeCalendar]
AS

SELECT DISTINCT(a.ID), a.Name, a.ID_EmployeeApprover FROM (
SELECT DISTINCT e.ID, e.Name, e.ID AS ID_EmployeeApprover
FROM dbo.vApproverMatrix am
INNER JOIN dbo.vEmployee e ON e.ID = am.ID_Employee
INNER JOIN dbo.vUser u ON u.ID = am.ID_User
UNION ALL
SELECT DISTINCT u.ID_Employee AS ID, u.Name, u.ID_Employee AS ID_EmployeeApprover
FROM dbo.vApproverMatrix am
INNER JOIN dbo.vUser u ON am.ID_User = u.ID
INNER JOIN dbo.vEmployee e ON e.ID = u.ID_Employee
)a
GO
