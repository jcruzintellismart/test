/****** Object:  View [dbo].[vLeaveConversionType_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE ViEW [dbo].[vLeaveConversionType_List] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name]
,	[Comment]
FROM 
	 vLeaveConversionType
GO
