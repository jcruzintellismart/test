/****** Object:  View [dbo].[vCivilStatus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vCivilStatus]
AS
SELECT     ID, Code, Name, IsActive, Comment, NULL SeqNo
FROM         dbo.tCivilStatus AS cs
GO
