/****** Object:  View [dbo].[vSetting]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSetting]
AS
SELECT     s.ID, s.Code, s.Name, s.Value, s.Active, s.Comment, s.ID_SettingType, s.DateTimeCreated, s.DateTimeModified, s.ForAdmin, s.ID_SettingGroup, 
                      sg.Name AS SettingGroup
FROM         dbo.tSetting AS s LEFT OUTER JOIN
             dbo.tSettingGroup AS sg ON sg.ID = s.ID_SettingGroup
GO
