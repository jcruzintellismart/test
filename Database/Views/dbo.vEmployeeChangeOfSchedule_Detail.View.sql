/****** Object:  View [dbo].[vEmployeeChangeOfSchedule_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeChangeOfSchedule_Detail]
AS
SELECT        ecsd.ID, ecsd.ID_EmployeeChangeOfSchedule, ecsd.SchedDate, ecsd.Comment, ecsd.OldSched, ds.Name AS NewSched, ecsd.ID_NewSched, ecsd.IsRD, 
                         ecsd.IsSD, ecsd.ID_ForRDSD, frdsd.Name AS ForRDSD, ecsd.ReqRD, per.Name, cos.ID_Employee, ecsd.IsExecuted, ecsd.ID_TimekeepingItem
FROM            dbo.tEmployeeChangeOfSchedule_Detail AS ecsd LEFT OUTER JOIN
                         dbo.tForRDSD AS frdsd ON ecsd.ID_ForRDSD = frdsd.ID LEFT OUTER JOIN
                         dbo.tEmployeeChangeOfSchedule AS cos ON cos.ID = ecsd.ID_EmployeeChangeOfSchedule LEFT OUTER JOIN
                         dbo.tDailySchedule AS ds ON ds.ID = ecsd.ID_NewSched LEFT OUTER JOIN
                         dbo.tEmployee AS e ON e.ID = cos.ID_Employee LEFT OUTER JOIN
                         dbo.tPersona AS per ON per.ID = e.ID_Persona LEFT OUTER JOIN
						 dbo.tTimekeepingItem ti ON ti.ID = ecsd.ID_TimekeepingItem
GO
