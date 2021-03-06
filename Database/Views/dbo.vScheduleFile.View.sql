/****** Object:  View [dbo].[vScheduleFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleFile]
AS
    SELECT  sf.ID ,
            sf.Code ,
            sf.Name ,
            sf.ID_Company ,
            sf.SeqNo ,
            sf.IsActive ,
            sf.Comment ,
            c.Name AS Company ,
            sf.StartDate ,
            sf.ID_User ,
            sf.ApproverStatus ,
            sf.ID_FilingStatus , 
--ISNULL(sf.IsPosted,0) IsPosted, 
            sf.IsPosted ,
            sf.ApprovalDate ,
            sf.DateCreated ,
            sf.isDefault ,
            fs.Name AS FilingStatus ,
            sf.ID_VerifierEmployee ,
            sf.ID_ApproverEmployee ,
            sf.ID_DocumentApprover ,
            e2.Name DocumentApprover ,
            sf.ID_CreatedBy ,
            e2.Name PreviousApprover ,
            e3.Name CreatedBy ,
            u3.Name Employee ,
            u3.ID_Employee AS ID_Employee ,
            sf.ID_Department ,
            sf.DateFiled ,
            dm.Name AS Department ,
            sf.ApprovalHistory ,
            sf.PreviousApproverComment ,
            sf.ApproverComment ,
            sf.IsExecuted ,
            sf.DateExecuted
			, [sf].[GUID]
			, u3.[Name] [User]
			, sf.IsValid
			, sf.IsValidRD
			, sf.ID_Store
			, sm.Name AS Store
    FROM    dbo.tScheduleFile AS sf
            LEFT OUTER JOIN dbo.tCompany AS c ON sf.ID_Company = c.ID
            LEFT JOIN dbo.tFilingStatus fs ON fs.ID = sf.ID_FilingStatus
            LEFT JOIN dbo.tUser u ON u.ID = sf.ID_DocumentApprover
            LEFT OUTER JOIN vEmployee e2 ON u.ID_Employee = e2.ID
            LEFT JOIN dbo.tUser u2 ON u2.ID = sf.ID_CreatedBy
            LEFT OUTER JOIN vEmployee e3 ON u2.ID_Employee = e3.ID
            LEFT JOIN dbo.tUser u3 ON u3.ID = sf.ID_User
            LEFT JOIN dbo.tDepartment dept ON sf.ID_Department = dept.ID
			LEFT JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dept.ID_DepartmentMaintenance
			LEFT JOIN dbo.tStore st ON st.ID = sf.ID_Store
			LEFT JOIN dbo.tStoreMaintenance sm ON sm.ID = st.ID_StoreMaintenance
GO
