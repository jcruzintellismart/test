/****** Object:  View [dbo].[vOvertime]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOvertime]
AS
	   SELECT 
		o.ID ,
        o.ID_Employee ,
        o.ID_Attendance ,
        o.ID_PayrollItem ,
        o.ID_FilingStatus ,
        o.Date ,
        o.EffectivityDate ,
        o.ComputedHours ,
        o.ConsideredHours ,
        o.ApprovedHours ,
        o.StartMinute ,
        o.EndMinute ,
        o.TempStartMinute ,
        o.TempEndMinute ,
        o.ComputedStartTime ,
        o.ComputedEndTime ,
        o.WorkDate ,
        o.SeqNo ,
        o.IsPaid ,
        o.IsActive ,
        o.Comment ,
        o.DateTimeCreated ,
        o.DateTimeModified ,
        o.StartTime ,
        o.EndTime ,
        o.ID_Department ,
        o.EncodingDate ,
        o.IsBasic ,
        o.FollowingDay ,
        o.ID_WorkCredit ,
        o.ID_WebOvertime ,
        o.ApproverStatus ,
        o.ApproverComment ,
        o.FileDate ,
        o.StartDate ,
        o.EndDate ,
        o.ApprovalDate ,
        o.IsPosted ,
        o.Reason ,
        o.DateCreated ,
        p.Name,
        p.Name AS Employee,
        fs.Name AS FilingStatus,
        p.ImageFile,
       -- pi.Name AS OTType,
  --      dbo.fGetApprovalHistory(o.ID, 4) ApprovalHistory,
		--dbo.fGetLastApproverComment(o.ID, 4) PreviousApproverComment,
		o.ApprovalHistory,
		o.PreviousApproverComment,
		wc.Name AS WorkCredit,
		p.EmailAddress,
		g.Name AS Gender,
		CONVERT(DATETIME,o.ApprovalDate,101) DateApproved,
		o.ID_User,
		ID_UserGroup,
		u.Name [User]
		--,dbo.fGetLastApprover(o.ID, 4) LastApprover
		, [o].[GUID]
		--,e.ID_Company
		,CASE WHEN ID_WorkCredit = 1 THEN NULL ELSE o.ExpirationDate END ExpirationDate
		,CASE WHEN l.ID IS NOT NULL AND o.ID_WorkCredit = 2 THEN 1 ELSE 0 END UsedOffsetCredit
	FROM dbo.tOvertime o
	LEFT JOIN dbo.tEmployee e ON e.ID = o.ID_Employee
	LEFT JOIN dbo.tPersona p ON p.ID = e.ID_Persona
	LEFT JOIN dbo.tFilingStatus fs ON fs.ID = o.ID_FilingStatus
	--LEFT JOIN dbo.tPayrollItem pi ON pi.ID = o.ID_PayrollItem
	LEFT JOIN dbo.tWorkCredit wc ON wc.ID = o.ID_WorkCredit
	LEFT JOIN dbo.tGender g ON g.ID = p.ID_Gender
	LEFT OUTER JOIN tUser u ON u.ID  = o.ID_User
	LEFT JOIN dbo.tLeave_Offset_Detail AS lod ON lod.ID_Overtime = o.ID
	LEFT JOIN dbo.tLeave AS l ON l.ID = lod.ID_Leave AND l.ID_FilingStatus = 2
GO
