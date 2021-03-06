/****** Object:  View [dbo].[vEmployeeDailyScheduleList]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailyScheduleList]
as
SELECT edsv.ID ID_EmployeeDailyScheduleView,per.Name Employee ,e.ID ID_Employee
FROM dbo.tEmployeeDailyScheduleView edsv
LEFT OUTER JOIN dbo.tEmployeeDailySchedule eds ON (eds.Date BETWEEN edsv.StartDate AND edsv.EndDate)
	AND (eds.ID_Company = edsv.ID_Company)
	AND (eds.ID_TimekeepingFrequency = edsv.ID_TimekeepingFrequency OR edsv.ID_TimekeepingFrequency IS NULL)
	AND (eds.ID_Branch = edsv.ID_Branch OR edsv.ID_Branch IS NULL)
	AND (eds.ID_Department = edsv.ID_Department OR edsv.ID_Department IS NULL)
	AND (eds.ID_Designation = edsv.ID_Designation OR edsv.ID_Designation IS NULL)
	AND (eds.ID_CostCenter = edsv.ID_CostCenter OR edsv.ID_CostCenter IS NULL)
	AND (eds.ID_PayrollClassifi = edsv.ID_PayrollClassifi OR edsv.ID_PayrollClassifi IS NULL)
	AND (eds.ID_Employee = edsv.ID_Employee OR edsv.ID_Employee IS NULL)
LEFT OUTER JOIN tEmployee e ON e.ID = eds.ID_Employee
LEFT OUTER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
