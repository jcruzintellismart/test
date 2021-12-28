/****** Object:  View [dbo].[vEmployeeAttendanceLog_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeAttendanceLog_List]
AS
SELECT     TOP (100) PERCENT ID, Source, AccessNo, EmployeeCode, ID_Employee, DateTime, ID_AttendanceLogType, ID_EmployeeAttendanceLogCreditDate,Source2 Remarks
FROM         dbo.vEmployeeAttendanceLog AS EAL
GO
