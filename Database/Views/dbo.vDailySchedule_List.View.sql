/****** Object:  View [dbo].[vDailySchedule_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailySchedule_List]
AS
SELECT     ID, Code, Name, WorkingHours, TimeIn, TimeOut, FlexibleHours, Flexible, Comment
FROM         dbo.vDailySchedule ds
GO
