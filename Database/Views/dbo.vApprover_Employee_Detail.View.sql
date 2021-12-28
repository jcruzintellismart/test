/****** Object:  View [dbo].[vApprover_Employee_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vApprover_Employee_Detail]
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
		aed.IsPowerApprover
	FROM dbo.tApprover_Employee_Detail aed
GO
