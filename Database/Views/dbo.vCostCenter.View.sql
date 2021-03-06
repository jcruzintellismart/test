/****** Object:  View [dbo].[vCostCenter]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCostCenter]
AS
SELECT     CC.ID, CC.Code, CC.Name, CC.IsActive, CC.Comment, CC.ID_Company, C.Name AS Company, CC.ID_CostCenterGroup, CCG.Name AS CostCenterGroup, 
                      CC.BusinessArea
FROM         dbo.tCostCenter AS CC LEFT OUTER JOIN
                      dbo.tCostCenterGroup AS CCG ON CC.ID_CostCenterGroup = CCG.ID LEFT OUTER JOIN
                      dbo.tCompany AS C ON CC.ID_Company = C.ID
GO
