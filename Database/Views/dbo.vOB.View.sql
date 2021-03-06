/****** Object:  View [dbo].[vOB]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOB]
	AS
	SELECT ob.ID
		, ob.ID_Employee
		, ob.FileDate
		, ob.ID_FilingStatus
		, ob.ApprovalDate
		, ob.SeqNo
		, ob.IsActive
		, fs.Name AS FilingStatus
		, p.Name AS Employee
		, ob.StartDate
		, ob.EndDate
		, p.ImageFile
		, e.ID_Company
		, ob.ApproverStatus
		, ISNULL(ob.IsPosted,0) IsPosted
		, ob.DateCreated
		, ob.Comment
		--, dbo.fGetApprovalHistory(ob.ID, 1) ApprovalHistory
		--, dbo.fGetLastApproverComment(ob.ID, 1) PreviousApproverComment
		,replace(replace(replace(ob.ApprovalHistory,'&nbsp',''),';',''),'<br>','') [ApprovalHistory]
		--, ob.ApprovalHistory
		, ob.PreviousApproverComment
		, g.Name Gender
		, ob.Reason
		, ob.ApproverComment
		, CONVERT(DATETIME,ApprovalDate,101) DateApproved
		,ob.ID_User
		,ob.DateTimeModified
		,ob.ID_Reason
		, [ob].[GUID]
	FROM dbo.tOB AS ob 
	LEFT OUTER JOIN dbo.tEmployee AS e  ON ob.ID_Employee = e.ID
	LEFT OUTER JOIN dbo.tPersona AS p ON p.ID = e.ID_Persona
	LEFT OUTER JOIN dbo.tFilingStatus AS fs ON ob.ID_FilingStatus = fs.ID 
	LEFT OUTER JOIN dbo.tGender g ON g.ID = p.ID_Gender
	--Edited by Nyok 10/23/2018
GO
