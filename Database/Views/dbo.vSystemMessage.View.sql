/****** Object:  View [dbo].[vSystemMessage]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemMessage]
AS
SELECT     ID, Code, Name, SeqNo, IsActive, Description, Comment
FROM         dbo.tSystemMessage
GO
