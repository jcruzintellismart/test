/****** Object:  View [dbo].[vOBFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOBFile]
AS
SELECT     obf.ID, obf.IsActive, obf.Comment, obf.Name, obf.ID_Company, c.Name AS Company, obf.ID_VerifierEmployee, obf.VerificationDate, 
                      obf.IsExecuted, obf.ID_ApprovalEmployee, obf.ApprovalDate, obf.FileDate,obf.DateExecuted,
					  obf.DateTimeModified,obf.ID_User
FROM         dbo.tOBFile AS obf  
					  LEFT OUTER JOIN dbo.tCompany AS c ON obf.ID_Company = c.ID
GO
