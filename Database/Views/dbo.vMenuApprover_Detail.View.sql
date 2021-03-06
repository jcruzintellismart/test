/****** Object:  View [dbo].[vMenuApprover_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuApprover_Detail]
AS
SELECT     dbo.tMenuApprover_Detail.ID, dbo.tMenuApprover_Detail.Code, dbo.tMenuApprover_Detail.ImageFile, dbo.tMenuApprover_Detail.SeqNo, 
                      dbo.tMenuApprover_Detail.IsActive, dbo.tMenuApprover_Detail.Comment, dbo.tMenuApprover_Detail.ID_MenuApprover, dbo.tMenuApprover_Detail.[Level], 
                      dbo.tMenuApprover_Detail.ID_User, dbo.tMenuApprover.ID_Menu, dbo.tMenu.Name AS Menu, ISNULL(dbo.tPersona.Name, dbo.tUser.Name) AS [User], 
                      dbo.tMenuApprover_Detail.ID_MenuButton, dbo.tMenuButton.Name AS MenuButton
FROM         dbo.tMenuButton RIGHT OUTER JOIN
                      dbo.tMenuApprover_Detail ON dbo.tMenuButton.ID = dbo.tMenuApprover_Detail.ID_MenuButton LEFT OUTER JOIN
                      dbo.tPersona RIGHT OUTER JOIN
                      dbo.tEmployee ON dbo.tPersona.ID = dbo.tEmployee.ID_Persona RIGHT OUTER JOIN
                      dbo.tUser ON dbo.tEmployee.ID = dbo.tUser.ID_Employee ON dbo.tMenuApprover_Detail.ID_User = dbo.tUser.ID LEFT OUTER JOIN
                      dbo.tMenu RIGHT OUTER JOIN
                      dbo.tMenuApprover ON dbo.tMenu.ID = dbo.tMenuApprover.ID_Menu ON dbo.tMenuApprover_Detail.ID_MenuApprover = dbo.tMenuApprover.ID
GO
