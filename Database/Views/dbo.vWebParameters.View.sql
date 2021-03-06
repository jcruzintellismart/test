/****** Object:  View [dbo].[vWebParameters]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebParameters]
AS

/*
	Lj 20120813
	Standard
*/

SELECT wp.ID ,
        wp.Paramname ,
        wp.ParamValue ,
        wp.Description ,
		wp.ID_WebParameterGroup ,
		wpg.Name WebParameterGroup
		FROM dbo.tWebParameters wp
		LEFT JOIN dbo.tWebParameterGroup wpg ON wpg.ID = wp.ID_WebParameterGroup
GO
