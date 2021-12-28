/****** Object:  View [dbo].[vSkillCompetencyType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSkillCompetencyType]
AS
SELECT  sct.ID ,
        sct.DateTimeCreated ,
        sct.ID_User ,
        sct.Name ,
		u.Name AS [User] FROM dbo.tSkillCompetencyType sct
		LEFT JOIN dbo.vUser u ON sct.ID_User = u.ID
GO
