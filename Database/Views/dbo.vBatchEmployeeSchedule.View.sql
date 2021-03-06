/****** Object:  View [dbo].[vBatchEmployeeSchedule]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBatchEmployeeSchedule]
AS 
	SELECT 
		bes.ID,
		bes.Code,
		bes.Name,
		bes.ID_Company,
		c.Name Company,
		bes.StartDate,
		bes.SeqNo,
		bes.IsActive,
		bes.Comment,
		bes.ID_User,
		bes.ApproverStatus,
		bes.ID_FilingStatus,
		fs.Name FilingStatus,
		bes.IsPosted,
		bes.ApprovalDate,
		bes.isDefault,
		bes.ID_VerifierEmployee,
		bes.ID_ApproverEmployee,
		bes.ID_DocumentApprover,
		bes.ID_CreatedBy,
		bes.DateCreated,
		bes.ID_Department,
		bes.DateFiled,
		bes.ApproverComment,
		bes.IsExecuted,
		bes.DateExecuted,
		bes.ApprovalHistory,
		bes.PreviousApproverComment,
		bes.IsValid,
		bes.GUID,
		bes.IsValidRD
	FROM dbo.tBatchEmployeeSchedule AS bes
	INNER JOIN dbo.tCompany AS c ON c.ID = bes.ID_Company
	LEFT JOIN dbo.tFilingStatus AS fs ON fs.ID = bes.ID_FilingStatus
GO
