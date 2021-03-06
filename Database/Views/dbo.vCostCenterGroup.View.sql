/****** Object:  View [dbo].[vCostCenterGroup]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCostCenterGroup]
AS
SELECT     ccg.ID, ccg.Code, ccg.Name, ccg.SeqNo, ccg.IsActive, ccg.Comment, ccg.ID_Company, c.Name AS Company
FROM         dbo.tCostCenterGroup AS ccg LEFT OUTER JOIN
                      dbo.tCompany AS c ON ccg.ID_Company = c.ID
GO
