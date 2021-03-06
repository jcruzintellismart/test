/****** Object:  View [dbo].[vAttendance_Retro]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vAttendance_Retro]
AS
SELECT a.ID,
       a.ID_Employee,
       a.ID_DailySchedule,
       a.ID_Leave,
       a.Date,
       a.TimeIn,
       a.TimeOut,
       a.MinuteIn,
       a.MinuteOut,
       a.Days,
       a.SeqNo,
       a.IsActive,
       a.Comment,
       a.DateTimeCreated,
       a.DateTimeModified,
       p.Name AS Employee,
       a.IsComplete,
       a.ID_ImportedAttendance_Detail,
       a.Hours,
       a.Tardy,
       a.OT,
       a.ND,
       e.Code AS EmployeeCode,
       dm.Name AS Department,
       a.ID_EmployeeAttendanceLog,
       a.ComputedTimeIn,
       a.ComputedTimeOut,
       a.ID_EmployeeDailySchedule,
       DS.Name AS DailySchedule,
       e.ID_Section,
       a.FromOB,
       a.ID_AttendanceFile_Detail,
       a.TempMinuteOut,
       a.TempMinuteIn,
       a.OBIN,
       a.OBOUT,
       a.WorkDate
FROM dbo.tAttendance_Retro AS a
LEFT OUTER JOIN dbo.tDailySchedule AS DS ON a.ID_DailySchedule = DS.ID
LEFT OUTER JOIN dbo.tDepartment AS d
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
RIGHT OUTER JOIN dbo.tEmployee AS e ON d.ID = e.ID_Department
LEFT OUTER JOIN dbo.tPersona AS p ON e.ID_Persona = p.ID
ON a.ID_Employee = e.ID
WHERE (a.ID_Leave IS NULL) AND (a.ID_ImportedAttendance_Detail IS NULL);
GO
