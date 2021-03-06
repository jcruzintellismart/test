/****** Object:  View [dbo].[vEmployeeDailyScheduleFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailyScheduleFile_Detail]
AS
SELECT     
edsf.ID
, edsf.EmployeeCode
, per.Name Employee
, edsf.Date
, edsf.REG
, edsf.EXT
, edsf.OT
, edsf.ND
, edsf.NDOT
, edsf.TARDY
, edsf.UT
, edsf.IsRD
, edsf.ID_EmployeeDailyScheduleFile
,edsf.IsApplied
FROM dbo.tEmployeeDailyScheduleFile_Detail edsf
LEFT JOIN dbo.tEmployee e ON e.Code = edsf.EmployeeCode
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
