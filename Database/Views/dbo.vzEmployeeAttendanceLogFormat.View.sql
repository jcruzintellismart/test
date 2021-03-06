/****** Object:  View [dbo].[vzEmployeeAttendanceLogFormat]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeAttendanceLogFormat]
AS

SELECT TOP 100 PERCENT
eal.ID_Employee
,eal.Date 
,eal.WorkDate
,eal.Datetime
,YEAR(eal.Date) [Year]
,MONTH(eal.Date) ID_Month
,DAY(eal.Date) [Day]
,ld.Name IPAddress
,eal.Source Source
,eal.AccessNo
,alt.Name LogType
,p.Name Employee 
,e.ID_Department
,e.ID_Designation
,e.ID_Company
,dm.Name Department
,dem.Name Designation
,c.Name Company
,m.Name Month
FROM tEmployeeAttendanceLog eal
INNER JOIN tEmployee e ON e.ID = eal.ID_Employee 	
INNER JOIN tPersona p ON p.ID  = e.ID_Persona
LEFT OUTER JOIN tDepartment dep On dep.ID =e.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT OUTER JOIN tDesignation des ON des.ID = e.ID_Designation
LEFT OUTER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance
LEFT OUTER JOIN tCompany c ON c.ID =e.ID_Company
LEFT OUTER JOIN tAttendanceLogType alt On alt.ID = eal.ID_AttendanceLogType
LEFT OUTER JOIN tMonth m ON m.ID = MONTH(eal.Date)
LEFT OUTER JOIN tLogDevice ld ON eal.Source = ld.IPAddress
ORDER BY eal.Datetime
GO
