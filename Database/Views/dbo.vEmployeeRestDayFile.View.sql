/****** Object:  View [dbo].[vEmployeeRestDayFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeRestDayFile]
AS
SELECT     
rf.ID
, rf.Code
, rf.Name
, rf.ID_Company
, c.Name AS Company
, rf.SeqNo
, rf.IsActive
, rf.Comment
, rf.StartDate
, rf.ID_FilingStatus
, f.Name FilingStatus
, rf.IsExecuted
, rf.DateExecuted
FROM dbo.tEmployeeRestDayFile rf 
LEFT JOIN dbo.tCompany c ON rf.ID_Company = c.ID
LEFT OUTER JOIN dbo.tFilingStatus f ON f.ID = rf.ID_FilingStatus
GO
