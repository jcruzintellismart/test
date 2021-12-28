/****** Object:  View [dbo].[vYear]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE	 VIEW	[dbo].[vYear]
AS
	SELECT TOP 100 PERCENT
	 ID, 
	 Code, 
	 Name, 
	 [Year], 
	 Comment
	FROM  dbo.tYear
	ORDER BY Year DESC
GO
