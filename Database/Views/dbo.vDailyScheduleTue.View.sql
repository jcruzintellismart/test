/****** Object:  View [dbo].[vDailyScheduleTue]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailyScheduleTue]
AS
SELECT     ID, Code, Name, WorkingHours, TimeIn, TimeOut,  Comment
FROM         dbo.vDailySchedule_List ds
GO
