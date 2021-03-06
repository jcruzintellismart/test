/****** Object:  View [dbo].[vScheduleFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleFile_Detail]   
AS   
SELECT     sfd.ID   
	, sfd.ID_ScheduleFile   
	, sfd.SeqNo   
	, sfd.EmployeeCode   
	, p.Name Employee   
	--, sfd.Employee   
	--, dbo.fValidScheduleFile_Detail(sfd.ID) AS IsValid  
	, sfd.IsValid
	, sfd.DateTimeCreated
	, sfd.DateTimeModified
	, sfd.Comment   
	, sfd.ID_Employee   
	,sfd.Schedule1   
	,sfd.Schedule2   
	,sfd.Schedule3   
	,sfd.Schedule4   
	,sfd.Schedule5   
	,sfd.Schedule6   
	,sfd.Schedule7   
	, sfd.RD1   
	, sfd.RD2   
	, sfd.RD3   
	, sfd.RD4   
	, sfd.RD5   
	, sfd.RD6   
	, sfd.RD7   
	, sfd.Straight1   
	, sfd.Straight2   
	, sfd.Straight3   
	, sfd.Straight4   
	, sfd.Straight5   
	, sfd.Straight6   
	, sfd.Straight7   
	, sfd.ReqRD1   
	, sfd.ReqRD2   
	, sfd.ReqRD3   
	, sfd.ReqRD4   
	, sfd.ReqRD5   
	, sfd.ReqRD6   
	, sfd.ReqRD7   
	, sfd.ID_SectionAssignment   
	, sfd.IsApplied   
	,sfd.ID_DailySchedule1   
	,sfd.ID_DailySchedule2   
	,sfd.ID_DailySchedule3   
	,sfd.ID_DailySchedule4   
	,sfd.ID_DailySchedule5   
	,sfd.ID_DailySchedule6   
	,sfd.ID_DailySchedule7   
	,ds1.Name [DailySchedule1]   
	,ds2.Name [DailySchedule2]   
	,ds3.Name [DailySchedule3]   
	,ds4.Name [DailySchedule4]   
	,ds5.Name [DailySchedule5]   
	,ds6.Name [DailySchedule6]   
	,ds7.Name [DailySchedule7]   
	,sfd.Department  
	,sfd.Designation  
FROM         dbo.tScheduleFile_Detail AS sfd   
	LEFT OUTER JOIN dbo.tEmployee e ON e.code = sfd.EmployeeCode   
	LEFT OUTER JOIN dbo.tPersona p ON e.ID_Persona = p.ID   
	LEFT OUTER JOIN dbo.tDepartment d ON e.ID_Department = d.ID  
	LEFT JOIN dbo.tDailySchedule ds1 ON ds1.ID = sfd.ID_DailySchedule1   
	LEFT JOIN dbo.tDailySchedule ds2 ON ds2.ID = sfd.ID_DailySchedule2   
	LEFT JOIN dbo.tDailySchedule ds3 ON ds3.ID = sfd.ID_DailySchedule3   
	LEFT JOIN dbo.tDailySchedule ds4 ON ds4.ID = sfd.ID_DailySchedule4   
	LEFT JOIN dbo.tDailySchedule ds5 ON ds5.ID = sfd.ID_DailySchedule5   
	LEFT JOIN dbo.tDailySchedule ds6 ON ds6.ID = sfd.ID_DailySchedule6   
	LEFT JOIN dbo.tDailySchedule ds7 ON ds7.ID = sfd.ID_DailySchedule7
GO
