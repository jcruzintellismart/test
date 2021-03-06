/****** Object:  View [dbo].[vSystemVersionSetting]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemVersionSetting]
AS
SELECT        s.ID, s.Code, s.Name, s.ImageFile, s.SeqNo, s.IsActive, s.Comment, s.ID_Setting, s.ID_SystemVersion, t.Name AS Setting, s.Value, s.ForAdmin
FROM            dbo.tSystemVersionSetting AS s LEFT OUTER JOIN
                         dbo.tSetting AS t ON t.ID = s.ID_Setting
GO
