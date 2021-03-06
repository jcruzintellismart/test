/****** Object:  View [dbo].[vFilingType_DetailApprovals]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vFilingType_DetailApprovals]
AS
SELECT  a.ID 
	, a.ID_FilingType 
	, a.ID_Employee 
	, p.Name
	, a.FileDate 
	, a.ApproverStatus
	, u.ID ID_User
FROM (
	SELECT o.ID
		, 1 ID_FilingType
		, o.ID_Employee 
		, o.FileDate
		, o.ApproverStatus
	FROM dbo.tOB o
	WHERE o.ID_FilingStatus = 1
		AND o.IsPosted = 1

	UNION ALL

	SELECT eml.ID
		, 2 ID_FilingType
		, eml.ID_Employee 
		, eml.FileDate
		, eml.ApproverStatus
	FROM dbo.tEmployeeMissedLog eml
	WHERE eml.ID_FilingStatus = 1
		AND eml.IsPosted = 1

	UNION ALL

	SELECT l.ID
		, 3 ID_FilingType
		, l.ID_Employee 
		, l.FileDate
		, l.ApproverStatus
	FROM dbo.tLeave l 
	WHERE l.ID_FilingStatus = 1
		AND l.IsPosted = 1

	UNION ALL

	SELECT o.ID
		, 4 ID_FilingType
		, o.ID_Employee 
		, o.FileDate
		, o.ApproverStatus
	FROM dbo.tOvertime o
	WHERE o.ID_FilingStatus = 1
		AND o.IsPosted = 1

	UNION ALL

	SELECT ecos.ID
		, 5 ID_FilingType
		, ecos.ID_Employee 
		, ecos.FileDate
		, ecos.ApproverStatus
	FROM dbo.tEmployeeChangeOfSchedule ecos
	WHERE ecos.ID_FilingStatus = 1
		AND ecos.IsPosted = 1

	UNION ALL

	SELECT u.ID
		, 6 ID_FilingType
		, u.ID_Employee 
		, u.FileDate
		, u.ApproverStatus
	FROM dbo.tUndertime u
	WHERE u.ID_FilingStatus = 1
		AND u.IsPosted = 1 
) a
	INNER JOIN dbo.vApproverMatrix am ON am.ID_Employee = a.ID_Employee  
	INNER JOIN dbo.tEmployee e ON e.ID = a.ID_Employee
	INNER JOIN dbo.tPersona p ON e.ID_Persona = p.ID
	LEFT OUTER JOIN dbo.tUser u ON am.ID_User = u.ID
WHERE (ISNULL(a.ApproverStatus, 1) = am.ID_ApprovalLevel OR ISNULL(am.IsPowerApprover, 0) = 1)
GO
