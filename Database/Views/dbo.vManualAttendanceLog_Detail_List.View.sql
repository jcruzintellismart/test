/****** Object:  View [dbo].[vManualAttendanceLog_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vManualAttendanceLog_Detail_List]
AS
SELECT     ID, [Date], [Time], ID_AttendanceLogType, ID_EmployeeAttendanceLogCreditDate, Comment
FROM         dbo.vManualAttendanceLog_Detail
GO
