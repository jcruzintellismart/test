/****** Object:  View [dbo].[vTardinessRounding]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTardinessRounding]
AS
SELECT     tr.ID, tr.LBound, tr.UBound, tr.Value, tr.Comment,tr.ID_Company,c.Name Company
FROM       dbo.tTardinessRounding AS tr LEFT OUTER JOIN
           dbo.tCompany c ON c.ID = tr.ID_Company
GO
