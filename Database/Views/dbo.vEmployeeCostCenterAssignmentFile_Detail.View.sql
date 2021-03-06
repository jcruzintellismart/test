/****** Object:  View [dbo].[vEmployeeCostCenterAssignmentFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeCostCenterAssignmentFile_Detail]
AS
SELECT     eccaf.ID, eccaf.Code, eccaf.Name, eccaf.ImageFile, eccaf.SeqNo, eccaf.IsActive, eccaf.Comment, eccaf.ID_EmployeeCostCenterAssignmentFile, 
                      eccaf.EmployeeCode, eccaf.CostCenterCode, eccaf.Date, cc.Name AS CostCenter, p.Name AS Employee,eccaf.IsApplied
FROM         dbo.tPersona AS p RIGHT OUTER JOIN
                      dbo.tEmployee AS e ON p.ID = e.ID_Persona RIGHT OUTER JOIN
                      dbo.tEmployeeCostCenterAssignmentFile_Detail AS eccaf ON e.Code = eccaf.EmployeeCode LEFT OUTER JOIN
                      dbo.tCostCenter AS cc ON eccaf.CostCenterCode = cc.Code
					  LEFT JOIN dbo.tEmployeeCostCenterAssignmentFile eca ON eca.ID = eccaf.ID_EmployeeCostCenterAssignmentFile
GO
