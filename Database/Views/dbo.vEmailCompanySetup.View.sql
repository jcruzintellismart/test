/****** Object:  View [dbo].[vEmailCompanySetup]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmailCompanySetup] 
AS
	SELECT
		ID
		, ID_Company
		, [Server]
		, [Port]
		, Username
		, [Password]
		, [SSL]
		, Interval
		, LastSent
		, IsActive
	FROM dbo.tEmailCompanySetup
GO
