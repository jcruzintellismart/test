/****** Object:  View [dbo].[vFinalPay_Annualization]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vFinalPay_Annualization]
AS
SELECT     ID, ID_FinalPay, NonTaxTMonthAndOtherBenefits, NonTaxDeMinimis, Contri, NonTaxSalAndOtherFormsOfCompensation, TotalNonTax, 
                      TaxTMonthAndOtherBenefits, TaxSalAndOtherFormsOfCompensation, TaxBasicSalary, TotalTax, ExemptionAmount, HealthPremium, 
                      NetTaxableCompIncome, TaxOn, TaxInExcess, TaxDue, TaxWithHeldNov, TaxWithHeldDec, TaxWithHeld, TaxRefund, AdjustedTaxWithHeld, 
                      Representation, Transportation, COLA, HousingAllownace, OtherRegular, Commission, ProfitSharing, DirectorFee, HazardPay, OvertimePay, 
                      OtherSupplementary, SSS, PHIC, HDMF, Comment
FROM         dbo.tFinalPay_Annualization
GO
