/****** Object:  View [dbo].[vSystemVersionMenu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemVersionMenu]
AS
SELECT        svm.ID, svm.ImageFile, svm.SeqNo, svm.IsActive, svm.Comment, svm.ID_SystemVersion, svm.ID_Menu, m.Name AS Menu, svm.AllowNew, mm.Name AS ParentMenu, svm.IsVisible
FROM            dbo.tSystemVersionMenu AS svm LEFT OUTER JOIN
                         dbo.tMenu AS m ON m.ID = svm.ID_Menu LEFT OUTER JOIN
                         dbo.tMenu AS mm ON mm.ID = m.ID_Menu
GO
