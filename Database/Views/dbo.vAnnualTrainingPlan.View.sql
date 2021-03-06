/****** Object:  View [dbo].[vAnnualTrainingPlan]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAnnualTrainingPlan]
AS
SELECT  atp.ID ,
        atp.DateTimeCreated ,
        atp.ID_User ,
        atp.ID_FilingStatus ,
        atp.Name ,
        atp.Year ,
        atp.EffectivityDate ,
		atp.DateApproved ,
		u.Name AS [User] ,
		fs.Name AS FilingStatus FROM dbo.tAnnualTrainingPlan atp
		LEFT JOIN dbo.vUser u ON atp.ID_User = u.ID
		LEFT JOIN dbo.vFilingStatus fs ON atp.ID_FilingStatus = fs.ID
GO
