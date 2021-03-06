/****** Object:  View [dbo].[vzMealTracking]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzMealTracking]
AS
SELECT     TOP 100 PERCENT dm.Name AS Department, bm.Name AS Branch, c.Name AS Company, c.Address, p.Name AS Employee, ml.LogDate AS Date, 
                      ml.LogDateTime AS Time, ms.Name AS MealType, CASE WHEN ms.ID = 2 THEN 1 ELSE 0 END AS Breakfast, 
                      CASE WHEN ms.ID = 3 THEN 1 ELSE 0 END AS Lunch, CASE WHEN ms.ID = 4 THEN 1 ELSE 0 END AS Noon, 
                      CASE WHEN ms.ID = 5 THEN 1 ELSE 0 END AS Dinner, CASE WHEN ms.ID = 1 THEN 1 ELSE 0 END AS Midnight, e.ID AS ID_Employee, 
                      c.ID AS ID_Company, b.ID AS ID_Branch, d.ID AS ID_Department, ms.ID AS ID_MealSched, ms.MealAmt
FROM         dbo.tMealLog AS ml LEFT OUTER JOIN
                      dbo.tEmployee AS e ON e.AccessNo = ml.AccessNo LEFT OUTER JOIN
                      dbo.tMealSched AS ms ON ml.LogMinute >= ms.StartMinute AND ml.LogMinute <= ms.EndMinute LEFT OUTER JOIN
                      dbo.tPersona AS p ON p.ID = e.ID_Persona LEFT OUTER JOIN
                      dbo.tCompany AS c ON c.ID = e.ID_Company LEFT OUTER JOIN
                      dbo.tBranch AS b ON b.ID = e.ID_Branch LEFT OUTER JOIN
					  dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance LEFT OUTER JOIN 
                      dbo.tDepartment AS d ON d.ID = e.ID_Department LEFT OUTER JOIN 
					  dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
ORDER BY ml.LogDateTime
GO
