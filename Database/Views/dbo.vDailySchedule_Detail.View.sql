/****** Object:  View [dbo].[vDailySchedule_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailySchedule_Detail]
AS
SELECT DSD.ID,
       DSD.Code,
       DSD.Name,
       DSD.ID_HourType ID_HourType,
       DSD.ID_DailySchedule,
       DSD.Day,
       DSD.StartTime,
       DSD.StartMinute,
       DSD.EndMinute,
       DSD.Hours,
       DSD.SeqNo,
       DSD.IsActive,
       DSD.Comment,
       HT.Name AS HourType,
       DSD.EndTime,
       DSD.BreakMinutes,
       DSD.FirstIn,
       DSD.LastOut,
       DSD.FlexibleMinutes,
       DSD.FlexibleHours,
       DSD.WithPay,
       DSD.AutoApprove,
       DSD.LBoundStartMinute,
       DSD.UBoundEndMinute
FROM dbo.tDailySchedule_Detail AS DSD
    LEFT JOIN dbo.tDailySchedule ds ON ds.ID = DSD.ID_DailySchedule
    LEFT OUTER JOIN dbo.tHourType AS HT ON DSD.ID_HourType = HT.ID;
GO
