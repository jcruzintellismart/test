/****** Object:  View [dbo].[vEmployeeDesignation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeDesignation]
AS
SELECT e.ID 'ID',
       p.Name,
       e.ID_Designation,
       dm.Name 'Position'
FROM dbo.tDesignation d
INNER JOIN dbo.tEmployee e ON d.ID = e.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dm ON dm.ID = d.ID_DesignationMaintenance
LEFT JOIN dbo.tPersona p ON e.ID_Persona = p.ID;
GO
