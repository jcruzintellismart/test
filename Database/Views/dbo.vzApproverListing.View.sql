/****** Object:  View [dbo].[vzApproverListing]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzApproverListing] AS
	SELECT 
		s.ID ID_Store
		, sm.[Name] Store
		, ad.ID_EmployeeApprover1
		, ad.ID_EmployeeApprover2
		, ad.ID_EmployeeApprover3
		, ad.ID_EmployeeApprover4
		, ad.ID_EmployeeApprover5
		, p1.[Name] EmployeeApprover1
		, p2.[Name] EmployeeApprover2
		, p3.[Name] EmployeeApprover3
		, p4.[Name] EmployeeApprover4
		, p5.[Name] EmployeeApprover5
		, ad.ID_ApprovalLevel
		, al.[Name] ApprovalLevel
		, CASE WHEN ISNULL(ad.IsPowerApprover, 0) = 1 THEN 'YES' ELSE 'NO' END PowerApprover
	FROM dbo.tApprover_Detail ad
	LEFT JOIN dbo.tApprover a ON a.ID = ad.ID_Approver
	LEFT OUTER JOIN dbo.tStore s ON s.ID = a.ID_Store
	LEFT OUTER JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
	LEFT OUTER JOIN dbo.tApprovalLevel al ON al.ID = ad.ID_ApprovalLevel
	LEFT OUTER JOIN dbo.tEmployee e1 ON e1.ID = ad.ID_EmployeeApprover1
	LEFT OUTER JOIN dbo.tEmployee e2 ON e2.ID = ad.ID_EmployeeApprover2
	LEFT OUTER JOIN dbo.tEmployee e3 ON e3.ID = ad.ID_EmployeeApprover3
	LEFT OUTER JOIN dbo.tEmployee e4 ON e4.ID = ad.ID_EmployeeApprover4
	LEFT OUTER JOIN dbo.tEmployee e5 ON e5.ID = ad.ID_EmployeeApprover5
	LEFT OUTER JOIN dbo.tPersona p1 ON p1.ID = e1.ID_Persona
	LEFT OUTER JOIN dbo.tPersona p2 ON p2.ID = e2.ID_Persona
	LEFT OUTER JOIN dbo.tPersona p3 ON p3.ID = e3.ID_Persona
	LEFT OUTER JOIN dbo.tPersona p4 ON p4.ID = e4.ID_Persona
	LEFT OUTER JOIN dbo.tPersona p5 ON p5.ID = e5.ID_Persona
GO
