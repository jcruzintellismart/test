/****** Object:  View [dbo].[vSystemImage]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemImage]
AS
SELECT     ID, Code, Name, ImageFile, SeqNo, IsActive, Comment
FROM         dbo.tSystemImage
GO
