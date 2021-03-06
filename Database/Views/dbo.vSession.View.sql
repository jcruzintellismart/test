/****** Object:  View [dbo].[vSession]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vSession]
AS
SELECT s.ID,
       s.ID AS ID_Session,
       s.StartDateTime,
       s.EndDateTime,
       s.ID_User,
       s.Comment,
       COALESCE(p.Name, u.Name, u.LogInName) AS Name,
       s.ElapsedTime,
       s.ID_Company,
       COALESCE(p.Name, u.Name, u.LogInName) AS [User],
       u.ImageFile,
       s.GUID,
       ISNULL(c.Name, 'All Companies') AS Company,
       e.ID_Department,
       dm2.Name AS Department,
       c.ImageFile AS CompanyImageFile,
       c.Address,
       c.TelNo,
       c.ReportImageFile,
       e.ID_Designation,
       e.EmailPassword,
       e.CompanyEmail,
       p.Name AS Employee,
       ug.Name AS Usergroup,
       u.ID_UserGroup,
       e.ID_Branch,
       bm.Name AS Branch,
       ug.CanViewEmployeeSalary,
       dbo.fGetDate() CurrentDate,
       e.ID AS ID_Employee,
       ug.ID_ApplicationType,
       e.ID_Persona,
       CASE WHEN ISNULL(u.ID_SecretQuestion, 0) = 0 THEN 0 ELSE 1 END [IsSecretQuestionReady],
       u.ID_CompanyHistory,
       dbo.fGetSetting('TimeOutExpire') [TimeOutExpire],
       ISNULL(p.ID_Gender, 0) ID_Gender,
       s.IPAddress,
       s.Token
FROM dbo.tUser AS u
LEFT OUTER JOIN dbo.tUserGroup AS ug ON u.ID_UserGroup = ug.ID
FULL OUTER JOIN dbo.tBranch AS br
RIGHT OUTER JOIN dbo.tEmployee AS e 
LEFT OUTER JOIN dbo.tDesignation AS des ON e.ID_Designation = des.ID
LEFT OUTER JOIN dbo.tDesignationMaintenance AS dm ON dm.ID = des.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tDepartment AS d ON e.ID_Department = d.ID
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm2 ON dm2.ID = d.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tPersona AS p ON e.ID_Persona = p.ID
ON br.ID = e.ID_Branch
ON u.ID_Employee = e.ID
LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = br.ID_BranchMaintenance
FULL OUTER JOIN dbo.tSession AS s
LEFT OUTER JOIN dbo.tCompany AS c ON s.ID_Company = c.ID ON u.ID = s.ID_User;
GO
