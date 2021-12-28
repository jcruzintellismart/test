/****** Object:  View [dbo].[vEmployeeApprover5]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeApprover5]
AS
SELECT 
e.ID ID_Employee,p.Name Employee,e.ID,p.Name, NULL [SeqNo]
FROM dbo.tEmployee e
INNER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
WHERE e.IsActive = 1
GO
