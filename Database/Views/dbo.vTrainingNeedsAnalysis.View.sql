/****** Object:  View [dbo].[vTrainingNeedsAnalysis]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTrainingNeedsAnalysis]
AS
SELECT  tna.ID ,
        tna.DateTimeCreated ,
        tna.ID_User ,
        tna.ID_FilingStatus ,
        tna.Name ,
		u.Name AS [User] ,
		fs.Name AS FilingStatus FROM dbo.tTrainingNeedsAnalysis tna
		LEFT JOIN dbo.vUser u ON tna.ID_User = u.ID
		LEFT JOIN dbo.vFilingStatus fs ON tna.ID_FilingStatus = fs.ID
GO
