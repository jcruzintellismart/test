/****** Object:  View [dbo].[vCriteriaForMerit_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCriteriaForMerit_Detail]
AS
SELECT  cfmd.ID ,
        cfmd.ID_CriteriaForMerit ,
        cfmd.Name ,
        cfmd.Weight FROM dbo.tCriteriaForMerit_Detail cfmd
GO
