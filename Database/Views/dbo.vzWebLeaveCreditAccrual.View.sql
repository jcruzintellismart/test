/****** Object:  View [dbo].[vzWebLeaveCreditAccrual]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebLeaveCreditAccrual]
AS
	SELECT * FROM dbo.fzWebLeaveCreditAccrual(1,2016)
GO
