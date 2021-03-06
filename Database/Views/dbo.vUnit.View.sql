/****** Object:  View [dbo].[vUnit]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vUnit]
AS
SELECT     u.ID, u.Code, u.Name, u.SeqNo, u.IsActive, u.Comment, c.Name AS Company, u.ID_Section, u.ID_Company, s.Name AS Section
FROM         dbo.tUnit AS u LEFT OUTER JOIN
                      dbo.tSection AS s ON u.ID_Section = s.ID LEFT OUTER JOIN
                      dbo.tCompany AS c ON u.ID_Company = c.ID
GO
