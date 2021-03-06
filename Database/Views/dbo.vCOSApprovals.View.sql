/****** Object:  View [dbo].[vCOSApprovals]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
;

CREATE VIEW [dbo].[vCOSApprovals]
AS
SELECT v.ID,
       v.Employee,
       v.ID_Employee,
       v.FilingStatus,
       v.DateFiled,
       v.StartDate,
       v.EndDate,
       v.ID_FilingStatus,
       v.ApproverStatus,
       v.FileDate,
       v.Comment,
       v.ApprovalDate,
       v.IsPosted,
       v.DateCreated,
       v.Name,
       v.Reason,
       v.ApproverComment,
       am.ID_User,
       v.ApprovalHistory,
       v.PreviousApproverComment,
       v.ImageFile,
       v.Gender,
       u.EmailAddress AS ApproverEmail,
       am.IsPowerApprover,
       u.Name AS ApproverName,
       u.ID_Gender,
       e.EmailAddress AS WebUserEmailAddress,
       e.ID_CivilStatus,                                 --need sa web notification
       (e.FirstName + ' ' + e.LastName) AS EmployeeName, --need sa web notification
       e.ID_Company
FROM dbo.fGetEmployeeChangeOfScheduleWithAgeing(1) v
    INNER JOIN dbo.vApproverMatrix am
        ON am.ID_Employee = v.ID_Employee
    LEFT JOIN dbo.vUser u
        ON u.ID = am.ID_User
    LEFT JOIN dbo.vEmployee e
        ON v.ID_Employee = e.ID
WHERE ISNULL(v.ID_FilingStatus, 0) = 1
      AND
      (
          ISNULL(v.ApproverStatus, 1) = am.ID_ApprovalLevel
          OR ISNULL(am.IsPowerApprover, 0) = 1
      )
      AND ISNULL(v.IsPosted, 0) = 1;
GO
