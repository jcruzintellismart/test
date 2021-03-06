/****** Object:  View [dbo].[vJobClass]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vJobClass]
AS
SELECT JC.ID,
       JC.IsActive,
       JC.NDStartTime,
       JC.NDEndTime,
       jg.Name AS JobClassGroup,
       JC.AutoApproveHoliday,
       JC.MinOTHours,
       JC.CanFileOffSet,
	   JC.CanFilePayroll,
       JC.AutoApproveRestDay,
       JC.ID_JobClassGroup,
	   JC.ID_Store,
	   sm.Name Store,
	   jc.ID_Brand,
	   bm.Name Brand,
	   cr.ID_Company,
	   c.Name Company,
	   jc.ID_JobClassMaintenance,
	   jcm.Name JobClassMaintenance,
	   jcm.Name,
	   jcm.Code
FROM dbo.tJobClass AS jc
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
INNER JOIN dbo.tStore AS s ON s.ID = jc.ID_Store
INNER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
LEFT JOIN dbo.tBrand AS b ON b.ID = jc.ID_Brand
LEFT JOIN dbo.tBrandMaintenance AS bm ON bm.ID = b.ID_BrandMaintenance
LEFT JOIN dbo.tJobClassGroup AS jg ON JC.ID_JobClassGroup = jg.ID
GO
