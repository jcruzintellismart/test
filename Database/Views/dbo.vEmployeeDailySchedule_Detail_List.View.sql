/****** Object:  View [dbo].[vEmployeeDailySchedule_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailySchedule_Detail_List]
AS
SELECT     ID, StartTime, EndTime, HourType, ComputedHours, ConsideredHours, Tardy, NDHours, Approved, ID_WorkCredit, Comment
FROM         dbo.vEmployeeDailySchedule_Detail edsd
GO
