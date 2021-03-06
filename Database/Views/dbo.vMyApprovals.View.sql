/****** Object:  View [dbo].[vMyApprovals]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMyApprovals]
AS
SELECT
       A.ID ,
	   m.Name,
       A.ID_Employee ,
       A.StartDate ,
       A.EndDate ,
       A.ID_FilingStatus ,
       A.ApproverStatus ,
	   A.IsPosted ,
	   p.Name [Employee] ,
	   fs.Name [FilingStatus] ,
	   ft.ID_MenuApproval ID_Menu ,
	   am.ID_User [ID_Approver],
	   u.Name [Approver] ,
	   ft.ID [ID_FilingType]
	
FROM (
SELECT 1 [ID_Name],o.ID , o.ID_Employee ,o.StartDate , o.EndDate , o.ID_FilingStatus,o.ApproverStatus,o.IsPosted FROM dbo.tOB o WHERE o.ID_FilingStatus = 1

UNION ALL

SELECT 2 [ID_Name],o.ID , o.ID_Employee ,o.WorkDate , o.WorkDate , o.ID_FilingStatus,o.ApproverStatus,o.IsPosted FROM dbo.tEmployeeMissedLog o WHERE o.ID_FilingStatus = 1

UNION ALL

SELECT 3 [ID_Name],o.ID , o.ID_Employee ,o.StartDate , o.EndDate , o.ID_FilingStatus,o.ApproverStatus,o.IsPosted FROM dbo.tLeave o WHERE o.ID_FilingStatus = 1

UNION ALL	

SELECT 4 [ID_Name],o.ID , o.ID_Employee ,o.WorkDate , o.WorkDate , o.ID_FilingStatus,o.ApproverStatus,o.IsPosted FROM dbo.tOvertime o WHERE o.ID_FilingStatus = 1

UNION ALL

SELECT 5 [ID_Name],o.ID , o.ID_Employee ,o.StartDate , o.EndDate , o.ID_FilingStatus,o.ApproverStatus,o.IsPosted FROM dbo.tEmployeeChangeOfSchedule o WHERE o.ID_FilingStatus = 1

UNION ALL 

SELECT 9 [ID_Name], vl.ID, vl.ID_Employee, vl.StartDate, vl.EndDate, vl.ID_FilingStatus, vl.ApproverStatus, vl.IsPosted FROM dbo.vLeave AS vl WHERE ID_TimekeepingItem= 48 AND vl.ID_FilingStatus = 1
)A
INNER JOIN dbo.tEmployee e ON e.ID = A.ID_Employee
INNER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT JOIN dbo.tFilingStatus fs ON fs.ID = a.ID_FilingStatus
LEFT JOIN dbo.vApproverMatrix am ON am.ID_Employee = a.ID_Employee 
LEFT JOIN dbo.tUser u ON u.ID = am.ID_User
LEFT JOIN dbo.tFilingType ft ON ft.ID = a.ID_Name
--LEFT JOIN dbo.tWebMenus wm2 ON ft.ID_WebMenuApproval = wm2.ID
LEFT JOIN dbo.tMenu m ON m.ID = ft.ID_MenuApproval
WHERE (ISNULL(A.ApproverStatus, 1) = am.ID_ApprovalLevel OR ISNULL(am.IsPowerApprover, 0) = 1)  
	AND ISNULL(A.IsPosted, 0) = 1
GO
