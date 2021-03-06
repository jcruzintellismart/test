/****** Object:  View [dbo].[vExtraDayOff]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vExtraDayOff] 
AS



SELECT	
edo.ID
,edo.ID_Employee
,per.Name Employee
,edo.Date
,edo.ID_HalfDay
,h.Name HalfDay
,edo.TotalHours
,edo.ID_FilingStatus
,fs.Name FilingStatus
,edo.DateFiled
,edo.DateApproved
,edo.SeqNo
,edo.IsActive
,edo.Comment
,edo.ApproverStatus
,edo.IsPosted
,edo.ApproversComment
,edo.ApprovalHistory
,edo.PreviousApproverComment
,edo.LateFiling
,edo.IsAdvance
,g.Name AS Gender
FROM tExtraDayOff edo
INNER JOIN dbo.tEmployee e ON e.ID = edo.ID_Employee
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
INNER JOIN dbo.tGender g ON per.ID_Gender = g.ID
LEFT OUTER JOIN dbo.tHalfDay h ON h.ID = edo.ID_HalfDay
LEFT OUTER JOIN dbo.tFilingStatus fs ON fs.ID = edo.ID_FilingStatus
GO
