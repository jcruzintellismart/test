/****** Object:  View [dbo].[vBranchMachine]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBranchMachine]
AS
SELECT bm.ID,
       bm.AppPC_ID,
       bm.IsActive,
       bm.ID_Branch,
       bm2.Name BranchName,
       b.IsActive IsBranchActive
FROM dbo.tBranchAppPC bm
LEFT JOIN dbo.tBranch b ON b.ID = bm.ID_Branch
INNER JOIN dbo.tBranchMaintenance AS bm2 ON bm2.ID = b.ID_BranchMaintenance;
GO
