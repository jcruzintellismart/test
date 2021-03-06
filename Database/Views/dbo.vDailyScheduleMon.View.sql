/****** Object:  View [dbo].[vDailyScheduleMon]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailyScheduleMon]
AS
SELECT     ID, Code, Name, StartMinute, WorkingHours, WorkingMinutes, TimeIn, FirstHalfTimeOut, SecondHalfTimeIn, MinuteIn, FirstHalfMinuteOut, SecondHalfMinuteIn, 
                      MinuteOut, Flexible, FlexibleHours, IsActive, Comment, TardyAsHalfDay, TardyAsAbsent, UTAsHalfDay, UTAsAbsent, FirstHalfWorkingHours, FirstHalfWorkingMinutes, 
                      SecondHalfWorkingHours, SecondHalfWorkingMinutes, TimeOut, IsExpirableFlexiHours, NDAMStartMinute, NDAMEndMinute, NDPMStartMinute, NDPMEndMinute, 
                      Days, SeqNo
FROM         dbo.vDailySchedule AS ds
GO
