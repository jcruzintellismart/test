/****** Object:  View [dbo].[vBatchApproverListing]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBatchApproverListing]
AS
	SELECT  
		bal.ID ,
		bal.[Name] ,
		bal.ID_FilingStatus ,
		fs.[Name] [FilingStatus],
		bal.DateTimeCreated
	FROM dbo.tBatchApproverListing bal
	LEFT OUTER JOIN dbo.tFilingStatus fs ON fs.ID = bal.ID_FilingStatus
GO
