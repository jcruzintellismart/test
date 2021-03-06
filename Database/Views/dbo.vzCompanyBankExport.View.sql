/****** Object:  View [dbo].[vzCompanyBankExport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vzCompanyBankExport]
AS

SELECT     TOP 100 PERCENT d.ID,d.ID_Employee, m.ID AS ID_BankExport, e.Code AS EmployeeCode, b.Name AS EmployeeName, d.BankAcctNo, d.NetAmt, 
                      c.Name AS CompanyName, cb.ReportPreparedBy,cb.ID AS ID_CompanyBankAcct
--,u.ID ID_User,u.Name USerName
FROM         dbo.tBankExport_Detail d INNER JOIN
                      dbo.tBankExport m ON d.ID_BankExport = m.ID INNER JOIN
                      dbo.tEmployee e ON d.ID_Employee = e.ID INNER JOIN
                      dbo.tPersona b ON e.ID_Persona = b.ID INNER JOIN
                      dbo.tCompany c ON m.ID_Company = c.ID INNER JOIN
                      dbo.tCompanyBankAcct cb ON m.ID_CompanyBankAcct = cb.ID AND m.ID_Company = cb.ID_Company
--		      CROSS JOIN (Select * from tUser) U Where u.ID = 3


ORDER BY b.Name
GO
