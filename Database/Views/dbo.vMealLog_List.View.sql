/****** Object:  View [dbo].[vMealLog_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMealLog_List]
AS
SELECT     ML.ID, ML.AccessNo, ISNULL(ML.Department, '(Unknown)') AS Department, ML.LogDateTime, ML.LogDate, ISNULL(ML.MealTime, '(Unknown)') 
                      AS MealTime, ML.MealType, ML.MealAmt, ISNULL(ML.EmployeeCode, '(Unknown)') AS EmployeeCode, ISNULL(ML.EmployeeName, '(Unknown)') 
                      AS EmployeeName, ML.StartMinute, ML.DTD, ML.MTD, ML.YTD, ML.DTDLY, ML.MTDLY, ML.YTDLY, freq.DateLogCount, 
                      ML.ID_Company, ML.Company
FROM         dbo.vMealLog ML INNER JOIN
                          (SELECT     LogDate, AccessNo, COUNT(AccessNO) AS DateLogCount
                            FROM          vMealLog
                            GROUP BY Logdate, AccessNo) freq ON freq.AccessNo = ML.AccessNo AND freq.LogDate = ML.LogDate
GO
