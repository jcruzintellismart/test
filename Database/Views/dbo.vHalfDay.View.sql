/****** Object:  View [dbo].[vHalfDay]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vHalfDay]
AS
SELECT     ID, Code, Name, SeqNo, Comment
FROM         dbo.tHalfDay hd
GO
