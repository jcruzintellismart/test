/****** Object:  View [dbo].[vEducationAttainment2]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEducationAttainment2]
AS

SELECT  ID ,
        ID_Persona ,
        SchoolName ,
        DegreeMajorHonor ,
		IsRequired ,
		YearFrom,
		YearTo,
		CAST(YearFrom + ' - ' + YearTo AS VARCHAR(500)) AS YearsAttended
        FROM dbo.tEducationAttainment2
GO
