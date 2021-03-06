/****** Object:  View [dbo].[vBrand]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBrand]
AS
SELECT
b.ID,
bm.Code,
bm.Name,
bm.Name BrandMaintenance,
b.ID_BrandMaintenance,
b.IsActive,
b.ID_Store,
sm.Name Store,
cr.ID_Company,
c.Name Company
FROM dbo.tBrand AS b
LEFT JOIN dbo.tBrandMaintenance AS bm ON bm.ID = b.ID_BrandMaintenance
LEFT JOIN dbo.tStore AS s ON s.ID = b.ID_Store
LEFT JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
LEFT JOIN dbo.tArea AS a ON a.ID = s.ID_Area 
LEFT JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
LEFT JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
LEFT JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
GO
