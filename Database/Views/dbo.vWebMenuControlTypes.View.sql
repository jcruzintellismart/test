/****** Object:  View [dbo].[vWebMenuControlTypes]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuControlTypes]     
AS    
SELECT     
mct.ID ,  
        mct.Code ,  
        mct.Name ,  
        mct.ImageFile ,  
        mct.SeqNo ,  
        mct.IsActive ,  
        mct.Comment ,  
        mct.DateTimeCreated ,  
        mct.ID_CreatedBy ,  
        mct.DateTimeModified ,  
        mct.ID_ModifiedBy ,  
        u.Name CreatedBy ,  
        u2.Name ModifiedBy  ,
		mct.InFilter,
		mct.InGrid,
		mct.InModule
FROM tWebMenuControlTypes mct  
LEFT JOIN dbo.tUser u ON u.ID = mct.ID_CreatedBy  
LEFT JOIN dbo.tUser u2 ON u2.ID = mct.ID_ModifiedBy
GO
