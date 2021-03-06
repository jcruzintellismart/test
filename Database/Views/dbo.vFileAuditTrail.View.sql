/****** Object:  View [dbo].[vFileAuditTrail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFileAuditTrail] 
AS
SELECT	
	fat.ID ,
    fat.Code ,
    fat.Name ,
    fat.ImageFile ,
    fat.SeqNo ,
    fat.IsActive ,
    fat.Comment ,
    fat.ID_Menu ,
    fat.InfoID ,
    fat.ID_User ,
    fat.DateUploaded, m.Name [Menu], u.Name [User]
FROM 
	tFileAuditTrail fat
	LEFT JOIN dbo.tMenu m ON m.ID = fat.ID_Menu
	LEFT JOIN dbo.tUser u ON u.ID = fat.ID_User
GO
