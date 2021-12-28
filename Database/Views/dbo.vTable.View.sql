/****** Object:  View [dbo].[vTable]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTable]  
AS  
SELECT TOP 100 PERCENT  ID, Code, Name, ImageFile, SeqNo, IsActive, Comment, IsSystemTable, IsForCodeGen, IsForArchive  
FROM         dbo.tTable  
ORDER BY Name
GO
