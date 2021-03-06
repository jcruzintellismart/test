/****** Object:  View [dbo].[vApprover]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vApprover] 
AS
	SELECT	
		a.ID ,
		a.[Name] ,
		a.SeqNo ,
		a.IsActive ,
		a.forOB ,
		a.forOT ,
		a.forLeave ,
		a.forCos ,
		a.forSchedule ,
		a.forMissedLog ,
		c.ID [ID_Company] ,
		c.[Name] [Company] ,
		a.ID_Store ,
		sm.[Name] [Store] ,
		s.ID_Area ,
		am.[Name] [Area]
	FROM dbo.tApprover a
	LEFT JOIN dbo.tStore s ON s.ID = a.ID_Store
	LEFT JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
	LEFT JOIN dbo.tArea r ON r.ID = s.ID_Area
	LEFT JOIN dbo.tAreaMaintenance AS am ON am.ID = r.ID_AreaMaintenance
	LEFT JOIN dbo.tDistrict AS d ON d.ID = r.ID_District
	LEFT JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
	LEFT JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
GO
