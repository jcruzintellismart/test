/****** Object:  View [dbo].[vAnnouncementType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAnnouncementType] 
AS
SELECT	
a.ID ,
a.Code ,
a.Name ,
a.ImageFile ,
a.SeqNo ,
a.IsActive ,
a.Comment 
FROM 
	tAnnouncementType a
GO
