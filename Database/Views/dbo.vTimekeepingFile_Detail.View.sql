/****** Object:  View [dbo].[vTimekeepingFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTimekeepingFile_Detail] 
AS
SELECT	
	[ID]
,ID_TimeKeepingFile
,Employee
,EmployeeCode
,Date
,DefaultSched
,LogsTimeIn
,LogsTimeOut
,OTTimeIn
,OTTimeOut
,ConsideredHours
,CostCenterCode
,OBTimeIn
,OBTimeOut
,Leave
,Schedule
,IsRD
,IsSD
FROM 
	tTimekeepingFile_Detail
GO
