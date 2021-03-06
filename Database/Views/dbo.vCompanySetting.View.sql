/****** Object:  View [dbo].[vCompanySetting]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCompanySetting]
AS
SELECT        cs.ID, cs.Value, cs.Active, cs.ID_Company, cs.ID_Setting, c.Name AS Company, s.Name AS Setting, cs.Comment
FROM            dbo.tCompanySetting AS cs LEFT OUTER JOIN
                         dbo.tCompany AS c ON c.ID = cs.ID_Company LEFT OUTER JOIN
                         dbo.tSetting AS s ON s.ID = cs.ID_Setting
GO
