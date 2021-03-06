/****** Object:  View [dbo].[vBranch]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBranch]
AS
SELECT b.ID,
       b.IsActive,
       b.ID_WeeklySchedule,
       b.ID_BranchGroup,
       b.EmailAddress,
       b.Address,
       b.RDOCode,
       bg.Name AS BranchGroup,
       ws.Name AS WeeklySchedule,
       b.ZipCode,
       b.TelNo,
	   b.ID_Area,
	   am.Name Area,
	   b.ID_BranchMaintenance,
	   bm.Name BranchMaintenance,
	   cr.ID_Company,
	   c.Name Company,
	   bm.Name,
	   bm.Code
FROM dbo.tBranch AS b
	INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
	INNER JOIN dbo.tArea AS a ON a.ID = b.ID_Area
	INNER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
    INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
	INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
	INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
    LEFT OUTER JOIN dbo.tBranchGroup AS bg ON bg.ID = b.ID_BranchGroup
    LEFT OUTER JOIN dbo.tWeeklySchedule AS ws ON ws.ID = b.ID_WeeklySchedule;
GO
