/****** Object:  View [dbo].[vCompanyBankAcctSetting]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCompanyBankAcctSetting]
AS
SELECT     ID, Name, [Value], ID_CompanyBankAcct, SeqNo, Comment
FROM         dbo.tCompanyBankAcctSetting cbans
GO
