/****** Object:  View [dbo].[vMenuTab_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuTab_List]
AS
SELECT     ID, Name, SeqNo, HasTable, IsActive, ImageFile, Description, Comment,ID_Menu
FROM         dbo.vMenuTab
GO
