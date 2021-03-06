/****** Object:  View [dbo].[vImportedLoan]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vImportedLoan]
AS
SELECT
il.ID
,il.ID_Company
,c.Name Company
,il.Code
,il.Name
,il.SeqNo
,il.IsActive
,il.IsPosted
,il.IsVoided
,il.Comment
,il.DateTimeCreated
,il.DateTimeModified
,ild.ImportDetailCount
FROM dbo.tImportedLoan il 
LEFT JOIN dbo.tCompany c ON il.ID_Company = c.ID 
LEFT OUTER JOIN
(
	SELECT     
	COUNT(*) AS ImportDetailCount
	,ID_ImportedLoan
	FROM dbo.tImportedLoan_Detail
	GROUP BY ID_ImportedLoan

) AS ild ON ild.ID_ImportedLoan = il.ID
GO
