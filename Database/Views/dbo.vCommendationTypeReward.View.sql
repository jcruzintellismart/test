/****** Object:  View [dbo].[vCommendationTypeReward]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCommendationTypeReward]
AS
SELECT     ID, Code, Name, ID_CommendationType, Description, SeqNo, IsActive, Comment
FROM         dbo.tCommendationTypeReward
GO
