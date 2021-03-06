/****** Object:  View [dbo].[vBranchLogDeviceActivity]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBranchLogDeviceActivity]
AS
SELECT blda.ID,
       bld.Name DeviceName,
       blda.LocalIPAddress,
       blda.SerialNo,
       blda.Activity,
       CASE blda.ActivityCode
           WHEN 1 THEN
               'Pull Attendance Log'
           ELSE
               CAST(blda.ActivityCode AS VARCHAR(24))
       END ActivityType,
       bld.IsActive IsBranchDeviceActive,
       bapc.ID ID_BranchPC,
       blda.AppPC_ID,
       bapc.Name BranchPCName,
       bapc.IsActive isBranchPCActive,
       b.ID ID_Branch,
       bm.Name BranchName
FROM dbo.tBranchLogDeviceActivity blda
LEFT JOIN dbo.tBranchLogDevice bld ON bld.SerialNo = blda.SerialNo
LEFT JOIN dbo.tBranchAppPC bapc ON bapc.AppPC_ID = blda.AppPC_ID
LEFT JOIN dbo.tBranch b ON b.ID = bapc.ID_Branch
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance;
GO
