/****** Object:  View [dbo].[vCompanyBankAcct]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCompanyBankAcct]
AS
SELECT     CBA.ID, CBA.Code, B.Code + ' - ' + CBA.No AS Name, CBA.ID_Company, CBA.ID_Bank, CBA.No, B.ImageFile, CBA.SeqNo, CBA.IsActive, CBA.Comment, 
                      C.Name AS Company, B.Name AS Bank, CBA.BankName, CBA.BankAddress, CBA.AttentionHeader, CBA.ReportPreparedBy
FROM         dbo.tCompanyBankAcct AS CBA LEFT OUTER JOIN
                      dbo.tBank AS B ON CBA.ID_Bank = B.ID LEFT OUTER JOIN
                      dbo.tCompany AS C ON CBA.ID_Company = C.ID
GO
