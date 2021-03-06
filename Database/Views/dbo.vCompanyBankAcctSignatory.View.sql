/****** Object:  View [dbo].[vCompanyBankAcctSignatory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCompanyBankAcctSignatory] 
AS
SELECT	
s.ID
,s.Code
,s.Name
,s.ImageFile

,s.SeqNo
,s.IsActive
,s.Comment
,s.ID_CompanyBankAcct
,s.Signatory
,s.SignatoryPosition

FROM 
	dbo.tCompanyBankAcct cba LEFT OUTER JOIN 
	tCompanyBankAcctSignatory  s ON s.ID_CompanyBankAcct = cba.ID
GO
