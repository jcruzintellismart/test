/****** Object:  View [dbo].[vEmployeeMissedLog_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeMissedLog_Detail] 
AS
SELECT TOP 100 PERCENT	
eml_d.ID ,
eml_d.ImageFile ,
eml_d.SeqNo ,
eml_d.IsActive ,
eml_d.Comment ,
eml_d.ID_EmployeeMissedLog ,
eml_d.LogDate,
eml_d.LogTime,
eml.IsPosted,
eml_d.ID_AttendanceLogType,
att.Name AttendanceLogType,
eml_d.ComputedTime,
eml.ID_Employee
FROM tEmployeeMissedLog_Detail eml_d
LEFT JOIN dbo.tEmployeeMissedLog eml ON eml.ID = eml_d.ID_EmployeeMissedLog
LEFT JOIN dbo.tAttendanceLogType att ON att.ID = eml_d.ID_AttendanceLogType
ORDER BY eml_d.ID, eml_d.LogDate, eml_d.LogTime, eml.ID_Employee ASC
GO
