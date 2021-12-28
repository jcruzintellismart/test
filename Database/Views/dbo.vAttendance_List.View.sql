/****** Object:  View [dbo].[vAttendance_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAttendance_List]
AS
SELECT     TOP (100) PERCENT ID, ID_Employee, Date, TimeIn, TimeOut, DailySchedule, Comment
FROM         dbo.vAttendance AS A
ORDER BY ComputedTimeIn
GO
