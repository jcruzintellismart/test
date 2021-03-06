/****** Object:  View [dbo].[vCompanyMenu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCompanyMenu]
AS
SELECT     cm.ID, cm.SeqNo, cm.IsActive, cm.Comment, cm.ID_Company, cm.ID_Menu, cm.ReportTitle, cm.ReportSubTitle, m.Name AS Menu, c.Name AS Company, 
                      cm.IsLandscape, cm.ContentFooter, cm.ContentHeader, cm.IsCertification, m.ImageFile
FROM         dbo.tCompanyMenu AS cm LEFT OUTER JOIN
                      dbo.tCompany AS c ON cm.ID_Company = c.ID LEFT OUTER JOIN
                      dbo.tMenu AS m ON cm.ID_Menu = m.ID
GO
