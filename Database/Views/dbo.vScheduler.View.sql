/****** Object:  View [dbo].[vScheduler]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduler] 
AS
SELECT	
	s.[ID]
,	s.[Code]
,	s.[Name]
,	s.[ImageFile]
--,	[ImagePath]
,	s.[SeqNo] 
,	s.[IsActive]
,	s.[Comment]
,   s.[ID_Employee]
,   e.Name [Employee]
FROM 
	tScheduler s
	 LEFT JOIN dbo.vEmployee e
		ON e.id = s.ID_Employee
GO
