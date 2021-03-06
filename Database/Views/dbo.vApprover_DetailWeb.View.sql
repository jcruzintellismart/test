/****** Object:  View [dbo].[vApprover_DetailWeb]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vApprover_DetailWeb] 
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
		ad.IsPowerApprover ,
		e1.[Name] [EmployeeApprover1] ,
		e2.[Name] [EmployeeApprover2] ,
		e3.[Name] [EmployeeApprover3] ,
		e3.[Name] [EmployeeApprover4] ,
		e3.[Name] [EmployeeApprover5] ,
		al.[Name] [ApprovalLevel]
	FROM dbo.tApprover_Detail ad 
	INNER JOIN dbo.tApprover a ON a.ID=ad.ID_Approver
	LEFT JOIN dbo.vEmployee e1 ON e1.ID = ad.ID_EmployeeApprover1
	LEFT JOIN dbo.vEmployee e2 ON e2.ID = ad.ID_EmployeeApprover2
	LEFT JOIN dbo.vEmployee e3 ON e3.ID = ad.ID_EmployeeApprover3
	LEFT JOIN dbo.vEmployee e4 ON e4.ID = ad.ID_EmployeeApprover4
	LEFT JOIN dbo.vEmployee e5 ON e5.ID = ad.ID_EmployeeApprover5
	LEFT JOIN dbo.tApprovalLevel al ON al.ID = ad.ID_ApprovalLevel
GO
