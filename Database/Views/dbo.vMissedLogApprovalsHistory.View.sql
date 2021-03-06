/****** Object:  View [dbo].[vMissedLogApprovalsHistory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMissedLogApprovalsHistory]
AS
	SELECT  
		v.ID ,
		v.SeqNo ,
		v.IsActive ,
		v.Comment ,
		v.ID_Employee ,
		v.WorkDate ,
		v.ID_FilingStatus ,
		v.ApproverComment ,
		v.FileDate ,
		v.DateCreated ,
		v.IsPosted ,
		v.ApproverStatus ,
		v.Employee ,
		v.FilingStatus ,
		v.ApprovalHistory ,
		v.PreviousApproverComment ,
		v.ImageFile ,
		v.Reason,
		v.Gender, am.ID_User, u.EmailAddress AS ApproverEmail, am.IsPowerApprover, u.Name AS ApproverName, u.ID_Gender,
		e.EmailAddress AS WebUserEmailAddress
	FROM dbo.vEmployeeMissedLog v
	INNER JOIN dbo.vApproverMatrix am ON am.ID_Employee = v.ID_Employee
	LEFT JOIN dbo.vUser u ON u.id = am.ID_User
	LEFT JOIN dbo.vEmployee e ON v.ID_Employee = e.ID
	LEFT OUTER JOIN  dbo.tEmployeeDailySchedule eds ON eds.ID_Employee = v.ID_Employee  AND eds.date = v.Workdate
	WHERE ISNULL(v.ID_FilingStatus, 0) IN (2,3) AND ISNULL(eds.Posted,0) = 0
GO
