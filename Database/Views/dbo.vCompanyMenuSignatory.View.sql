/****** Object:  View [dbo].[vCompanyMenuSignatory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCompanyMenuSignatory]
AS
SELECT     cms.ID, cms.Code, cms.Name, cms.ImageFile, cms.SeqNo, cms.IsActive, cms.Comment, cms.Label, cms.Designation, cms.ID_CompanyMenu
FROM         dbo.tCompanyMenuSignatory AS cms LEFT OUTER JOIN
                      dbo.tCompanyMenu AS cm ON cms.ID_CompanyMenu = cm.ID
GO
