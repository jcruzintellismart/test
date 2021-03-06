/****** Object:  View [dbo].[vMenuApprovalLevel]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuApprovalLevel]
AS
SELECT     mal.ID, mal.Code, mal.Name, mal.ImageFile, mal.SeqNo, mal.IsActive, mal.Comment, mal.ID_Menu, mal.Levels, m.Name AS Menu
FROM         dbo.tMenuApprovalLevel AS mal LEFT OUTER JOIN
                      dbo.tMenu AS m ON mal.ID_Menu = m.ID
GO
