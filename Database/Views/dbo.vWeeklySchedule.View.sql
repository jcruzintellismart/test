/****** Object:  View [dbo].[vWeeklySchedule]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vWeeklySchedule]
AS
SELECT     WS.ID, WS.Code, WS.Name, WS.ID_DailyScheduleMon, WS.ID_DailyScheduleTue, WS.ID_DailyScheduleWed, WS.ID_DailyScheduleThu, WS.ID_DailyScheduleFri, 
                      WS.ID_DailyScheduleSat, WS.ID_DailyScheduleSun, WS.IsActive, WS.Comment, NULL AS SeqNo, DSMon.Name AS DailyScheduleMon, 
                      DSTue.Name AS DailyScheduleTue, DSWed.Name AS DailyScheduleWed, DSThu.Name AS DailyScheduleThu, DSFri.Name AS DailyScheduleFri, 
                      DSSat.Name AS DailyScheduleSat, DSSun.Name AS DailyScheduleSun
FROM         dbo.tWeeklySchedule AS WS LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSMon ON DSMon.ID = WS.ID_DailyScheduleMon LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSTue ON DSTue.ID = WS.ID_DailyScheduleTue LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSWed ON DSWed.ID = WS.ID_DailyScheduleWed LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSThu ON DSThu.ID = WS.ID_DailyScheduleThu LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSFri ON DSFri.ID = WS.ID_DailyScheduleFri LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSSat ON DSSat.ID = WS.ID_DailyScheduleSat LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSSun ON DSSun.ID = WS.ID_DailyScheduleSun
GO
