/****** Object:  View [dbo].[vMassAssignment_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vMassAssignment_Detail] 
AS
SELECT	
--	[ID]
--,	[Code]
--,	[Name]
--,	[ImageFile]
--,	[SeqNo] 
--,	[IsActive]
--,	[Comment]
--,   [ID_MassAssignment]
--,[ID_Employee]
mad.ID,mad.Code,mad.Name,mad.ImageFile,mad.IsActive,mad.Comment,mad.ID_Employee,p.Name AS Employee,mad.ID_MassAssignment,mad.SeqNo
FROM 
	tMassAssignment_Detail mad INNER JOIN
	dbo.tEmployee e ON e.ID = mad.ID_Employee INNER JOIN
	dbo.tPersona p ON p.ID = e.ID_Persona
GO
