/****** Object:  View [dbo].[vSystemVersion]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	 VIEW [dbo].[vSystemVersion] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[ImageFile]
--,	[ImagePath]
,	[SeqNo] 
,	[IsActive]
,	[Comment]
, LoginBG
, MainBG
, StatusStripBGColor
, StatusStripForeColor
, MenuBGColor
, MainBGColor
, FavoritesBGColor
, LoginBGColor
, LoginForeColor
, LoginStatusBGColor
, LoginButtonForeColor
, LoginStatusForeColor
, MainTreeBGColor
, MainTreeForeColor
, ListingHeaderBGColor
, AlternatingRowBGColor
FROM 
	tSystemVersion
GO
