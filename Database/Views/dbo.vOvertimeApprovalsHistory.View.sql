/****** Object:  View [dbo].[vOvertimeApprovalsHistory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOvertimeApprovalsHistory]
AS
	SELECT  
		v.ID ,
		v.ID_Employee ,
		v.ID_Attendance ,
		v.ID_PayrollItem ,
		v.ID_FilingStatus ,
		v.Date ,
		v.Name ,
		v.ComputedHours ,
		v.ConsideredHours ,
		v.ApprovedHours ,
		v.ImageFile ,
		v.SeqNo ,
		v.IsActive ,
		v.Comment ,
		v.DateTimeCreated ,
		v.DateTimeModified ,
		v.Employee ,
		v.FilingStatus ,
		v.IsPaid ,
		--v.OTType ,
		v.StartTime ,
		v.EndTime ,
		v.EffectivityDate ,
		v.EncodingDate ,
		v.StartMinute ,
		v.EndMinute ,
		v.TempStartMinute ,
		v.TempEndMinute ,
		v.ComputedStartTime ,
		v.ComputedEndTime ,
		v.WorkDate ,
		v.IsBasic ,
		v.FollowingDay ,
		v.ID_WorkCredit ,
		v.WorkCredit ,
		v.EmailAddress ,
		v.ID_WebOvertime ,
		v.ApproverStatus ,
		v.ApproverComment ,
		v.FileDate ,
		v.StartDate ,
		v.EndDate ,
		v.ApprovalDate ,
		v.IsPosted ,
		--v.TotalOTHour ,
		v.DateCreated ,
		v.ApprovalHistory ,
		v.PreviousApproverComment ,
		v.Reason,
		v.Gender, am.ID_User, u.EmailAddress AS ApproverEmail, am.IsPowerApprover, u.Name AS ApproverName, u.ID_Gender,
		e.EmailAddress AS WebUserEmailAddress
	FROM dbo.vOvertime v
	INNER JOIN dbo.vApproverMatrix am ON am.ID_Employee = v.ID_Employee
	LEFT JOIN dbo.vUser u ON u.ID = am.ID_User
	LEFT JOIN dbo.vEmployee e ON v.ID_Employee = e.ID
	LEFT OUTER JOIN  dbo.tEmployeeDailySchedule eds ON eds.ID_Employee = v.ID_Employee  AND eds.date = v.Workdate
	WHERE ISNULL(v.ID_FilingStatus, 0) IN (2,3) AND ISNULL(eds.Posted,0) = 0
GO
