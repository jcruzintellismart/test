/****** Object:  View [dbo].[vEducationLevel]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vEducationLevel]
AS
SELECT     ID, Code, Name, IsActive, Comment, SeqNo
FROM         dbo.tEducationLevel el
GO
