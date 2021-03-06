/****** Object:  View [dbo].[vzOBReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzOBReport]
AS
Select 
 e.ID ID_Employee
 ,e.Code EmpCode
 ,per.Name Employee
 ,c.ID ID_Company
 ,c.Name Company
 ,dm.ID ID_Department
 ,dm.Name Department
 ,obd.Date
 ,obd.ComputedTimeIn 
 ,obd.ComputedTimeOut
 ,ob.StartDate StartDate
 ,ob.EndDate EndDate
 ,bm.ID ID_Branch
 ,bm.Name Branch
 from tOB_Detail obd
 INNER JOIN tOB ob ON ob.ID = obd.ID_OB
 INNER JOIN tEmployee e On e.ID = ob.ID_Employee
 LEFT OUTER JOIN tPersona per ON per.ID = e.ID_Persona
 LEFT OUTER JOIN tCompany c ON c.ID = e.ID_Company
 LEFT OUTER JOIN tDepartment dep ON dep.ID = e.ID_Department
 LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
 LEFT OUTER JOIN dbo.tBranch br ON br.ID = e.ID_Branch
LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = br.ID_BranchMaintenance
GO
