/****** Object:  View [dbo].[vPositionLevelBenefits_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPositionLevelBenefits_Detail]
AS
SELECT  plbd.ID ,
        plbd.ID_Benefits ,
        plbd.ID_PositionLevelBenefits ,
        plbd.Amount ,
		b.Name AS Benefits FROM dbo.tPositionLevelBenefits_Detail plbd
		LEFT JOIN dbo.tBenefits b ON plbd.ID_Benefits = b.ID
GO
