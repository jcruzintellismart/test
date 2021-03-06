/****** Object:  View [dbo].[vScheduleFileDetail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleFileDetail]   
AS  
SELECT   
	t.[ID]
,	t.[DateTimeCreated]
,	t.[ID_CreatedBy]
,	t.[DateTimeModified]
,	t.[ID_ModifiedBy]
,	cb.[Name] AS CreatedBy
,	mb.[Name] AS ModifiedyBy
,	t.ID_Employee
,	t.ID_DailySchedule1
,	t.ID_DailySchedule2
,	t.ID_DailySchedule3
,	t.ID_DailySchedule4
,	t.ID_DailySchedule5
,	t.ID_DailySchedule6
,	t.ID_DailySchedule7
,	p.Name as Employee
,	ds1.Name as DailySchedule1
,	ds2.Name as DailySchedule2
,	ds3.Name as DailySchedule3
,	ds4.Name as DailySchedule4
,	ds5.Name as DailySchedule5
,	ds6.Name as DailySchedule6
,	ds7.Name as DailySchedule7
,	sf.Name As ScheduleFile
,	t.ID_ScheduleFile
,	ID_DayType1
,	ID_DayType2
,	ID_DayType3
,	ID_DayType4
,	ID_DayType5
,	ID_DayType6
,	ID_DayType7
,	dt1.Name as DayType1
,	dt2.Name as DayType2
,	dt3.Name as DayType3
,	dt4.Name as DayType4
,	dt5.Name as DayType5
,	dt6.Name as DayType6
,	dt7.Name as DayType7
,	t.ID_SectionAssignment
,	sa.Name AS SectionAssignment
,	t.SeqNo
FROM tScheduleFileDetail t 
LEFT JOIN dbo.tScheduleFile sf ON sf.ID = t.ID_ScheduleFile
LEFT JOIN dbo.tUser cb ON cb.ID = t.ID_CreatedBy    
LEFT JOIN dbo.tUser mb ON mb.ID = t.ID_ModifiedBy
LEFT JOIN dbo.tEmployee e ON e.ID = t.ID_Employee
LEFT JOIN dbo.tPersona p On p.ID = e.ID_Persona
LEFT JOIN dbo.tDailySchedule ds1 ON ds1.ID = t.ID_DailySchedule1
LEFT JOIN dbo.tDailySchedule ds2 ON ds2.ID = t.ID_DailySchedule2
LEFT JOIN dbo.tDailySchedule ds3 ON ds3.ID = t.ID_DailySchedule3
LEFT JOIN dbo.tDailySchedule ds4 ON ds4.ID = t.ID_DailySchedule4
LEFT JOIN dbo.tDailySchedule ds5 ON ds5.ID = t.ID_DailySchedule5
LEFT JOIN dbo.tDailySchedule ds6 ON ds6.ID = t.ID_DailySchedule6
LEFT JOIN dbo.tDailySchedule ds7 ON ds7.ID = t.ID_DailySchedule7
LEFT JOIN dbo.tForRDSD dt1 ON dt1.ID = t.ID_Daytype1
LEFT JOIN dbo.tForRDSD dt2 ON dt2.ID = t.ID_Daytype2
LEFT JOIN dbo.tForRDSD dt3 ON dt3.ID = t.ID_Daytype3
LEFT JOIN dbo.tForRDSD dt4 ON dt4.ID = t.ID_Daytype4
LEFT JOIN dbo.tForRDSD dt5 ON dt5.ID = t.ID_Daytype5
LEFT JOIN dbo.tForRDSD dt6 ON dt6.ID = t.ID_Daytype6
LEFT JOIN dbo.tForRDSD dt7 ON dt7.ID = t.ID_Daytype7
LEFT JOIN dbo.tSectionAssignment sa ON sa.ID = t.ID_SectionAssignment
GO
