/****** Object:  View [dbo].[vEmployeeAttendanceLogFile_Unapplied_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeAttendanceLogFile_Unapplied_List]
AS
SELECT     ID, AccessNo, DateTime, ID_Employee, ID_AttendanceLogType, Source, ID_EmployeeAttendanceLogCreditDate
FROM         dbo.vEmployeeAttendanceLogFile_Unapplied
GO
