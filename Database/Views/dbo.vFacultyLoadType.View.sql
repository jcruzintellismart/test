/****** Object:  View [dbo].[vFacultyLoadType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFacultyLoadType] 
AS
SELECT	
	[ID]
,	[Code]
,	[Name] 
,	[IsActive]

FROM 
	tFacultyLoadType
GO
