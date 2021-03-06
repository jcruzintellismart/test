/****** Object:  View [dbo].[vMenuTab]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuTab]
AS
SELECT     TOP (100) PERCENT ID, Name, ID_Menu, ImageFile, SeqNo, IsActive, Comment, HasTable, Description, ImagePath, IsSalaryAuthenticatedTab, mt.VisibleIf,mt.TableFilter
FROM         dbo.tMenuTab AS mt
ORDER BY ID_Menu, SeqNo, ID
GO
