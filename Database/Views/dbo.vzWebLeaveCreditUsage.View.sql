/****** Object:  View [dbo].[vzWebLeaveCreditUsage]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebLeaveCreditUsage]
AS
	SELECT * FROM dbo.fzWebLeaveCreditUsage(1,2016)
GO
