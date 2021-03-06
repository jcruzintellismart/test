/****** Object:  View [dbo].[vEmployeeAttendanceLog]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeAttendanceLog]
AS
SELECT L.ID,
       'Logs' AS Logs,
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
       ld.Name AS LogDevice,
       L.ID_EmployeeAttendanceLogCreditDate,
       E.Code AS EmployeeCode,
       L.ID_EmployeeMissedLog,
       L.ID_EmployeeMissedLogFile_Detail,
       u.Name AS EditedByUser,
       L.ID_ManualAttendanceInput_Detail,
       CASE
           WHEN L.ID_ManualAttendanceInput_Detail IS NOT NULL THEN
               'Manual Attendance Log'
           WHEN
           (
               L.Source IS NOT NULL
               AND L.ID_EmployeeAttendanceLogFile IS NULL
           ) THEN
               'FSCAN'
           WHEN L.ID_EmployeeMissedLog IS NOT NULL THEN
               'Missed Log'
           WHEN L.ID_EmployeeMissedLogFile_Detail IS NOT NULL THEN
               'Missed Log File'
           WHEN L.ID_EmployeeAttendanceLogFile IS NOT NULL THEN
               'Employee Attendance Log File'
           WHEN L.ID_TimekeepingFile IS NOT NULL THEN
               'Timekeeping File'
           ELSE
               NULL
       END AS Source2,
       L.ID_TimekeepingFile,
       ealcd.Name AS EmployeeAttendanceLogCreditDate,
       L.IsValid
FROM dbo.tEmployeeAttendanceLog AS L
LEFT OUTER JOIN dbo.tAttendanceLogType AS T ON T.ID = L.ID_AttendanceLogType
LEFT OUTER JOIN dbo.tEmployee AS E ON E.ID = L.ID_Employee
LEFT OUTER JOIN dbo.tDepartment AS DEP ON DEP.ID = E.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tCompany AS C ON C.ID = E.ID_Company
LEFT OUTER JOIN dbo.tDesignation AS DES ON E.ID_Designation = DES.ID
LEFT OUTER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = DES.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tPersona AS P ON E.ID_Persona = P.ID
LEFT OUTER JOIN dbo.tLogDevice AS ld ON ld.IPAddress = L.Source
LEFT OUTER JOIN dbo.tUser AS u ON u.ID = L.ID_EditedByUser
LEFT OUTER JOIN dbo.tEmployeeAttendanceLogCreditDate AS ealcd ON L.ID_EmployeeAttendanceLogCreditDate = ealcd.ID;
GO
