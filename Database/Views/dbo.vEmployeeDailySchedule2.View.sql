/****** Object:  View [dbo].[vEmployeeDailySchedule2]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailySchedule2]
as

SELECT DISTINCT 
per.Name Employee
,e.ID ID_Employee
,eds.Date
,eds.ID_DailySchedule
,ds.Name DailySchedule
,eds.ID
,WS.Code AS [Day]
,dt.Name DayType
,eds.IsRD
,eds.StraightDuty
, RTRIM(ISNULL(lpi.Code + ' ', '') + ISNULL(flpi.Code + '-f ', '') + ISNULL(slpi.Code + '-s ', '')) AS Leave
,eds.REG
,eds.OT
,eds.ND
,eds.NDOT
,eds.TARDY
,eds.UT
,eds.IsAbsent
,eds.Absences
,CAST(CASE WHEN isnull(eal.LogCount, 0) > 0 AND 
                         (EDS.reg = 1 OR
                         eds.reg < 1) THEN 1 ELSE 0 END AS bit) AS IsForChecking
,eds.IsForComputation
,eds.Posted
,eds.Comment
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
LEFT OUTER JOIN dbo.tDailySchedule ds ON ds.ID = eds.ID_DailySchedule
LEFT OUTER JOIN dbo.tWeekDay AS WS ON DATEPART(dw, EDS.Date) = WS.ID
LEFT OUTER JOIN tDayType dt ON dt.ID = eds.ID_DayType
LEFT OUTER JOIN dbo.tTimekeepingItem AS lpi ON EDS.ID_TimekeepingItem = lpi.ID
LEFT OUTER JOIN dbo.tTimekeepingItem AS flpi ON EDS.ID_FirstHalfTimekeepingItem = flpi.ID
LEFT OUTER JOIN dbo.tTimekeepingItem AS slpi ON EDS.ID_SecondHalfTimekeepingItem = slpi.ID
LEFT OUTER JOIN (SELECT        COUNT(ID) AS logCount, ID_Employee, WorkDate
                               FROM            dbo.tEmployeeAttendanceLog
                               GROUP BY WorkDate, ID_Employee) AS EAL ON EAL.WorkDate = EDS.Date AND EAL.ID_Employee = EDS.ID_Employee
GO
