/****** Object:  View [dbo].[vMenuApprover]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMenuApprover]
AS
SELECT     dbo.tMenuApprover.ID, dbo.tMenuApprover.Code, dbo.tMenuApprover.ImageFile, dbo.tMenuApprover.SeqNo, dbo.tMenuApprover.IsActive, 
                      dbo.tMenuApprover.Comment, dbo.tMenuApprover.Levels, dbo.tMenuApprover.ID_Menu, dbo.tMenu.Name AS Menu, dbo.tMenuApprover.Name
FROM         dbo.tMenuApprover LEFT OUTER JOIN
                      dbo.tMenu ON dbo.tMenuApprover.ID_Menu = dbo.tMenu.ID
GO
