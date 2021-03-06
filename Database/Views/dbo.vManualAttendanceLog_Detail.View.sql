/****** Object:  View [dbo].[vManualAttendanceLog_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vManualAttendanceLog_Detail]
AS
SELECT     mald.ID, mald.[Date], mald.[Time], mald.ID_AttendanceLogType, mald.ID_EmployeeAttendanceLogCreditDate, mald.ID_ManualAttendanceLog, mald.SeqNo, mald.IsActive, mald.Comment, alt.Name AS AttendanceLogType, 
                      ealcd.Name AS EmployeeAttendanceLogCreditDate, mald.TempMinute, mald.ComputedTime, mald.IsApplied
FROM         dbo.tManualAttendanceLog_Detail mald LEFT OUTER JOIN
                      dbo.tEmployeeAttendanceLogCreditDate ealcd ON mald.ID_EmployeeAttendanceLogCreditDate = ealcd.ID LEFT OUTER JOIN
                      dbo.tAttendanceLogType alt ON mald.ID_AttendanceLogType = alt.ID
GO
