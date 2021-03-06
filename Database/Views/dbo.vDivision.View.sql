/****** Object:  View [dbo].[vDivision]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vDivision]
AS
SELECT D.ID,
       D.Code,
       D.Name,
       D.ID_Company,
       D.SeqNo,
       D.IsActive,
       D.Comment,
       C.Name AS Company,
       D.ID_Company AS CompanyID,
       D.ID_Branch,
       bm.Name AS Branch,
       D.ID_Employee,
       p.LastName + ', ' + p.FirstName AS Employee
FROM dbo.tDivision AS D
LEFT OUTER JOIN dbo.tEmployee AS e ON e.ID = D.ID_Employee
LEFT OUTER JOIN dbo.tPersona AS p ON p.ID = e.ID_Persona
LEFT  OUTER JOIN dbo.tBranch AS b ON D.ID_Branch = b.ID
LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
INNER JOIN dbo.tArea AS a ON a.ID = b.ID_Area
INNER JOIN dbo.tDistrict AS dis ON dis.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = dis.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company AND D.ID_Company = C.ID;
GO
