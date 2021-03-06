/****** Object:  View [dbo].[vApproverMatrix]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vApproverMatrix]
AS
	SELECT DISTINCT * FROM
	(
		SELECT DISTINCT
			ea.ID [ID_Employee]
			, u.ID [ID_User]
			, apd.ID_ApprovalLevel
			, apd.IsPowerApprover
			, 0 [Special]
			, ap.ID ID_Approver
		FROM dbo.tuser u
		INNER JOIN dbo.tEmployee e ON u.ID_Employee = e.ID
		INNER JOIN dbo.tApprover_Detail apd 
			ON apd.ID_EmployeeApprover1 = e.ID
			OR apd.ID_EmployeeApprover2 = e.ID
			OR apd.ID_EmployeeApprover3 = e.ID
			OR apd.ID_EmployeeApprover4 = e.ID
			OR apd.ID_EmployeeApprover5 = e.ID
		INNER JOIN dbo.tApprover ap ON  ap.ID = apd.ID_Approver
		INNER JOIN dbo.tEmployee ea ON ap.ID_Store = ea.ID_Store
		WHERE ea.IsActive = 1 	
		-- Exclude special employee like exCon
		--AND ea.ID NOT IN
		--(
		--	SELECT DISTINCT ape.ID_Employee
		--	FROM dbo.tApprover_Employee ape 
		--	INNER JOIN dbo.tApprover_Employee_Detail aped ON aped.ID_Approver_Employee = ape.ID
		--	--WHERE ID_Store = ea.ID_Store	
		--)
		UNION ALL
		-- Add Special Approver --
		SELECT DISTINCT
			ap.ID_Employee
			, u.ID [ID_User]
			, apd.ID_ApprovalLevel
			, apd.IsPowerApprover
			, 1 [Special]
			, ap.ID ID_Approver
		FROM dbo.tuser u
		INNER JOIN dbo.tEmployee e ON u.ID_Employee = e.ID
		INNER JOIN dbo.tApprover_Employee_Detail apd 
			ON apd.ID_EmployeeApprover1 = e.ID
			OR apd.ID_EmployeeApprover2 = e.ID
			OR apd.ID_EmployeeApprover3 = e.ID
			OR apd.ID_EmployeeApprover4 = e.ID
			OR apd.ID_EmployeeApprover5 = e.ID
		INNER JOIN dbo.tApprover_Employee ap ON  ap.ID = apd.ID_Approver_Employee	
		INNER JOIN dbo.tApprover a ON a.ID = ap.ID_Approver	
	) A
GO
