/****** Object:  View [dbo].[vApprover_Employee_DetailWeb]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vApprover_Employee_DetailWeb]
AS
	SELECT      
		aed.ID ,
		aed.ID_Approver_Employee ,
		aed.ID_ApprovalLevel ,
		aed.ID_EmployeeApprover1 ,
		aed.ID_EmployeeApprover2 ,
		aed.ID_EmployeeApprover3 ,
		aed.ID_EmployeeApprover4 ,
		aed.ID_EmployeeApprover5 ,
		aed.IsPowerApprover ,
		e1.[Name] [EmployeeApprover1] ,
		e2.[Name] [EmployeeApprover2] ,
		e3.[Name] [EmployeeApprover3] ,
		e3.[Name] [EmployeeApprover4] ,
		e3.[Name] [EmployeeApprover5] ,
		al.[Name] [ApprovalLevel]
	FROM dbo.tApprover_Employee_Detail aed
	LEFT JOIN dbo.vEmployee e1 ON e1.ID = aed.ID_EmployeeApprover1
	LEFT JOIN dbo.vEmployee e2 ON e2.ID = aed.ID_EmployeeApprover2
	LEFT JOIN dbo.vEmployee e3 ON e3.ID = aed.ID_EmployeeApprover3
	LEFT JOIN dbo.vEmployee e4 ON e4.ID = aed.ID_EmployeeApprover4
	LEFT JOIN dbo.vEmployee e5 ON e5.ID = aed.ID_EmployeeApprover5
	LEFT JOIN dbo.tApprovalLevel al ON al.ID = aed.ID_ApprovalLevel
GO
