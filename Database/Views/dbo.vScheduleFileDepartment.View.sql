/****** Object:  View [dbo].[vScheduleFileDepartment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleFileDepartment]  
AS  
SELECT DISTINCT * FROM (  
SELECT 99 [ID],NULL [Name],tsd.ID_Scheduler , NULL SeqNo  
FROM dbo.vScheduler_Detail tsd  
LEFT JOIN dbo.tEmployee te ON tsd.ID_Employee = te.ID  
  
  
UNION ALL  
  
  
SELECT d.ID,dm.Name,tsd.ID_Scheduler , NULL SeqNo  
FROM dbo.vScheduler_Detail tsd  
LEFT JOIN dbo.tEmployee te ON tsd.ID_Employee = te.ID  
--LEFT JOIN dbo.tDepartment td ON te.ID_Department = td.ID  
LEFT JOIN dbo.tDepartment d ON d.ID = te.ID_Department 
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance 
WHERE tsd.ID_Department <> 16  
)A
GO
