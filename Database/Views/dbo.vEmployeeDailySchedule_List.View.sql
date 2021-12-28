/****** Object:  View [dbo].[vEmployeeDailySchedule_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailySchedule_List]
AS 


SELECT     ID, Employee, Date, Day, EmployeeCode, ID_DailySchedule,  DayType, IsRD , StraightDuty, REG, OT, ND, NDOT, TARDY, UT, 
                      IsAbsent , Absences, IsForChecking  ,IsForComputation,Posted ,  Comment
FROM         dbo.vEmployeeDailySchedule
GO
