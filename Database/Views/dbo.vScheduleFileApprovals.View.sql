/****** Object:  View [dbo].[vScheduleFileApprovals]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
;

CREATE VIEW [dbo].[vScheduleFileApprovals]
AS
SELECT v.ID,
       v.Code,
       v.Name,
       v.ID_Company,
       v.SeqNo,
       v.IsActive,
       v.Comment,
       v.Company,
       v.StartDate,
       v.ID_User,
       v.ApproverStatus,
       v.ID_FilingStatus,
       v.IsPosted,
       v.ApprovalDate,
       v.DateCreated,
       v.isDefault,
       v.FilingStatus,
       v.ID_VerifierEmployee,
       v.ID_ApproverEmployee,
       v.ID_DocumentApprover,
       v.DocumentApprover,
       v.ID_CreatedBy,
       v.PreviousApprover,
       v.CreatedBy,
       v.Employee,
       v.ID_Employee,
       am.ID_User AS ID_User2,
       u.EmailAddress AS ApproverEmail,
       am.IsPowerApprover,
       u.Name AS ApproverName,
       u.ID_Gender,
       am.ID_ApprovalLevel,
       v.ID_Department,
       e.EmailAddress AS WebUserEmailAddress,
       v.DateFiled,
       v.ApprovalHistory,
       v.PreviousApproverComment,
       v.Department,
       v.ApproverComment
FROM dbo.fGetScheduleFileWithAgeing(1) v
    LEFT JOIN dbo.vUser u2
        ON u2.ID = v.ID_User
    LEFT JOIN dbo.vApproverMatrix am
        ON am.ID_Employee = u2.ID_Employee
    LEFT JOIN dbo.vUser u
        ON u.ID = am.ID_User
    LEFT JOIN dbo.vEmployee e
        ON v.ID_Employee = e.ID
WHERE
    --(v.ApproverStatus = am.ID_ApprovalLevel OR ISNULL(am.IsPowerApprover, 0) = 1)  
    ISNULL(v.ID_FilingStatus, 0) = 1
    AND
    (
        ISNULL(v.ApproverStatus, 1) = am.ID_ApprovalLevel
        OR ISNULL(am.IsPowerApprover, 0) = 1
    )
    AND ISNULL(v.IsPosted, 0) = 1;
GO
