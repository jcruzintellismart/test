/****** Object:  View [dbo].[vNewSched]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vNewSched]
AS
SELECT     ID, Code, Name, StartMinute, WorkingHours, WorkingMinutes, TimeIn, FirstHalfTimeOut, FirstHalfWorkingHours, FirstHalfWorkingMinutes, SecondHalfTimeIn, 
                      SecondHalfWorkingHours, SecondHalfWorkingMinutes, TimeOut, MinuteIn, FirstHalfMinuteOut, SecondHalfMinuteIn, MinuteOut, Flexible, FlexibleHours, SeqNo, 
                      IsActive, Comment, TardyAsHalfDay, TardyAsAbsent, UTAsHalfDay, UTAsAbsent, NDAMStartMinute, NDAMEndMinute, NDPMStartMinute, NDPMEndMinute, Days, 
                      IsExpirableFlexiHours, ID_ShiftType, WithBrokenTime
FROM         dbo.tDailySchedule
GO
