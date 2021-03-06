/****** Object:  View [dbo].[vStore]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vStore] 
AS
SELECT	
s.ID,
s.ID_StoreMaintenance,
sm.Name StoreMaintenance,
s.IsActive,
s.ID_Area,
cr.ID_Company,
c.Name Company,
am.Name Area,
s.Is24H,
CONCAT(sm.Code,' - ',sm.Name) Name,
sm.Code,
d.ID ID_District,
dm.Name District
FROM tStore AS s
INNER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
INNER JOIN dbo.tDistrictMaintenance AS dm ON dm.ID = d.ID_DistrictMaintenance
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
GO
