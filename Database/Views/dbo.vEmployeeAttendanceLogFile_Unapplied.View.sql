/****** Object:  View [dbo].[vEmployeeAttendanceLogFile_Unapplied]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeAttendanceLogFile_Unapplied]
AS
SELECT L.ID,
       L.AccessNo,
       L.DateTime,
       T.Name AS AttendanceLogType,
       L.Code,
       L.Name,
       L.ID_Employee,
       L.ID_AttendanceLogType,
       L.ID_EmployeeAttendanceLogFile,
       L.SeqNo,
       L.IsActive,
       L.Comment,
       L.DateTimeCreated,
       L.DateTimeModified,
       P.Name AS Employee,
       L.WorkDate,
       L.Date,
       L.Minute,
       L.ID_DailySchedule,
       E.ID_Company,
       E.ID_Branch,
       E.ID_Department,
       E.ID_Designation,
       C.Address AS CompanyAddress,
       C.Name AS Company,
       dm.Name AS Department,
       dem.Name AS Designation,
       L.Source,
       L.ID_EditedByUser,
       U.Name AS EditedByUser,
       ld.Name AS LogDevice,
       L.ID_EmployeeAttendanceLogCreditDate
FROM dbo.tAttendanceLogType AS T
RIGHT OUTER JOIN dbo.tUser AS U
RIGHT OUTER JOIN dbo.tEmployeeAttendanceLogFile_Unapplied AS L ON U.ID = L.ID_EditedByUser 
	ON T.ID = L.ID_AttendanceLogType
LEFT OUTER JOIN dbo.tDepartment AS DEP
RIGHT OUTER JOIN dbo.tCompany AS C
RIGHT OUTER JOIN dbo.tEmployee AS E
LEFT OUTER JOIN dbo.tDesignation AS DES ON E.ID_Designation = DES.ID
	ON C.ID = E.ID_Company
	ON DEP.ID = E.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = DEP.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = DES.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tPersona AS P ON E.ID_Persona = P.ID
	ON L.ID_Employee = E.ID
LEFT OUTER JOIN dbo.tLogDevice AS ld ON ld.IPAddress = L.Source;
GO
