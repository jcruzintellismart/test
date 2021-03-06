/****** Object:  View [dbo].[vzEmployeeAttendanceLog1]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeAttendanceLog1]
AS
SELECT    
 v.ID
, v.ID_Employee
,  v.ID_AttendanceLogType
, v.ID_EmployeeAttendanceLogFile
, v.ID_DailySchedule
, v.ID_Company
, v.ID_Branch
, v.ID_Department
, v.ID_Designation
, e.ID_EmployeeStatus
, v.ID_EditedByUser
, e.ID_Section
, v.Employee
, g.Name AS Gender
, v.WorkDate
, v.AttendanceLogType
, v.Name
, v.CompanyAddress
, v.Company
, v.Department
, v.Designation
, v.Source
, v.[Date]
, v.[Minute]
, a.LogCount
, v.AccessNo
, v.DateTime
, v.Code
, v.EditedByUser
, v.SeqNo
, v.IsActive
, v.Comment
, v.DateTimeCreated
,  v.DateTimeModified
,e.StartDate
,e.EndDate
FROM         dbo.vEmployeeAttendanceLog v 
INNER JOIN
 (	SELECT	ID_Employee
		, WorkDate
		, CAST(COUNT(ID) AS INT) [LogCount]
	FROM	tEmployeeAttendanceLog
	GROUP BY ID_Employee, WorkDate
) a ON v.ID_Employee = a.ID_Employee AND v.WorkDate = a.WorkDate 
INNER  JOIN dbo.tEmployee e ON v.ID_Employee = e.ID
LEFT OUTER JOIN dbo.tPersona p  ON e.ID_Persona = p.ID 
LEFT OUTER JOIN dbo.tGender g ON g.ID = p.ID_Gender
GO
