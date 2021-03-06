/****** Object:  View [dbo].[vEmployeeDailyScheduleView]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailyScheduleView]
AS
SELECT S.ID,
       S.StartDate,
       S.EndDate,
       P.Name AS Employee,
       C.Name AS Company,
       S.Comment,
       S.ID_Company,
       S.ID_Employee,
       S.SeqNo,
       S.IsActive,
       S.ID_Transaction_Created,
       S.ID_Transaction_Modified,
       S.ID_Branch,
       S.ID_Department,
       S.ID_Designation,
       dsm.Name AS Designation,
       dm.Name AS Department,
       bm.Name AS Branch,
       S.ID_TimekeepingFrequency,
       S.ID_Month,
       S.Year,
       S.Code,
       S.Name,
       tf.Name AS TimekeepingFrequency,
       S.ID_EmployeeStatus,
       ES.Name AS EmployeeStatus,
       S.ID_Gender,
       S.IsFinalized,
       S.ManPowerBudgetAmt,
       S.ManPowerBudgetPercentage,
       S.SalesProjection,
       S.ManPowerComputedAmt,
       S.ManPowerDifferenceAmt,
       S.ManPowerDifferencePercentage,
       S.ID_CostCenter,
       cc.Name AS CostCenter,
       S.ID_PayrollClassifi,
       --pc.Name PayrollClassifi,
       g.Name Gender,
       S.DateTimeCreated,
       S.DateTimeModified,
       S.DateCreated,
       S.DateModified,
	   s.PostingDate,
	   s.ID_User,
	   u.[Name] [User],
	   S.ID_Store,
	   sm.Name Store,
	   sm.Code StoreCode,
	   brm.Name Brand,
	   brm.Code BrandCode,
	   s.IsSAPProcessed
FROM dbo.tEmployeeDailyScheduleView AS S
    LEFT OUTER JOIN dbo.tDesignation AS DES ON DES.ID = S.ID_Designation
	LEFT OUTER JOIN dbo.tDesignationMaintenance AS dsm ON dsm.ID = des.ID_DesignationMaintenance
    LEFT OUTER JOIN dbo.tBranch AS B ON B.ID = S.ID_Branch
	LEFT OUTER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = B.ID_BranchMaintenance
    LEFT OUTER JOIN dbo.tEmployeeStatus AS ES ON ES.ID = S.ID_EmployeeStatus
    LEFT OUTER JOIN dbo.tCostCenter AS cc ON S.ID_CostCenter = cc.ID
    LEFT OUTER JOIN dbo.tEmployee AS E ON S.ID_Employee = E.ID
    LEFT OUTER JOIN dbo.tDepartment AS DEP ON S.ID_Department = DEP.ID
	LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
    LEFT OUTER JOIN dbo.tCompany AS C ON S.ID_Company = C.ID
    LEFT OUTER JOIN dbo.tPersona AS P ON E.ID_Persona = P.ID
    LEFT OUTER JOIN dbo.tTimekeepingFrequency AS tf ON S.ID_TimekeepingFrequency = tf.ID 
    --LEFT OUTER JOIN dbo.tPayrollClassification pc ON pc.ID = S.ID_PayrollClassifi
    LEFT OUTER JOIN dbo.tGender g ON g.ID = S.ID_Gender
	LEFT OUTER JOIN dbo.tUser u ON u.ID = s.ID_User
	LEFT OUTER JOIN dbo.tStore st ON s.ID_Store = st.ID
	LEFT OUTER JOIN dbo.tStoreMaintenance sm ON st.ID_StoreMaintenance = sm.ID
	LEFT OUTER JOIN dbo.tBrand brd ON brd.ID_Store = st.ID
	LEFT OUTER JOIN dbo.tBrandMaintenance brm ON brm.ID = brd.ID_BrandMaintenance
GO
