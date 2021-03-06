/****** Object:  View [dbo].[vWebNotificationsFilingType]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebNotificationsFilingType]
AS
SELECT  wnft.ID ,
        wnft.Name ,
		wnft.ID_Menu ,
		wnft.ID_ApplicationType ,
		m.Name AS Menu ,
		at.Name AS ApplicationType ,
		wnft.ID_FilingDocType ,
		fdt.Name AS FilingDocType FROM dbo.tWebNotificationsFilingType wnft
		LEFT JOIN dbo.tApplicationType at ON wnft.ID_ApplicationType = at.ID
		LEFT JOIN dbo.tMenu m ON wnft.ID_Menu = m.ID
		LEFT JOIN dbo.tFilingDocType fdt ON wnft.ID_FilingDocType = fdt.ID
GO
