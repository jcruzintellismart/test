/****** Object:  View [dbo].[vBonusesAndBenefits_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBonusesAndBenefits_Detail] 
AS
SELECT	
bbd.ID
,bbd.ID_BonusesAndBenefits
,bbd.ID_Employee
,per.Name Employee
,bbd.Amount
,bbd.DateTimeModified
,bbd.Comment
FROM tBonusesAndBenefits_Detail bbd
LEFT JOIN dbo.tEmployee e ON e.ID = bbd.ID_Employee
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
