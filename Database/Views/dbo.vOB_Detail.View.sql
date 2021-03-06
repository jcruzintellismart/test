/****** Object:  View [dbo].[vOB_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOB_Detail]
AS
SELECT TOP 100 PERCENT
	dbo.fValidationOB(ob_d.ID) IsValid
	, ob_d.ID 
	, ob_d.Date 
	, ob_d.StartTime 
	, ob_d.EndTime 
	, ob_d.StartMinute 
	, ob_d.EndMinute 
	, ob_d.ComputedTimeIn 
	, ob_d.ComputedTimeOut 
	, ob_d.ID_OB 
	, ob_d.IsActive 
	, ob_d.Comment 
	, ob_d.TempStartMinute 
	, ob_d.TempEndMinute
	, o.ID_Employee
FROM dbo.tOB_Detail ob_d
	LEFT JOIN dbo.tOB o ON ob_d.ID_OB = o.ID
	ORDER BY ob_d.Date, ob_d.StartTime, o.ID_Employee ASC
GO
