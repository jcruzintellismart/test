/****** Object:  View [dbo].[vArea]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vArea]
AS
SELECT 
a.ID,
a.IsActive,
a.ID_District,
dm.Name District,
c.ID ID_Company,
c.Name Company,
a.ID_AreaMaintenance,
am.Name AreaMaintenance,
am.Code,
am.Name 
FROM dbo.tArea AS a
INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
INNER JOIN dbo.tDistrictMaintenance AS dm ON dm.ID = d.ID_DistrictMaintenance
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
INNER JOIN tAreaMaintenance am ON am.ID = a.ID_AreaMaintenance
GO
