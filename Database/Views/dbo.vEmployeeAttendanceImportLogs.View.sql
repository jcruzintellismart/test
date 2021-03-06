/****** Object:  View [dbo].[vEmployeeAttendanceImportLogs]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeAttendanceImportLogs] 
AS
SELECT	
	 eai.ID ,
	        eai.Source ,
	        eai.AccessNo ,
	        eai.ID_Employee ,
	        eai.DateTime ,
	        eai.ID_AttendanceLogType ,
	        eai.ID_EmployeeAttendanceLogCreditDate ,
	        eai.ID_EmployeeAttendanceLogFile, at.Name [AttendanceLogType], 
			ealc.Name [EmployeeAttendanceLogCreditDate], ealf.Name [EmployeeAttendanceLogFile],
			p.Name [Employee],
			eai.Date,
			eai.Time
FROM 
	tEmployeeAttendanceImportLogs eai
	LEFT JOIN dbo.tAttendanceLogType at ON at.ID = eai.ID_AttendanceLogType
	LEFT JOIN dbo.tEmployeeAttendanceLogCreditDate ealc ON ealc.ID = eai.ID_EmployeeAttendanceLogCreditDate
	LEFT JOIN dbo.tEmployeeAttendanceLogFile ealf ON ealf.ID = eai.ID_EmployeeAttendanceLogFile
	LEFT JOIN dbo.tEmployee e ON e.ID = eai.ID_Employee
	LEFT JOIN tpersona p ON p.ID = e.ID_Persona
GO
