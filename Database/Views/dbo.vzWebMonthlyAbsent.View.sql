/****** Object:  View [dbo].[vzWebMonthlyAbsent]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebMonthlyAbsent]
AS

SELECT
	  [MONTH]
	, Company
	, ID_Company
	, Code
	, Employee
	, ID_Employee
	, [Date]
	, ID_Month
	, [Year]
	, Department
	, ID_Department
	, PayrollItem
	, IsAbsent
	, IsActive
	, Absences
	, [DateTime]
FROM dbo.fzWebMonthlyAbsent(1,2016,1,1,0,1)
GO
