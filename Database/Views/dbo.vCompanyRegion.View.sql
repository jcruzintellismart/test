/****** Object:  View [dbo].[vCompanyRegion]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vCompanyRegion] 
AS
SELECT	
cr.ID,
(c.Name + ' - ' + r.Name) Name,
cr.IsActive,
cr.ID_Company,
cr.ID_Region,
c.Name Company,
r.Name Region
FROM tCompanyRegion cr
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
INNER JOIN dbo.tRegion AS r ON r.ID = cr.ID_Region
GO
