/****** Object:  View [dbo].[vEmployeeAttendanceGPS]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeAttendanceGPS]
AS

SELECT gps.ID ,
       gps.ID_Employee ,
       gps.DateTime ,
       gps.Carrier ,
       gps.Location ,
       gps.LocationDescription ,
       gps.ID_AttendanceLogType ,
       gps.DateTimeCreated ,
       gps.IsActive ,
       gps.Comment , p.Name [Employee], lt.Name [AttendanceLogType], gps.SeqNo
	   
	   FROM dbo.tEmployeeAttendanceGPS gps
	   LEFT JOIN dbo.tEmployee e ON	e.ID = gps.ID_Employee
	   LEFT JOIN dbo.tPersona p ON	p.ID = e.ID_Persona
	   LEFT JOIN dbo.tAttendanceLogType lt ON lt.ID = gps.ID_AttendanceLogType
GO
