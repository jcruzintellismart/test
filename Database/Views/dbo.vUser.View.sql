/****** Object:  View [dbo].[vUser]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUser]
AS
SELECT TOP 999999
'' AS tmpLabel,
u.ID, 
u.LogInName, 
u.Name, 
u.[Password], 
u.IsActive, 
u.Comment, 
u.ID_UserGroup, 
u.ID_SystemAgent, 
u.DateTimeCreated, 
u.DateTimeModified, 
u.ImageFile, 
u.ID_Persona, 
per.Name Persona,
u.ID_Employee, 
u.ID_Approver1, 
u.ID_Approver2, 
u.InvalidLogCount, 
u.IsFirstLog, 
u.LastPasswordChangeDate, 
u.IsBlocked, 
u.IsExpired, 
u.ForScheduler, 
u.IsApprover, 
u.LoginCount, 
u.ID_Applicant,
e.ID_Designation, 
dm.Name AS Designation, 
jcm.Name AS JobClass,
p.EmailAddress, 
p.AlternateEmailAddress, 
p.NickName, 
p.LastName, 
p.FirstName, 
p.MiddleName, 
p.Name AS Employee, 
p.ID_Gender, 
g.Name Gender,
ug.Name AS UserGroup,
sa.Name AS SystemAgent,
e.ID_Company,
c.Name Company,
c.Address CompanyAddress,
e.ID_Branch,
bm.Name Branch,
e.ID_Department,
dm2.Name Department ,
NULL Applicant,
BlockedDate,
u.ID_SecretQuestion,
tsq.Name SecretQuestion,
u.SecretAnswer,
u.ID_WebUserGroup,
u.ID_UserType,
ut.Name UserType,
p.ID ID_EmployeePersona,
p.ContactNo UserContactNo,
p.ImageFile ProfileImage,
sk.Name AS Skins,
0 ApplicantUserGroup,
ug.ID_ApplicationType,
u.ID_CompanyHistory
,NULL SeqNo, u.GUID
FROM dbo.tUser u
LEFT JOIN dbo.tEmployee e ON e.ID = u.ID_Employee
LEFT JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT JOIN dbo.tPersona per ON per.ID = u.ID_Persona
LEFT JOIN dbo.tDesignation d ON d.ID = e.ID_Designation
LEFT JOIN dbo.tDesignationMaintenance AS dm ON dm.ID = d.ID_DesignationMaintenance
LEFT JOIN dbo.tJobClass jc ON jc.ID = d.ID_JobClass
LEFT JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
LEFT JOIN dbo.tUserGroup ug ON ug.ID = u.ID_UserGroup
LEFT JOIN dbo.tSystemAgent sa ON sa.ID = u.ID_SystemAgent
LEFT JOIN dbo.tUserGroupCompany ugc ON ugc.ID_UserGroup = u.ID_UserGroup AND ugc.ID_Company = e.ID_Company
LEFT JOIN dbo.tCompany c ON c.ID = e.ID_Company
LEFT JOIN dbo.tBranch b ON b.ID = e.ID_Branch
LEFT JOIN dbo.tBranchMaintenance AS bm ON bm.ID = b.ID_BranchMaintenance
LEFT JOIN dbo.tDepartment dep ON e.ID_Department = dep.ID
LEFT JOIN dbo.tDepartmentMaintenance AS dm2 ON dm2.ID = dep.ID_DepartmentMaintenance
LEFT JOIN dbo.tGender g ON p.ID_Gender = g.ID
LEFT JOIN dbo.tSecretQuestion tsq ON u.ID_SecretQuestion = tsq.ID
LEFT JOIN dbo.tUserType ut ON ut.ID = u.ID_UserType
LEFT JOIN dbo.tSkins sk ON sk.ID = c.ID_Skins
LEFT JOIN dbo.tCostCenter cc ON cc.ID = e.ID_CostCenter
ORDER BY p.Name ASC
GO
