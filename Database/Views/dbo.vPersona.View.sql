/****** Object:  View [dbo].[vPersona]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vPersona]
AS
SELECT P.ID,
       P.Code,
       P.LastName,
       P.FirstName,
       P.MiddleName,
       P.BirthDate,
       P.SSSNo,
       P.PhilHealthNo,
       P.HDMFNo,
       P.TIN,
       P.Height,
       P.Weight,
       P.EmailAddress,
       P.AlternateEmailAddress,
       P.MobileNo,
       P.ImageFile,
       P.ID_Gender,
       P.Father,
       P.Mother,
       P.ID_Religion,
       P.ID_Nationality,
       P.ID_CivilStatus,
       P.Spouse,
       P.ID_BloodType,
       P.Name,
       P.Birthday,
       FLOOR(DATEDIFF(DAY, BirthDate, GETDATE()) / 365.25) AS Age,
       P.Name1,
       P.Name2,
       R.Name AS Religion,
       N.Name AS Nationality,
       G.Name AS Gender,
       P.ID_Transaction_Created,
       P.ID_Transaction_Modified,
       P.Comment,
       P.ID_Citizenship,
       CT.Name AS Citizenship,
       P.MiddleInitial,
       P.ID_Company,
       P.NickName,
       P.ContactNo,
       P.HasCompleteEmploymentRequirements,
       P.IsApplicant,
       P.SpouseBirthDate,
       P.SpouseEmployer,
       P.SpouseOccupation,
       P.Hobbies,
       P.BirthPlace,
       P.KnownEmployee,
       P.KnownEmployee_Location,
       P.KnownEmployee_Designation,
       P.KnownEmployee_Relationship,
       P.CriminalRecord,
       P.Illness,
       c.Name AS Company,
       cs.Name AS CivilStatus,
       P.GSISNo,
       P.Eligibility,
       P.ID_SSSStatus,
       -- dbo.tSSSStatus.Name AS SSSStatus,
       bt.Name AS BloodType,
       m.Name AS BirthMonth,
       P.GUID,
       P.Hired,
       P.SalaryDesired,
       P.ApplicationDate,
       P.WorkPermitNo,
       P.DriversLicenseNo,
       P.ACRNo,
       P.PassportNo,
       P.Suffix,
       P.FatherOccupation,
       P.FatherBirthDate,
       P.MotherBirthDate,
       P.MotherOccupation,
       P.ID_Designation1,
       P.ID_Designation2,
       P.ID_Designation3,
       eb.ID AS ID_EducationBackground,
       eb.ID_EducationDegree,
       ed.Name AS EducationDegree,
       eb.ID_School,
       sc.Name AS School,
       eb.ID_Courses,
       cor.Name AS FieldOfStudy,
       dm.Name AS AppliedPositionOption1,
       dm2.Name AS AppliedPositionOption2,
       dm3.Name AS AppliedPositionOption3,
       P.ResumeFile,
       P.ID_EducationBackground AS Expr1,
       P.ID_EmployeeReportCard,
       eb.School AS schoolname,
       P.ImageFile_GUID,
	   p.ValidationCode
FROM dbo.tPersona AS P
    LEFT OUTER JOIN dbo.tCivilStatus AS cs ON P.ID_CivilStatus = cs.ID
    LEFT OUTER JOIN dbo.tCompany AS c ON P.ID_Company = c.ID
    LEFT OUTER JOIN dbo.tNationality AS N ON P.ID_Nationality = N.ID
    LEFT OUTER JOIN dbo.tReligion AS R ON P.ID_Religion = R.ID
    LEFT OUTER JOIN dbo.tGender AS G ON P.ID_Gender = G.ID
    LEFT OUTER JOIN dbo.tCitizenship AS CT ON P.ID_Citizenship = CT.ID
    LEFT OUTER JOIN dbo.tBloodType AS bt ON bt.ID = P.ID_BloodType
    LEFT OUTER JOIN dbo.tMonth AS m ON m.ID = MONTH(P.BirthDate)
    LEFT OUTER JOIN dbo.tEducationAttainment AS eb ON P.ID_EducationBackground = eb.ID
    LEFT OUTER JOIN dbo.tEducationDegree AS ed ON eb.ID_EducationDegree = ed.ID
    LEFT OUTER JOIN dbo.tSchool AS sc ON eb.ID_School = sc.ID
    LEFT OUTER JOIN dbo.tCourses AS cor ON eb.ID_Courses = cor.ID
    LEFT OUTER JOIN dbo.tDesignation AS dg1 ON P.ID_Designation1 = dg1.ID
	LEFT OUTER JOIN dbo.tDesignationMaintenance AS dm ON dm.ID = dg1.ID_DesignationMaintenance
    LEFT OUTER JOIN dbo.tDesignation AS dg2 ON P.ID_Designation2 = dg2.ID
	LEFT OUTER JOIN dbo.tDesignationMaintenance AS dm2 ON dm2.ID = dg2.ID_DesignationMaintenance
    LEFT OUTER JOIN dbo.tDesignation AS dg3 ON P.ID_Designation3 = dg3.ID
	LEFT OUTER JOIN dbo.tDesignationMaintenance AS dm3 ON dm3.ID = dg3.ID_DesignationMaintenance;
GO
