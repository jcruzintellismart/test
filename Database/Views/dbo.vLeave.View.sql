/****** Object:  View [dbo].[vLeave]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeave]
AS
SELECT L.ID
	, E.ID_Company
	, L.ID_Employee
	--, L.ID_LeavePayrollItem
	, L.ID_TimekeepingItem
	, L.ID_FilingStatus
	, L.StartDate
	, L.EndDate
	, P.ImageFile
	, L.Days
	, L.Comment
	, P.Name AS Employee
	--, PI.Name AS LeavePayrollItem
	, ti.Name AS TimekeepingItem
	, FS.Name AS FilingStatus
	, L.FileDate
	, L.DaysWithPay
	, L.ApprovalDate
	, L.Emergency
	, L.IsActive
	, L.ID_LeaveFile_Detail
	, P.Name
	, L.ID_Region
	, L.BereavementDays
	, P.EmailAddress
	, P.AlternateEmailAddress
	, L.ApproverStatus
	, l.IsPosted
	, L.DateCreated
	, l.Reason
	, l.ApproverComment
	--, dbo.fGetApprovalHistory(l.ID, 3) ApprovalHistory
	--, dbo.fGetLastApproverComment(l.ID, 3) PreviousApproverComment
	, l.ApprovalHistory
	, l.PreviousApproverComment
	, g.Name Gender
	, l.ID_TimeKeepingFile_Detail
	, CONVERT(DATETIME,ApprovalDate,101) DateApproved
	, l.ID_User
	, l.DateTimeModified
	, [l].[GUID]
	, l.FromBatchEmpSched
FROM dbo.tLeave l
LEFT OUTER JOIN dbo.tFilingStatus fs ON fs.ID=l.ID_FilingStatus
LEFT OUTER JOIN dbo.tEmployee e ON e.ID=l.ID_Employee
LEFT OUTER JOIN dbo.tDepartment dep ON dep.ID=e.ID_Department
LEFT OUTER JOIN dbo.tBranch br ON br.ID=e.ID_Branch
LEFT OUTER JOIN dbo.tPersona p ON p.ID=e.ID_Persona
LEFT JOIN dbo.tGender g ON g.ID = p.ID_Gender
LEFT OUTER JOIN dbo.tTimekeepingItem AS ti ON ti.ID = l.ID_TimekeepingItem
--LEFT OUTER JOIN dbo.tPayrollItem pi ON pi.ID=l.ID_LeavePayrollItem
GO
