/****** Object:  View [dbo].[vMealLogFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMealLogFile]
AS
SELECT MLF.ID,
       MLF.Code,
       MLF.Name,
       MLF.Path,
       MLF.ID_Company,
       MLF.ID_Branch,
       MLF.StartDateTime,
       MLF.EndDateTime,
       MLF.SeqNo,
       MLF.IsActive,
       MLF.Comment,
       MLF.DateTimeCreated,
       MLF.DateTimeModified,
       MLF.DateCreated,
       MLF.DateModified,
       dbo.tCompany.Name AS Company,
       bm.Name AS Branch
FROM dbo.tMealLogFile MLF
LEFT OUTER JOIN dbo.tBranch AS b ON MLF.ID_Branch = b.ID
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tCompany ON MLF.ID_Company = dbo.tCompany.ID;
GO
