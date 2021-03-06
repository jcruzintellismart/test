/****** Object:  View [dbo].[vDistrict]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vDistrict] 
AS
SELECT	
d.ID,
d.IsActive,
d.ID_CompanyRegion,
r.Name CompanyRegion,
cr.ID_Company,
c.Name Company,
d.ID_DistrictMaintenance,
dm.Name DistrictMaintenance,
dm.Name,
dm.Code
FROM tDistrict AS d
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tRegion AS r ON r.ID = cr.ID_Region
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
INNER JOIN dbo.tDistrictMaintenance AS dm ON dm.ID = d.ID_DistrictMaintenance
GO
