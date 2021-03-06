/****** Object:  View [dbo].[vDailySchedule]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailySchedule]
AS
SELECT TOP (100) PERCENT
       ds.ID,
       ds.Code,
       ds.Name,
       ds.StartMinute,
       ds.WorkingHours,
       ds.WorkingMinutes,
       ds.TimeIn,
       ds.FirstHalfTimeOut,
       ds.SecondHalfTimeIn,
       ds.MinuteIn,
       ds.FirstHalfMinuteOut,
       ds.SecondHalfMinuteIn,
       ds.MinuteOut,
       ds.Flexible,
       ds.FlexibleHours,
       ds.IsActive,
       ds.Comment,
       ds.TardyAsHalfDay,
       ds.TardyAsAbsent,
       ds.UTAsHalfDay,
       ds.UTAsAbsent,
       ds.FirstHalfWorkingHours,
       ds.FirstHalfWorkingMinutes,
       ds.SecondHalfWorkingHours,
       ds.SecondHalfWorkingMinutes,
       ds.TimeOut,
       ds.IsExpirableFlexiHours,
       ds.NDAMStartMinute,
       ds.NDAMEndMinute,
       ds.NDPMStartMinute,
       ds.NDPMEndMinute,
       ds.Days,
       ds.SeqNo,
       ds.ID_ShiftType,
       dbo.tShiftType.Name AS ShiftType,
       ds.WithBrokenTime,
       ds.FirstInLastOut,
	   ds.CompensableBreak,
	   ds.NonCompensableBreak
FROM dbo.tDailySchedule AS ds
LEFT OUTER JOIN dbo.tShiftType ON ds.ID_ShiftType = dbo.tShiftType.ID
ORDER BY ds.SeqNo, ds.Name;
GO
