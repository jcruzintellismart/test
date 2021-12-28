/****** Object:  View [dbo].[vEmployeeApprover1]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeApprover1]
AS 
SELECT 
e.ID ID_Employee,p.Name Employee,e.ID,p.Name, e.ID_Persona, NULL [SeqNo]
FROM dbo.tEmployee e
INNER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
WHERE e.IsActive = 1
GO
