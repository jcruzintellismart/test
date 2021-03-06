/****** Object:  View [dbo].[vBranchAssignment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBranchAssignment]
AS
SELECT ba.ID,
       ba.ID_Employee,
       ba.ID_Branch,
       ba.StartDate,
       ba.EndDate,
       ba.SeqNo,
       ba.Comment,
       bm.Name AS Branch,
       p.Name AS Employee,
       e.ID_Company,
	   c.Name Company,
       p.ImageFile,
       ba.DateApplied,
       ba.IsExecuted,
       ba.DateExecuted
FROM dbo.tEmployee AS e
LEFT OUTER JOIN dbo.tCompany AS c ON e.ID_Company = c.ID
LEFT OUTER JOIN dbo.tPersona AS p ON e.ID_Persona = p.ID
RIGHT OUTER JOIN dbo.tBranchAssignment AS ba 
LEFT OUTER JOIN dbo.tBranch AS b ON ba.ID_Branch = b.ID
ON e.ID = ba.ID_Employee
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance;
GO
