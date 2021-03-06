/****** Object:  View [dbo].[vFinalPay]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[vFinalPay]
AS
SELECT     fp.ID, fp.Name, fp.ID_Employee, fp.Year, fp.TMonthStartDate, fp.TMonthEndDate, fp.LCStartDate, fp.LCEndDate, fp.DailyRate, fp.MonthlyRate, fp.ID_TaxExemption, 
                      fp.ID_CostCenter, fp.ID_Company, fp.GrossAmt, fp.DeductionAmt, fp.NetAmt, fp.PayDate, fp.IsActive, fp.Comment, ps.Name AS Employee, cc.Name AS CostCenter, 
                      c.Name AS Company, te.Code AS TaxExemptionCode, te.Name AS TaxExemption, fp.StartDate, fp.EndDate, fp.HourlyRate, fp.UseMonthlyRate, fp.Months, 
                      ps.ImageFile, e.Code AS EmployeeCode, fp.ID_Month, fp.ContributionYear, m.Name AS Month, fp.MWE , fp.isFinalized ,fp.isAnnualize
FROM         dbo.tFinalPay AS fp LEFT OUTER JOIN
                      dbo.tTaxExemption AS te ON fp.ID_TaxExemption = te.ID LEFT OUTER JOIN
                      dbo.tEmployee AS e ON fp.ID_Employee = e.ID LEFT OUTER JOIN
                      dbo.tCompany AS c ON fp.ID_Company = c.ID LEFT OUTER JOIN
                      dbo.tCostCenter AS cc ON fp.ID_CostCenter = cc.ID LEFT OUTER JOIN
                      dbo.tPersona AS ps ON e.ID_Persona = ps.ID LEFT OUTER JOIN
                      dbo.tMonth AS m ON m.ID = fp.ID_Month
GO
