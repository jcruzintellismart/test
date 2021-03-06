/****** Object:  View [dbo].[vLeaveCreditFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeaveCreditFile]
AS
SELECT     lc.ID, lc.Code, lc.Name, lc.ID_Company, lc.[Date], lc.SeqNo, lc.IsActive, lc.Comment, c.Name AS Company,lc.IsExecuted,lc.DateExecuted
FROM         dbo.tLeaveCreditFile lc LEFT OUTER JOIN
                      dbo.tCompany c ON lc.ID_Company = c.ID
GO
