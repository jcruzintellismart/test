/****** Object:  View [dbo].[vSection]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vSection]
AS
SELECT 
s.ID ,
        s.Code ,
        s.Name ,
        s.ID_Company ,
        s.SeqNo ,
        s.IsActive ,
        s.Comment ,
        s.ID_Department ,
        s.ID_Branch ,
        s.ID_Division,
        c.Name AS Company,
        bm.Name AS Branch,
        div.Name AS [Division],
        dm.Name AS Department,
        s.Series,
        s.Name + ' (' + ISNULL(dm.Name, '') + ')' SectionDept
FROM dbo.tSection s
LEFT JOIN dbo.tCompany c ON c.ID = s.ID_Company
LEFT JOIN dbo.tBranch b ON b.ID = s.ID_Branch
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
LEFT JOIN dbo.tDivision div ON div.ID = s.ID_Division
LEFT JOIN dbo.tDepartment dept ON dept.ID = s.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dept.ID_DepartmentMaintenance
GO
