/****** Object:  View [dbo].[vNationality]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vNationality]
AS
SELECT     ID, Code, Name, IsActive, Comment, DateTimeCreated, DateTimeModified, NULL SeqNo
FROM         dbo.tNationality N
GO
