/****** Object:  View [dbo].[vMassAssignment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vMassAssignment] 
AS
SELECT	
ma.ID
,ma.SeqNo
,ma.IsActive

,ma.Comment
,p.ID AS ID_Parameter
,p.NAME AS Parameter
,f.ID ID_FilingStatus
,f.Name AS FilingStatus
,w.ID AS ID_WeeklySchedule
,w.Name AS WeeklySchedule
FROM 
	tMassAssignment ma LEFT OUTER JOIN 
	dbo.tParameter p ON p.ID = ma.ID_Parameter LEFT OUTER JOIN 
	dbo.tFilingStatus f ON f.ID = ma.ID_FilingStatus LEFT OUTER JOIN 
	dbo.tWeeklySchedule w ON w.ID = ma.ID_WeeklySchedule
GO
