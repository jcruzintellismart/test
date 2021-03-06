/****** Object:  View [dbo].[vEmployeeAccountabilityChecklist]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vEmployeeAccountabilityChecklist] 
AS
SELECT	
eac.ID
,eac.Code
,eac.Name
,eac.ImageFile
--,	[ImagePath]
,eac.SeqNo
,eac.IsActive
,eac.Comment
,eac.ID_Employee
,p.Name AS Employee
,eac.ControlNo
,eac.Amount
FROM 
	tEmployee e INNER JOIN
	dbo.tPersona p ON p.ID = e.ID_Persona LEFT OUTER JOIN 
	dbo.tEmployeeAccountabilityChecklist eac ON eac.ID_Employee = e.ID
GO
