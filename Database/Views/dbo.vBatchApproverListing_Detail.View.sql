/****** Object:  View [dbo].[vBatchApproverListing_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBatchApproverListing_Detail]
AS
	SELECT  
	bald.ID ,
    bald.ID_BatchApproverListing ,
    bald.SellerCode ,
    bald.SellerName ,
    bald.FirstApproverCode ,
    bald.FirstApproverName ,
    bald.SecondApproverCode ,
    bald.SecondApproverName ,
	bal.[Name] [BatchApproverListing]
	FROM  dbo.tBatchApproverListing_Detail bald
	LEFT OUTER JOIN dbo.tBatchApproverListing bal ON bal.ID = bald.ID_BatchApproverListing
GO
