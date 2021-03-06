/****** Object:  View [dbo].[vSkins]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vSkins] 
AS
	SELECT 
		sk.ID ,
		sk.Name ,
		sk.mainColor ,
		sk.borderBottomColor ,
		sk.buttonFontColor ,
		sk.IsActive ,
		sk.Comment ,
		sk.tableRowEvenColor,
		sk.tableAggregateColor,
		sk.menuFontColor,
		sk.FontFamily
		,NULL SeqNo
	FROM  dbo.tSkins sk
GO
