/****** Object:  View [dbo].[vBatchApproverListing_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBatchApproverListing_Detail_List]
AS
	SELECT
        bald.SellerCode ,
        bald.SellerName ,
        bald.FirstApproverCode ,
        bald.FirstApproverName ,
        bald.SecondApproverCode ,
        bald.SecondApproverName
	FROM dbo.tBatchApproverListing_Detail bald
	LEFT JOIN dbo.tBatchApproverListing bal ON bal.ID = bald.ID_BatchApproverListing
GO
