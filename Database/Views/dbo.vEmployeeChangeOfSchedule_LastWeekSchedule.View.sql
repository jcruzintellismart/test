/****** Object:  View [dbo].[vEmployeeChangeOfSchedule_LastWeekSchedule]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
;

CREATE VIEW [dbo].[vEmployeeChangeOfSchedule_LastWeekSchedule]
AS
SELECT lws.[ID],
       lws.[ID_EmployeeChangeOfSchedule],
       lws.[Date],
       lws.[ID_DailySchedule],
       lws.[IsRD],
       ds.[Name] DailySchedule
FROM dbo.tEmployeeChangeOfSchedule_LastWeekSchedule lws
    LEFT JOIN dbo.tDailySchedule ds
        ON ds.ID = lws.ID_DailySchedule;
GO
