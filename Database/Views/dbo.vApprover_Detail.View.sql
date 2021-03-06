/****** Object:  View [dbo].[vApprover_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vApprover_Detail] 
AS
	SELECT	
		ad.ID ,
		ad.Code ,
		ad.SeqNo ,
		ad.IsActive ,
		ad.ID_Approver ,
		ad.ID_ApprovalLevel ,
		ad.ID_EmployeeApprover1 ,
		ad.ID_EmployeeApprover2 ,
		ad.ID_EmployeeApprover3 ,
		ad.ID_EmployeeApprover4 ,
		ad.ID_EmployeeApprover5 ,
		ad.IsPowerApprover,
		c.ID [ID_Company],
		c.[Name] [Company]
	FROM dbo.tApprover_Detail ad
	LEFT JOIN dbo.tApprover a ON a.ID = ad.ID_Approver
	LEFT JOIN dbo.tStore s ON s.ID = a.ID_Store
	LEFT JOIN dbo.tArea AS a2 ON a2.ID = s.ID_Area
	LEFT JOIN dbo.tDistrict AS d ON d.ID = a2.ID_District
	LEFT JOIN dbo.tCompanyRegion AS cr ON cr.ID = d.ID_CompanyRegion
	LEFT JOIN dbo.tCompany c ON c.ID = cr.ID_Company
GO
