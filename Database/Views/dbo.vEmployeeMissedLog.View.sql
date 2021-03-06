/****** Object:  View [dbo].[vEmployeeMissedLog]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeMissedLog] 
AS
SELECT	
	eml.ID ,
	eml.SeqNo ,
	eml.IsActive ,
	eml.Comment ,
	eml.ID_Employee ,
	eml.WorkDate ,
	eml.ID_FilingStatus,
	eml.ApproverComment,
	eml.FileDate,
	eml.DateCreated,
	eml.IsPosted,
	eml.ApproverStatus,
	per.Name Employee,
	fs.Name FilingStatus,
	--dbo.fGetApprovalHistory(eml.ID, 2) ApprovalHistory,
	--dbo.fGetLastApproverComment(eml.ID, 2) PreviousApproverComment,
	eml.ApprovalHistory,
	eml.PreviousApproverComment,
	per.ImageFile,
	g.Name Gender,
	--eml.Reason,
	eml.ID_EmployeeMissedLogFile_Detail,
	eml.ApprovalDate,
	CONVERT(DATETIME,ApprovalDate,101) DateApproved,
	eml.DateExecuted,
	eml.DateTimeModified,
	eml.ID_User
	, [eml].[GUID]
	,eml.ID_Reason
	, r.[Name] Reason
FROM tEmployeeMissedLog eml
INNER JOIN temployee e ON eml.ID_Employee = e.ID
INNER JOIN dbo.tPersona per ON e.ID_Persona = per.ID
LEFT JOIN dbo.tGender g ON g.ID = per.ID_Gender
LEFT JOIN dbo.tReason r ON r.ID = eml.ID_Reason
LEFT OUTER JOIN dbo.tFilingStatus fs ON eml.ID_FilingStatus = fs.ID
GO
