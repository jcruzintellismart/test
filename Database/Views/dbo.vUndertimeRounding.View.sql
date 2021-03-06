/****** Object:  View [dbo].[vUndertimeRounding]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUndertimeRounding]
AS
	SELECT 
		ur.ID
		, ur.LBound
		, ur.UBound
		, ur.[Value]
		, ur.Comment
		, ur.ID_Company
		, c.[Name] Company
		, ur.ID_TimekeepingFrequency
		, tf.[Name] TimekeepingFrequency
	FROM dbo.tUndertimeRounding ur
	LEFT JOIN dbo.tCompany c ON c.ID = ur.ID_Company
	LEFT JOIN dbo.tTimekeepingFrequency tf ON tf.ID = ur.ID_TimekeepingFrequency
GO
