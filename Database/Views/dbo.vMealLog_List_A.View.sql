/****** Object:  View [dbo].[vMealLog_List_A]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMealLog_List_A]
AS
SELECT     0 AS ID, ml.AccessNo, EmployeeCode, EmployeeName, Department, LogDate, COUNT(LogDateTime) AS MealAvailment,e.ID ID_Employee
FROM         dbo.vMealLog_List ml INNER JOIN dbo.tEmployee e ON e.Code = EmployeeCode
GROUP BY ml.AccessNo, Department, LogDate, EmployeeCode, EmployeeName ,e.ID
GO
