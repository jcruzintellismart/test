/****** Object:  View [dbo].[vSystemControlType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemControlType]
AS
SELECT     ID, Name, SeqNo, Comment
FROM         dbo.tSystemControlType
GO
