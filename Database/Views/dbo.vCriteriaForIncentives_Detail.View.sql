/****** Object:  View [dbo].[vCriteriaForIncentives_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCriteriaForIncentives_Detail]
AS
SELECT  cfid.ID ,
        cfid.ID_CriteriaForIncentives ,
        cfid.Name ,
        cfid.Weight FROM dbo.tCriteriaForIncentives_Detail cfid
GO
