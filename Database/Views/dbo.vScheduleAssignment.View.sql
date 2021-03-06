/****** Object:  View [dbo].[vScheduleAssignment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleAssignment]
AS
SELECT     SA.ID, SA.StartDate, SA.EndDate, SA.Comment, SA.ID_Company, SA.ID_DailyScheduleMon, SA.ID_DailyScheduleTue, SA.ID_DailyScheduleWed, 
                      SA.ID_DailyScheduleThu, SA.ID_DailyScheduleFri, SA.ID_DailyScheduleSat, SA.ID_DailyScheduleSun, DSMon.Name AS DailyScheduleMon, 
                      DSTue.Name AS DailyScheduleTue, DSWed.Name AS DailyScheduleWed, DSThu.Name AS DailyScheduleThu, DSFri.Name AS DailyScheduleFri, 
                      DSSat.Name AS DailyScheduleSat, DSSun.Name AS DailyScheduleSun, SA.Name, SA.EmployeeDefault, c.Name AS Company,sa.IsExecuted,sa.DateExecuted
FROM         dbo.tScheduleAssignment AS SA LEFT OUTER JOIN
                      dbo.tCompany AS c ON SA.ID_Company = c.ID LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSMon ON DSMon.ID = SA.ID_DailyScheduleMon LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSTue ON DSTue.ID = SA.ID_DailyScheduleTue LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSWed ON DSWed.ID = SA.ID_DailyScheduleWed LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSThu ON DSThu.ID = SA.ID_DailyScheduleThu LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSFri ON DSFri.ID = SA.ID_DailyScheduleFri LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSSat ON DSSat.ID = SA.ID_DailyScheduleSat LEFT OUTER JOIN
                      dbo.tDailySchedule AS DSSun ON DSSun.ID = SA.ID_DailyScheduleSun
GO
