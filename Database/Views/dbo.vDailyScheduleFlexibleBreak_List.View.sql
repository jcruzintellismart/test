/****** Object:  View [dbo].[vDailyScheduleFlexibleBreak_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailyScheduleFlexibleBreak_List]
AS
SELECT     ID, StartTime, EndTime, Hours, BreakMinutes, Comment
FROM         dbo.vDailyScheduleFlexibleBreak
GO
