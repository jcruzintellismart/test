/****** Object:  View [dbo].[vEducationAttainmentStatus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vEducationAttainmentStatus]
AS
SELECT     ID, Code, Name, SeqNo, IsActive, Comment
FROM         dbo.tEducationAttainmentStatus
GO
