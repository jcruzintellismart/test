/****** Object:  View [dbo].[vApprovalHistory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vApprovalHistory] 
AS  
SELECT  ah.ID , --1 
        ah.SeqNo , 
        ah.IsActive , 
        ah.Comment , --6 
        ah.DateTimeCreated , 
        ah.ID_CreatedBy , 
        ah.DateTimeModified , 
        ah.ID_ModifiedBy , 
        ah.ApprovalLevel , --5 
        ah.ID_Employee ,  
		ah.ID_User, 
		ah.WorkDate, 
		ah.ApprovalDate, 
        ah.ID_Header , 
        ah.ID_FilingType , --3 
        ah.ApprovalAction  --4 
		,per.Name [Employee]--2 
		,ft.Name [FilingType] 
		,u.Name [User] 
		FROM  tApprovalHistory ah 
		LEFT JOIN dbo.tEmployee e ON e.ID = ah.ID_Employee 
		LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona 
		LEFT JOIN dbo.tFilingType ft ON ft.ID = ah.ID_FilingType 
		LEFT JOIN dbo.tUser u ON u.ID = ah.ID_User 
		--LEFT JOIN dbo.vApproverMatrix  am ON am.ID_User = ah.ID_User 
GO
