/****** Object:  View [dbo].[vDailyScheduleFlexibleBreak]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailyScheduleFlexibleBreak]
AS
SELECT     ID, ID_DailySchedule, StartTime, EndTime, StartMinute, EndMinute, BreakMinutes, Comment, DateTimeCreated, DateTimeModified, Hours
FROM         dbo.tDailyScheduleFlexibleBreak dsfb
GO
