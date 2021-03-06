/****** Object:  View [dbo].[vMonthlySchedule_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMonthlySchedule_Detail] 
AS
SELECT	
msd.ID
,msd.Code
,msd.Name
,msd.ID_MonthlySchedule
,msd.ID_DailyScheduleSun
,msd.ID_DailyScheduleMon
,msd.ID_DailyScheduleTue
,msd.ID_DailyScheduleWed
,msd.ID_DailyScheduleThu
,msd.ID_DailyScheduleFri
,msd.ID_DailyScheduleSat
,DSSun.Name AS DailyScheduleSun
,DSMon.Name AS DailyScheduleMon
,DSTue.Name AS DailyScheduleTue
,DSWed.Name AS DailyScheduleWed
,DSThu.Name AS DailyScheduleThu
,DSFri.Name AS DailyScheduleFri
,DSSat.Name AS DailyScheduleSat
,msd.IsActive
,msd.Comment
FROM tMonthlySchedule_Detail msd LEFT OUTER JOIN
dbo.tDailySchedule AS DSMon ON DSMon.ID = msd.ID_DailyScheduleMon LEFT OUTER JOIN
dbo.tDailySchedule AS DSTue ON DSTue.ID = msd.ID_DailyScheduleTue LEFT OUTER JOIN
dbo.tDailySchedule AS DSWed ON DSWed.ID = msd.ID_DailyScheduleWed LEFT OUTER JOIN
dbo.tDailySchedule AS DSThu ON DSThu.ID = msd.ID_DailyScheduleThu LEFT OUTER JOIN
dbo.tDailySchedule AS DSFri ON DSFri.ID = msd.ID_DailyScheduleFri LEFT OUTER JOIN
dbo.tDailySchedule AS DSSat ON DSSat.ID = msd.ID_DailyScheduleSat LEFT OUTER JOIN
dbo.tDailySchedule AS DSSun ON DSSun.ID = msd.ID_DailyScheduleSun
GO
