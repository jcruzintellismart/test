/****** Object:  View [dbo].[vWebMenuButtonTypes]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuButtonTypes]   
AS  
SELECT   
	[ID]
,	[Code]
,	[Name]
,	[ImageFile]
,	[SeqNo]
,	[IsActive]
,	[Comment]
,	[DateTimeCreated]
,	[ID_CreatedBy]
,	[DateTimeModified]
,	[ID_ModifiedBy]
FROM tWebMenuButtonTypes
GO
