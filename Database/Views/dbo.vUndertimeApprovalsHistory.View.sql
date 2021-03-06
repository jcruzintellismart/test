/****** Object:  View [dbo].[vUndertimeApprovalsHistory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vUndertimeApprovalsHistory]
AS
	SELECT  
		v.ID ,
		v.SeqNo ,
		v.IsActive ,
		v.ID_Company ,
		v.Comment ,
		v.DateModified ,
		v.ID_Employee ,
		v.StartTime ,
		v.EndTime ,
		v.StartMinute ,
		v.EndMinute ,
		v.ComputedHours ,
		v.WorkDate ,
		v.ID_FilingStatus ,
		v.TempStartMinute ,
		v.TempEndMinute ,
		v.ComputedStartTime ,
		v.ComputedEndTime ,
		v.FollowingDay ,
		v.Company ,
		v.FilingStatus ,
		v.Employee ,
		v.Approved ,
		v.ApprovalDate ,
		v.ApproverStatus ,
		v.FileDate ,
		v.IsPosted ,
		v.DateCreated ,
		v.ApproverComment ,
		v.ForSecondHalf ,
		v.ScheduledTimeIn ,
		v.ApprovalHistory ,
		v.PreviousApproverComment ,
		v.ImageFile ,
		v.Reason,
		v.Gender, am.ID_User, u.EmailAddress AS ApproverEmail, am.IsPowerApprover, u.Name AS ApproverName, u.ID_Gender,
		e.EmailAddress AS WebUserEmailAddress
	FROM dbo.vUndertime v
	INNER JOIN dbo.vApproverMatrix am ON am.ID_Employee = v.ID_Employee
	LEFT JOIN dbo.vUser u ON u.ID = am.ID_User
	LEFT JOIN dbo.vEmployee e ON v.ID_Employee = e.ID
	LEFT OUTER JOIN  dbo.tEmployeeDailySchedule eds ON eds.ID_Employee = v.ID_Employee  AND eds.date = v.Workdate
	WHERE ISNULL(v.ID_FilingStatus, 0) IN (2,3)
		AND ISNULL(eds.Posted,0) = 0
GO
