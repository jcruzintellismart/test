/****** Object:  View [dbo].[vEmployeeMovementDetailChild]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeMovementDetailChild]
AS

SELECT 1 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Company' Field,
       c1.Name AS [From],
       c2.Name AS [To]
FROM dbo.tEmployeeMovement em 
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tCompany c1 ON c1.ID = em.ID_PrevCompany
LEFT OUTER JOIN dbo.tCompany c2 ON c2.ID = em.ID_Company
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company

UNION ALL

SELECT 2 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Branch' Field,
       bm.Name AS [From],
       bm2.Name AS [To]
FROM dbo.tEmployeeMovement em
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tBranch c1 ON c1.ID = em.ID_PrevBranch
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = c1.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tBranch c2 ON c2.ID = em.ID_Branch
INNER JOIN dbo.tBranchMaintenance AS bm2 ON bm2.ID = c2.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company

UNION ALL

SELECT 3 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'CostCenter' Field,
       c1.Name AS [From],
       c2.Name AS [To]
FROM dbo.tEmployeeMovement em 
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tCostCenter c1 ON c1.ID = em.ID_PrevCostCenter
LEFT OUTER JOIN dbo.tCostCenter c2 ON c2.ID = em.ID_CostCenter
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company

UNION ALL

SELECT 4 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Department' Field,
       dm.Name AS [From],
       dm2.Name AS [To]
FROM dbo.tEmployeeMovement em
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tDepartment c1 ON c1.ID = em.ID_PrevDepartment
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = c1.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tDepartment c2 ON c2.ID = em.ID_Department
INNER JOIN dbo.tDepartmentMaintenance AS dm2 ON dm2.ID = c2.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company

UNION ALL

SELECT 5 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Position' Field,
       dm.Name AS [From],
       dm2.Name AS [To]
FROM dbo.tEmployeeMovement em
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tDesignation c1 ON c1.ID = em.ID_PrevDesignation
INNER JOIN dbo.tDesignationMaintenance AS dm ON dm.ID = c1.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tDesignation c2 ON c2.ID = em.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dm2 ON dm2.ID = c2.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company

UNION ALL

SELECT 6 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Employee Status' Field,
       c1.Name AS [From],
       c2.Name AS [To]
FROM dbo.tEmployeeMovement em
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tEmployeeStatus c1 ON c1.ID = em.ID_PrevEmployeeStatus
LEFT OUTER JOIN dbo.tEmployeeStatus c2 ON c2.ID = em.ID_EmployeeStatus
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company

UNION ALL


--SELECT 7 FieldNo,em.ID_Company,comp.Name AS Company, em.EffectivityDate,em.ID_EmployeeMovementType,emt.Name AS EmployeeMovementType,em.StartDate,em.RegularizationDate,em.EndDate,em.ID_FilingStatus,fs.Name AS FilingStatus,em.ID ID_EmployeeMovement,em.ID,em.ID_Employee,p.Name AS Employee,'Tax Exemption' Field,c1.Name AS [From],c2.Name AS [To] FROM dbo.tEmployeeMovement em LEFT OUTER JOIN 
--tEmployee e ON e.Id = em.ID_Employee LEFT OUTER JOIN
--dbo.tPersona p ON p.ID = e.ID_Persona LEFT OUTER JOIN 
--dbo.tTaxExemption c1 ON c1.ID = em.ID_PrevTaxExemption LEFT OUTER JOIN 
--dbo.tTaxExemption c2 ON c2.ID = em.ID_TaxExemption LEFT OUTER JOIN
--dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType INNER JOIN
--dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus INNER JOIN
--tCompany comp ON comp.ID = em.ID_Company

--UNION ALL


--SELECT 8 FieldNo,em.ID_Company,comp.Name AS Company, em.EffectivityDate,em.ID_EmployeeMovementType,emt.Name AS EmployeeMovementType,em.StartDate,em.RegularizationDate,em.EndDate,em.ID_FilingStatus,fs.Name AS FilingStatus,em.ID ID_EmployeeMovement,em.ID,em.ID_Employee,p.Name AS Employee,'Payroll Scheme' Field, NULL [From], NULL [To]--, c1.Name AS [From],c2.Name AS [To] 
--FROM dbo.tEmployeeMovement em LEFT OUTER JOIN 
--tEmployee e ON e.Id = em.ID_Employee LEFT OUTER JOIN
--dbo.tPersona p ON p.ID = e.ID_Persona LEFT OUTER JOIN 
----dbo.tPayrollScheme c1 ON c1.ID = em.ID_PrevPayrollScheme LEFT OUTER JOIN 
----dbo.tPayrollScheme c2 ON c2.ID = em.ID_PayrollScheme LEFT OUTER JOIN
--dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType INNER JOIN
--dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus INNER JOIN
--tCompany comp ON comp.ID = em.ID_Company

--UNION ALL


SELECT 9 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Payroll Frequency' Field,
       NULL [From],
       NULL [To] --, c1.Name AS [From],c2.Name AS [To]
FROM dbo.tEmployeeMovement em
LEFT OUTER JOIN tEmployee e
ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p
ON p.ID = e.ID_Persona
LEFT OUTER JOIN
    --dbo.tPayrollFrequency c1 ON c1.ID = em.ID_PrevPayrollFrequency LEFT OUTER JOIN 
    --dbo.tPayrollFrequency c2 ON c2.ID = em.ID_PayrollFrequency LEFT OUTER JOIN
dbo.tEmployeeMovementType emt
ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs
ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp
ON comp.ID = em.ID_Company

UNION ALL

SELECT 10 FieldNo,
       em.ID_Company,
       comp.Name AS Company,
       em.EffectivityDate,
       em.ID_EmployeeMovementType,
       emt.Name AS EmployeeMovementType,
       em.StartDate,
       em.RegularizationDate,
       em.EndDate,
       em.ID_FilingStatus,
       fs.Name AS FilingStatus,
       em.ID ID_EmployeeMovement,
       em.ID,
       em.ID_Employee,
       p.Name AS Employee,
       'Payroll Parameter' Field,
       c1.Name AS [From],
       c2.Name AS [To]
FROM dbo.tEmployeeMovement em
LEFT OUTER JOIN tEmployee e ON e.ID = em.ID_Employee
LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tParameter c1 ON c1.ID = em.ID_PrevParameter
LEFT OUTER JOIN dbo.tParameter c2 ON c2.ID = em.ID_Parameter
LEFT OUTER JOIN dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType
INNER JOIN dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus
INNER JOIN tCompany comp ON comp.ID = em.ID_Company;

--UNION ALL


--SELECT 10 FieldNo,em.ID_Company,comp.Name AS Company, em.EffectivityDate,em.ID_EmployeeMovementType,emt.Name AS EmployeeMovementType,em.StartDate,em.RegularizationDate,em.EndDate,em.ID_FilingStatus,fs.Name AS FilingStatus,em.ID ID_EmployeeMovement,em.ID,em.ID_Employee,p.Name AS Employee,'Salary Rate' Field, convert(varchar,convert(decimal(12,2),ISNULL(em.PreviousMonthlyRate,0))) AS [From],convert(varchar,convert(decimal(12,2),ISNULL(em.MonthlyRate,0))) AS [To] FROM dbo.tEmployeeMovement em LEFT OUTER JOIN 
--tEmployee e ON e.Id = em.ID_Employee LEFT OUTER JOIN
--dbo.tPersona p ON p.ID = e.ID_Persona  LEFT OUTER JOIN
--dbo.tEmployeeMovementType emt ON emt.ID = em.ID_EmployeeMovementType INNER JOIN
--dbo.tFilingStatus fs ON fs.ID = em.ID_FilingStatus INNER JOIN
--tCompany comp ON comp.ID = em.ID_Company
GO
