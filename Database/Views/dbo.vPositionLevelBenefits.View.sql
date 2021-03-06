/****** Object:  View [dbo].[vPositionLevelBenefits]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPositionLevelBenefits]
AS
SELECT  plb.ID ,
        plb.DateTimeCreated ,
        plb.ID_User ,
        plb.ID_FilingStatus ,
        plb.ID_JobClass ,
        plb.EffectivityDate ,
		u.Name AS [User] ,
		fs.Name AS FilingStatus ,
		jcm.Name AS JobClass 
		FROM dbo.tPositionLevelBenefits plb
		LEFT JOIN dbo.vUser u ON plb.ID_User = u.ID
		LEFT JOIN dbo.tFilingStatus fs ON plb.ID_FilingStatus = fs.ID
		LEFT JOIN dbo.tJobClass jc ON plb.ID_JobClass = jc.ID
		INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
GO
