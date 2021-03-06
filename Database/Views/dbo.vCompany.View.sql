/****** Object:  View [dbo].[vCompany]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vCompany]
AS
SELECT C.ID,
       C.Code,
       C.Name,
       C.ImageFile,
       C.SeqNo,
       C.IsActive,
       C.Address,
       C.ZipCode,
       C.TIN,
       C.ID_CompanyClassification,
       C.ID_CompanyType,
       C.SSSNo,
       C.PhilHealthNo,
       C.TelNo,
       C.ID_CompanyGroup,
       CG.Name AS CompanyGroup,
       C.President,
       C.VicePresident,
       C.ID_LogFileFormat,
       C.TradeName,
       C.Business,
       C.Owner,
       C.VatRegNo,
       C.Overview,
       C.ProductsAndServices,
       ct.Name AS CompanyType,
       C.BusinessNature,
       C.BranchCode,
       C.HDMFNo,
       lff.Name AS LogFileFormat,
       cc.Name AS CompanyClassification,
       C.isCOAFinalized,
       C.AcctPeriod,
       C.AcctYear,
       C.isYearly,
       C.ReportImageFile,
       C.Comment,
       C.ID_Branch,
       C.companycolor,
       C.ID_OrgManagement,
       dem.Name OrgManagement,
       ISNULL(per.Name, 'Vacant') OrgManagementEmp,
       C.ID_SCComputation,
       sc.Name SCComputation,
       C.AccountingCode,
       C.Menu_Top_Gradient,
       C.Menu_Bottom_Gradient,
       C.BG_Top_Gradient,
       C.BG_Bottom_Gradient,
       C.Header_Top_Gradient,
       C.Header_Bottom_Gradient,
       C.Main_BG_Top_Gradient,
       C.Main_BG_Bottom_Gradient,
       C.Content_Top_Gradient,
       C.Content_Bottom_Gradient,
       C.ID_Skins,
       sk.Name AS Skins,
       C.ImageFile_GUID
       --C.CodePrefix
FROM dbo.tCompany AS C
LEFT OUTER JOIN dbo.tCompanyClassification AS cc ON C.ID_CompanyClassification = cc.ID
LEFT OUTER JOIN dbo.tLogFileFormat AS lff ON C.ID_LogFileFormat = lff.ID
LEFT OUTER JOIN dbo.tCompanyType AS ct ON C.ID_CompanyType = ct.ID
LEFT OUTER JOIN dbo.tCompanyGroup AS CG ON C.ID_CompanyGroup = CG.ID
LEFT JOIN dbo.tOrgManagement org ON org.ID = C.ID_OrgManagement
LEFT JOIN dbo.tDesignation de ON de.ID = org.ID_Designation
LEFT JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = de.ID_DesignationMaintenance
LEFT JOIN dbo.tEmployee e ON e.ID = org.ID_Employee
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tSCComputation sc ON sc.ID = C.ID_SCComputation
LEFT JOIN dbo.tSkins sk ON C.ID_Skins = sk.ID;
GO
