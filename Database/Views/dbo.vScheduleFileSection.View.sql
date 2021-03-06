/****** Object:  View [dbo].[vScheduleFileSection]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleFileSection]
AS

SELECT td.ID,dm.Name,tsd.ID_Scheduler FROM dbo.tScheduler_Detail tsd
LEFT JOIN dbo.tEmployee te ON tsd.ID_Employee = te.ID
LEFT JOIN dbo.tDepartment td ON te.ID_Department = td.ID
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = td.ID_DepartmentMaintenance
GO
