/****** Object:  View [dbo].[vDailyScheduleThu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailyScheduleThu]
AS
SELECT     ID, Code, Name, WorkingHours, TimeIn, TimeOut,  Comment
FROM         dbo.vDailySchedule_List ds
GO
