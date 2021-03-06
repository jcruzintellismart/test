/****** Object:  View [dbo].[vBreakMonitoring]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBreakMonitoring]
AS
SELECT bm.ID,
       bm.ID_EmployeeDailySchedule,
       bm.Date,
       bm.ID_DailySchedule,
       bm.ID_Employee,
       e.Code,
       p.Name,
       p.LastName,
       p.FirstName,
       p.MiddleName,
       c.ID ID_Company,
       c.Name CompanyName,
       s.ID ID_Store,
       sm.Name StoreName,
       b.ID ID_Branch,
       bma.Name BranchName,
       d.ID ID_Department,
       dm.Name DepartmentName,
       bm.ScheduledTimeIn,
       bm.ScheduledTimeOut,
       bm.IsNextDayOut,
       bm.FirstLog,
       bm.LongBreakStart,
       bm.LongBreakEnd,
       bm.LongBreakDuration,
       bm.ShortBreak1Start,
       bm.ShortBreak1End,
       bm.ShortBreak1Duration,
       bm.ShortBreak2Start,
       bm.ShortBreak2End,
       bm.ShortBreak2Duration,
       bm.LastLog,
       bm.IsLongBreakTardy,
       bm.LogCount,
       bm.IsIncomplete,
       bm.IsLogExcess
FROM tBreakMonitoring bm
    LEFT JOIN dbo.tEmployee e
        ON e.ID = bm.ID_Employee
    LEFT JOIN dbo.tCompany c
        ON c.ID = e.ID_Company
    LEFT JOIN dbo.tStore s
        ON s.ID = e.ID_Store
    LEFT JOIN dbo.tStoreMaintenance sm
        ON sm.ID = s.ID_StoreMaintenance
    LEFT JOIN dbo.tBranch b
        ON e.ID_Branch = b.ID
    LEFT JOIN dbo.tBranchMaintenance bma
        ON bma.ID = b.ID_BranchMaintenance
    LEFT JOIN dbo.tDepartment d
        ON d.ID = e.ID_Department
    LEFT JOIN dbo.tDepartmentMaintenance dm
        ON dm.ID = d.ID_DepartmentMaintenance
    LEFT JOIN dbo.tPersona p
        ON e.ID_Persona = p.ID;
GO
