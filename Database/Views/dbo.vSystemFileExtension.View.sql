/****** Object:  View [dbo].[vSystemFileExtension]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemFileExtension]
AS
SELECT     sfe.ID, sfe.Name, sfe.Comment, sfe.ID_SystemFileType, sft.Name AS SystemFileType, sft.ImageFile
FROM         dbo.tSystemFileExtension AS sfe LEFT OUTER JOIN
                      dbo.tSystemFileType AS sft ON sfe.ID_SystemFileType = sft.ID
GO
