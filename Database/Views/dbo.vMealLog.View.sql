/****** Object:  View [dbo].[vMealLog]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMealLog]
AS
SELECT T.ID,
       e.ID_Company,
       dm.Code AS DepartmentCode,
       D.ID AS ID_Department,
       dm.Name AS Department,
       T.AccessNo,
       E.ID ID_Employee,
       E.Code AS EmployeeCode,
       T.LogDateTime,
       T.LogDate,
       MS.Name AS MealTime,
       T.LogMinute,
       T.LogYear,
       T.LogMonth,
       T.LogYearMonth,
       T.LogYearMonthLastYear,
       T.LogMonthDate,
       MS.ID AS ID_MealSched,
       P.LastName,
       P.FirstName,
       P.Name AS EmployeeName,
       MS.StartMinute,
       dbo.fMealLogDTD(T.AccessNo, T.LogDateTime) AS DTD,
       dbo.fMealLogMTD(T.AccessNo, T.LogDateTime) AS MTD,
       dbo.fMealLogYTD(T.AccessNo, T.LogDateTime) AS YTD,
       dbo.fMealLogDTD(T.AccessNo, DATEADD(YEAR, -1, T.LogDateTime)) AS DTDLY,
       dbo.fMealLogMTD(T.AccessNo, DATEADD(YEAR, -1, T.LogDateTime)) AS MTDLY,
       dbo.fMealLogYTD(T.AccessNo, DATEADD(YEAR, -1, T.LogDateTime)) AS YTDLY,
       T.IsVoided,
       T.Amount,
       T.ID_MealType,
       mt.Name AS MealType,
       T.Comment,
       C.Name AS Company,
       MS.MealAmt,
       P.ImageFile,
       T.ID_MealLogFile,
       MS.Name MealSched
FROM dbo.tDepartment AS D
RIGHT OUTER JOIN dbo.tMealSched AS MS
RIGHT OUTER JOIN dbo.tEmployee AS E
LEFT OUTER JOIN dbo.tBranch AS BR ON E.ID_Branch = BR.ID
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = br.ID_BranchMaintenance
RIGHT OUTER JOIN dbo.tMealLog AS T ON E.AccessNo = T.AccessNo
ON MS.StartMinute <= T.LogMinute AND MS.EndMinute >= T.LogMinute
ON D.ID = E.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tPersona AS P ON E.ID_Persona = P.ID
LEFT OUTER JOIN dbo.tMealType AS mt ON mt.ID = T.ID_MealType
LEFT OUTER JOIN dbo.tCompany AS C ON E.ID_Company = C.ID;
GO
