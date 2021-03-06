/****** Object:  View [dbo].[vEmployeeMovement]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeMovement]
AS
SELECT
em.ID,
em.Code,
em.ID_Employee,
em.ID_Company,
em.ID_Branch,
em.ID_CostCenter,
em.ID_EmployeeStatus,
em.ID_Department,
em.ID_Designation,
em.ApprovedBy,
em.ID_FilingStatus,
em.EffectivityDate,
em.Comment,
em.StartDate,
em.EndDate,
em.RegularizationDate,
em.ID_EmployeeMovementType,
em.ID_PrevCompany,
em.ID_PrevBranch,
em.ID_PrevCostCenter,
em.ID_PrevEmployeeStatus,
em.ID_PrevDepartment,
em.ID_PrevDesignation,
em.ID_Separation,
em.ID_TimekeepingFrequency,
em.ID_PrevTimekeepingFrequency,
em.ID_TimekeepingScheme,
em.ID_PrevTimekeepingScheme,
em.OtherReason,
em.EffectivityEndDate,
em.ID_Parameter,
em.ID_PrevParameter,
em.IsApplied,
em.ID_User,
em.DateChanged,
em.ID_Store,
em.ID_PrevStore,
em.ID_Brand,
em.ID_PrevBrand,
em.ID_JobClass,
em.ID_PrevJobClass,
p.Name Employee,
fs.Name FilingStatus,
emt.Name EmployeeMovementType,


sm.Name Store,
bm.Name Brand,
jcm.Name JobClass,
brm.Name Branch,
dm.Name Department,
desm.Name Designation,
cc.Name CostCenter,
es.Name EmployeeStatus,

sm2.Name PrevStore,
bm2.Name PrevBrand,
jcm2.Name PrevJobClass,
brm2.Name PrevBranch,
dm2.Name PrevDepartment,
desm2.Name PrevDesignation,
cc2.Name PrevCostCenter,
es2.Name PrevEmployeeStatus
FROM dbo.tEmployeeMovement AS em
INNER JOIN dbo.tEmployee AS e ON e.ID = em.ID_Employee
INNER JOIN dbo.tPersona AS p ON p.ID = e.ID_Persona
LEFT JOIN dbo.tFilingStatus AS fs ON fs.ID = em.ID_FilingStatus
LEFT JOIN dbo.tEmployeeMovementType AS emt ON emt.ID = em.ID_EmployeeMovementType

--------------------
LEFT JOIN dbo.tStore AS s ON s.ID = em.ID_Store
LEFT JOIN dbo.tBrand AS b ON b.ID = em.ID_Brand
LEFT JOIN dbo.tJobClass AS jc ON jc.ID = em.ID_JobClass
LEFT JOIN dbo.tBranch AS br ON br.ID = em.ID_Branch 
LEFT JOIN dbo.tDepartment AS dep ON dep.ID = em.ID_Department
LEFT JOIN dbo.tDesignation AS des ON des.ID = em.ID_Designation
LEFT JOIN dbo.tCostCenter AS cc ON cc.ID = em.ID_CostCenter
LEFT JOIN dbo.tEmployeeStatus AS es ON es.ID = em.ID_EmployeeStatus

LEFT JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID
LEFT JOIN dbo.tBrandMaintenance AS bm ON bm.ID = b.ID_BrandMaintenance
LEFT JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
LEFT JOIN dbo.tBranchMaintenance AS brm ON brm.ID = br.ID_BranchMaintenance
LEFT JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT JOIN dbo.tDesignationMaintenance AS desm ON desm.ID = des.ID_DesignationMaintenance
--------------------

LEFT JOIN dbo.tStore AS s2 ON s2.ID = em.ID_PrevStore
LEFT JOIN dbo.tBrand AS b2 ON b2.ID = em.ID_PrevBrand
LEFT JOIN dbo.tJobClass AS jc2 ON jc2.ID = em.ID_PrevJobClass
LEFT JOIN dbo.tBranch AS br2 ON br2.ID = em.ID_PrevBranch
LEFT JOIN dbo.tDepartment AS dep2 ON dep2.ID = em.ID_PrevDepartment
LEFT JOIN dbo.tDesignation AS des2 ON des2.ID = em.ID_PrevDesignation
LEFT JOIN dbo.tCostCenter AS cc2 ON cc2.ID = em.ID_PrevCostCenter
LEFT JOIN dbo.tEmployeeStatus AS es2 ON es2.ID = em.ID_PrevEmployeeStatus

LEFT JOIN dbo.tStoreMaintenance AS sm2 ON sm2.ID = s2.ID
LEFT JOIN dbo.tBrandMaintenance AS bm2 ON bm2.ID = b2.ID_BrandMaintenance
LEFT JOIN dbo.tJobClassMaintenance AS jcm2 ON jcm2.ID = jc2.ID_JobClassMaintenance
LEFT JOIN dbo.tBranchMaintenance AS brm2 ON brm2.ID = br2.ID_BranchMaintenance
LEFT JOIN dbo.tDepartmentMaintenance AS dm2 ON dm2.ID = dep2.ID_DepartmentMaintenance
LEFT JOIN dbo.tDesignationMaintenance AS desm2 ON desm2.ID = des2.ID_DesignationMaintenance
GO
