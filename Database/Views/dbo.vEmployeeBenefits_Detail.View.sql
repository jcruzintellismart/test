/****** Object:  View [dbo].[vEmployeeBenefits_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeBenefits_Detail]
AS
SELECT  ebd.ID ,
        ebd.ID_Benefits ,
        ebd.DateTimeAvailed ,
        ebd.DateTimeReceived ,
        ebd.Amount ,
        ebd.ID_EmployeeBenefits ,
		b.Name AS Benefits FROM dbo.tEmployeeBenefits_Detail ebd
		LEFT JOIN dbo.tBenefits b ON ebd.ID_Benefits = b.ID
GO
