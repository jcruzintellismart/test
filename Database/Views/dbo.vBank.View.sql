/****** Object:  View [dbo].[vBank]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vBank]
AS
SELECT     ID, Code, Name, ImageFile, IsActive, Comment, NULL SeqNo
FROM         dbo.tBank AS b
GO
