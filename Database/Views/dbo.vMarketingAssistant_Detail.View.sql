/****** Object:  View [dbo].[vMarketingAssistant_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE ViEW [dbo].[vMarketingAssistant_Detail] 
AS
SELECT	
	[ID]
,	[SeqNo] 
,	[IsActive]
,	[Comment]
,   [ID_MarketingAssistant]
FROM 
	tMarketingAssistant_Detail
GO
