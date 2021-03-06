/****** Object:  View [dbo].[vEmployeePreviousEmployer]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vEmployeePreviousEmployer]
AS
SELECT     epe.ID, epe.ID_Employee, epe.CompanyName, epe.CompanyAddress, epe.EndDate, epe.MonthlyRate, epe.TMonthAndOtherBenefits_N, epe.DeMinimisBenefits_N, 
                      epe.ContributionsAndUnionDues_N, epe.SalariesAndOtherFormsOfComp_N, epe.BasicSalary, epe.TMonthAndOtherBenefits, epe.SalariesAndOtherFormsOfComp, 
                      epe.TaxWithHeld, epe.GrossCompIncome_N, epe.BasicSMW, epe.HolidayPay, epe.OvertimePay, epe.NDPay, epe.HazardPay, epe.IsActive, epe.Comment, 
                      p.Name AS Employee, epe.NetTaxableCompIncome, epe.TaxWithHeldNov, epe.ID_JobMatching
					  FROM   dbo.tEmployeePreviousEmployer epe
					  LEFT OUTER JOIN dbo.tEmployee e ON e.ID = epe.ID_Employee
					  LEFT OUTER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
GO
