/****** Object:  View [dbo].[vEmploymentHistory]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmploymentHistory]
AS
SELECT eh.ID,
       eh.Company,
       eh.CompanyTIN,
       eh.CompanyAddress,
       eh.CompanyZipCode,
       eh.Designation,
       eh.StartDate,
       eh.EndDate,
       eh.ImmediateSupervisor,
       eh.SeqNo,
       eh.IsActive,
       eh.Comment,
       eh.ID_Persona,
       eh.MonthlyRate,
       eh.ID_JobClass,
       eh.ContactNo,
       eh.EmployerName,
       eh.Department,
       eh.Benefits,
       jcm.Name AS JobClass,
       eh.ReasonForLeaving,
       eh.ID_CurrentPositionLevel,
       cpl.Name AS PositionLevel,
       eh.ID_Specialization,
       sp.Name AS Specialization,
       eh.JobRole,
       eh.Experience,
       eh.ID_CompanyIndustry,
       ci.Name AS CompanyIndustry
FROM dbo.tEmploymentHistory AS eh
LEFT OUTER JOIN dbo.tJobClass AS jc ON eh.ID_JobClass = jc.ID
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
LEFT OUTER JOIN dbo.tCurrentPositionLevel cpl ON eh.ID_CurrentPositionLevel = cpl.ID
LEFT OUTER JOIN dbo.tSpecialization sp ON eh.ID_Specialization = sp.ID
LEFT OUTER JOIN dbo.tCompanyIndustry ci ON eh.ID_CompanyIndustry = ci.ID;
GO
