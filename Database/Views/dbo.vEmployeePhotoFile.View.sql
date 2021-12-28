/****** Object:  View [dbo].[vEmployeePhotoFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[vEmployeePhotoFile] 
AS
SELECT	
				epf.ID ,
		        epf.Code ,
		        epf.Name ,
		        epf.IsActive ,
		        epf.Comment ,
		        epf.isApplied
FROM 
	dbo.tEmployeePhotoFile epf
GO
