/****** Object:  View [dbo].[vMedicalLifeInsurancePurpose]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMedicalLifeInsurancePurpose]
AS
SELECT  mlip.ID ,
        mlip.Name FROM dbo.tMedicalLifeInsurancePurpose mlip
GO
