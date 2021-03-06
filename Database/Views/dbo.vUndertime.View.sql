/****** Object:  View [dbo].[vUndertime]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUndertime]
AS
 
SELECT ut.ID,ut.SeqNo,ut.IsActive,e.ID_Company,ut.Comment
	,ut.DateModified, ut.ID_Employee, ut.StartTime, ut.EndTime
	, ut.StartMinute, ut.EndMinute, ut.ComputedHours, ut.WorkDate
	, ut.ID_FilingStatus, ut.TempStartMinute, ut.TempEndMinute, ut.ComputedStartTime
	, ut.ComputedEndTime, ut.FollowingDay
	, c.Name AS Company
	, fs.Name AS FilingStatus
	, per.Name AS Employee
	, ut.Approved
	, ut.ApprovalDate
	, ut.ApproverStatus
	, ut.FileDate
	, ut.IsPosted
	, ut.DateCreated
	, ut.ApproverComment
	, ut.ForSecondHalf
	,ut.ScheduledTimeIn
	--,dbo.fGetApprovalHistory(ut.ID, 6) ApprovalHistory
	--,dbo.fGetLastApproverComment(ut.ID, 6) PreviousApproverComment
	,ut.ApprovalHistory
	,ut.PreviousApproverComment
	,per.ImageFile
	,g.Name as [Gender]
	,ut.Reason
	,ut.ID_User
	,u.Name [User]
	,dbo.fGetLastApprover(ut.ID, 6) LastApprover
	,ID_UserGroup
	, [ut].[GUID]
FROM dbo.tUndertime AS ut 
LEFT OUTER JOIN dbo.tCompany AS c ON c.ID = ut.ID_Company 
LEFT OUTER JOIN dbo.tFilingStatus AS fs ON fs.ID = ut.ID_FilingStatus 
LEFT OUTER JOIN dbo.tEmployee AS e ON e.ID = ut.ID_Employee 
LEFT OUTER JOIN dbo.tPersona AS per ON per.ID = e.ID_Persona 
LEFT OUTER JOIN dbo.tGender g ON g.ID = per.ID_Gender
LEFT OUTER JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department
LEFT OUTER JOIN dbo.tDivision div ON div.ID = dep.ID_Division	  
LEFT OUTER JOIN tUser u ON ut.ID_User = u.ID
GO
