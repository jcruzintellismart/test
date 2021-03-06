/****** Object:  View [dbo].[vUserGroupStore]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupStore]
AS

SELECT  
	  ugs.ID
	, ugs.ID_UserGroup
	, ug.[Name]
	, ugs.Comment
	, s.ID ID_Store
	, sm.[Name] Store
	, a.ID ID_Area
	, am.[Name] Area
	, d.ID ID_District
	, dm.[Name] District
	, cr.ID ID_CompanyRegion
	, r.ID ID_Region
	, r.[Name] Region
	, c.ID ID_Company
	, c.[Name] Company
	, ugs.ID_User
	, u.[Name] [User]
FROM dbo.tStore AS s 
INNER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
INNER JOIN dbo.tDistrict AS d ON d.ID = a.ID_District
INNER JOIN dbo.tDistrictMaintenance AS dm ON dm.ID = d.ID_DistrictMaintenance
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
INNER JOIN dbo.tRegion AS r ON r.ID = cr.ID_Region
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
RIGHT OUTER JOIN dbo.tUserGroupStore AS ugs ON s.ID = ugs.ID_Store
LEFT OUTER JOIN dbo.tUser AS u ON u.ID = ugs.ID_User AND u.ID_UserGroup = ugs.ID_UserGroup
LEFT OUTER JOIN dbo.tUserGroup AS ug ON ugs.ID_UserGroup = ug.ID
GO
