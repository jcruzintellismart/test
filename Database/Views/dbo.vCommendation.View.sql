/****** Object:  View [dbo].[vCommendation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCommendation]
AS
SELECT     cm.ID, cm.Code, cm.Name, cm.Description, cm.ID_CommendationType, cm.SeqNo, cm.IsActive, cm.Comment, 
                      dbo.tCommendationType.Name AS CommendationType
FROM         dbo.tCommendation AS cm LEFT OUTER JOIN
                      dbo.tCommendationType ON cm.ID_CommendationType = dbo.tCommendationType.ID
GO
