/****** Object:  View [dbo].[vFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vFile]
AS
SELECT     f.ID, f.Name, f.Comment, f.GUID_Parent, f.FileName, f.OriginalPath, f.FileExtension, ISNULL(sft.Name, UPPER(REPLACE(f.FileExtension, '.', '')) + ' File') 
                      AS SystemFileType, CASE WHEN sfe.ID_SystemFileType = 1 THEN f.FileName ELSE sft.ImageFile END AS ImageFile
FROM         dbo.tSystemFileType AS sft RIGHT OUTER JOIN
                      dbo.tSystemFileExtension AS sfe ON sft.ID = sfe.ID_SystemFileType RIGHT OUTER JOIN
                      dbo.tFile AS f ON sfe.Name = f.FileExtension
GO
