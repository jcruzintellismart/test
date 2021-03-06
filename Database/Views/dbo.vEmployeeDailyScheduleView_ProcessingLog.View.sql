/****** Object:  View [dbo].[vEmployeeDailyScheduleView_ProcessingLog]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailyScheduleView_ProcessingLog]
AS 
SELECT	
edsvpl.ID,
edsvpl.DateTimeProcessed,
edsvpl.Status,
edsvpl.IsPassed,
edsvpl.IsActive,
edsvpl.Comment,
edsvpl.ID_EmployeeDailyScheduleView	,
edsv.Code EmployeeDailyScheduleView
FROM dbo.tEmployeeDailyScheduleView_ProcessingLog AS edsvpl 
INNER JOIN dbo.tEmployeeDailyScheduleView AS edsv ON edsv.ID = edsvpl.ID_EmployeeDailyScheduleView
GO
