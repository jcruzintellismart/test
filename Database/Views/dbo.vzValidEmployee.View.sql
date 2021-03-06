/****** Object:  View [dbo].[vzValidEmployee]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzValidEmployee]
AS
SELECT     EMP.ID
FROM         dbo.tCompany INNER JOIN
                      dbo.tEmployee EMP INNER JOIN
                      dbo.tDesignation DES ON EMP.ID_Designation = DES.ID ON 
				 --  dbo.tCompany.ID = DES.ID_Company AND 
                       dbo.tCompany.ID = EMP.ID_Company INNER JOIN
                 --  dbo.tBranch ON dbo.tCompany.ID = dbo.tBranch.ID_Company 
                 --  AND 
				 --  EMP.ID_Branch = dbo.tBranch.ID 
				--   INNER JOIN
                      dbo.tDepartment DEP ON EMP.ID_Department = DEP.ID LEFT OUTER JOIN
                      dbo.tCostCenter ON dbo.tCompany.ID = dbo.tCostCenter.ID_Company AND EMP.ID_CostCenter = dbo.tCostCenter.ID
GO
