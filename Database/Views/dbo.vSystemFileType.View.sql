/****** Object:  View [dbo].[vSystemFileType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemFileType]
AS
SELECT     ID, Code, Name, ImageFile, Comment
FROM         dbo.tSystemFileType AS sft
GO
