/****** Object:  View [dbo].[vSkillCompetencies]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSkillCompetencies]
AS
SELECT  sc.ID ,
        sc.DateTimeCreated ,
        sc.ID_User ,
        sc.Code ,
        sc.Name ,
		u.Name AS [User] FROM dbo.tSkillCompetencies sc
		LEFT JOIN dbo.vUser u ON sc.ID_User = u.ID
GO
