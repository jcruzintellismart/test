/****** Object:  View [dbo].[vWebEmployee]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vWebEmployee]
AS

SELECT e.ID,
       e.Code,
       e.ID_Company,
       e.ID_Persona,
       e.ID_Department,
       e.ID_Designation,
       e.ID_EmployeeStatus,
       e.StartDate,
       e.IsTerminated,
       e.IsHired,
       e.EndDate,
       e.IsRequiredToLog,
       e.RegularizationDate,
       e.IsActive,
       e.Comment,
       e.DateTimeCreated,
       e.DateTimeModified,
       e.ID_CostCenter,
       e.ID_Parameter,
       e.AccessNo,
       e.AccessCode,
       e.ID_ShiftSchedule,
       e.ID_Branch,
       C.Name AS Company,
       bm.Name AS Branch,
       dem.Name AS Designation,
       dm.Name AS Department,
       PER.Name,
       PER.FirstName,
       PER.MiddleName,
       PER.LastName,
       PER.SSSNo,
       PER.PhilHealthNo,
       PER.HDMFNo,
       PER.TIN,
       GEN.Name AS Gender,
       PAR.DaysPerYear,
       PAR.HoursPerDay,
       PER.BirthDate,
       dbo.fEmployeeYearsAndMonthsOfService(e.StartDate, ISNULL(e.EndDate, dbo.fGetDate())) AS LengthOfService,
       PER.HasCompleteEmploymentRequirements,
       ES.Name AS EmployeeStatus,
       WS.Name AS WeeklySchedule,
       e.ID_WeeklySchedule,
       e.ID_Section,
       e.ID_Level,
       DIV.Name AS Division,
       jcm.Name AS JobClass,
       s.Name AS Section,
       l.Name AS [Level],
       cc.Name AS CostCenter,
       PAR.Name AS Parameter,
       e.ID_Unit,
       u.Name AS Unit,
       e.Password,
       e.OldCode,
       PER.NickName,
       PER.Birthday,
       n.Name AS Nationality,
       jc.ID AS JobclassID,
       e.ID_Agency,
       e.SubstitutedFiling,
       e.YearsOfService,
       e.MonthsOfService,
       PAR.MonthsPerYear,
       PER.Name AS Persona,
       PER.ImageFile,
       m.Name AS BirthMonth,
       m.SeqNo AS BirthMonthSeqNo,
       DES.ID_UserGroup,
       e.EmailPassword,
       e.CompanyEmail,
       dbo.fEmployeeYearsAndMonthsOfService2(e.ID) AS LengthOfService2,
       e.LogPassword,
       e.CardNo,
       e.HasFingerPrint,
       e.ID_ShiftType,
       st.Name AS ShiftType,
       DEP.ID_Division,
       e.ID_DevicePrivilege,
       e.VendorAccount,
       PER.MiddleInitial,
       PER.BirthPlace,
       cit.Name AS Citizenship,
       civ.Name AS CivilStatus,
       rel.Name AS Religion,
       bt.Name AS BloodType,
       PER.Spouse,
       PER.SpouseBirthDate,
       PER.SpouseEmployer,
       PER.SpouseOccupation,
       PER.GSISNo,
       PER.EmailAddress,
       PER.AlternateEmailAddress,
       e.ID_PieceWorkGroup,
       GEN.ImagePath,
       '' br,
       PER.Father,
       PER.FatherBirthDate,
       PER.FatherOccupation,
       PER.Mother,
       PER.MotherBirthDate,
       PER.MotherOccupation,
       (
           SELECT COUNT(*) FROM dbo.tPersonaChildren WHERE ID_Persona = e.ID_Persona
       ) AS ChildrenCount,
       (
           SELECT COUNT(*) FROM dbo.tPersonaSiblings WHERE ID_Persona = e.ID_Persona
       ) AS SiblingCount,
       e.ID_EmployeeCategory,
       PER.Height,
       PER.Weight,
       PER.ID_BloodType,
       PER.ID_Gender,
       PER.ID_Nationality,
       PER.ID_Citizenship,
       PER.ID_Religion,
       PER.ID_CivilStatus,
       ec.[Name] EmployeeCategory,
       e.HiredDate,
       pa.Address,
       e.ID_TimekeepingScheme,
       e.ID_TimekeepingFrequency
FROM dbo.tEmployee AS e
LEFT OUTER JOIN dbo.tShiftType AS st ON st.ID = e.ID_ShiftType
LEFT OUTER JOIN dbo.tCostCenter AS cc ON cc.ID = e.ID_CostCenter
LEFT OUTER JOIN dbo.tTimekeepingScheme AS ts ON ts.ID = e.ID_TimekeepingScheme
LEFT OUTER JOIN dbo.tTimekeepingFrequency AS tf ON e.ID_TimekeepingFrequency = tf.ID
LEFT OUTER JOIN dbo.tDesignation AS DES ON e.ID_Designation = DES.ID
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tLevel AS l ON e.ID_Level = l.ID
LEFT OUTER JOIN dbo.tSection AS s ON e.ID_Section = s.ID
LEFT OUTER JOIN dbo.tWeeklySchedule AS WS ON e.ID_WeeklySchedule = WS.ID
LEFT OUTER JOIN dbo.tEmployeeStatus AS ES ON e.ID_EmployeeStatus = ES.ID
LEFT OUTER JOIN dbo.tParameter AS PAR ON e.ID_Parameter = PAR.ID
LEFT OUTER JOIN dbo.tCompany AS C ON C.ID = e.ID_Company
LEFT OUTER JOIN dbo.tBranch AS BR ON e.ID_Branch = BR.ID
INNER JOIN dbo.tBranchMaintenance AS bm ON bm.ID = br.ID_BranchMaintenance
LEFT OUTER JOIN dbo.tPersona AS PER ON e.ID_Persona = PER.ID
LEFT OUTER JOIN dbo.tDepartment AS DEP ON e.ID_Department = DEP.ID
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT OUTER JOIN dbo.tDivision AS DIV ON DIV.ID = DEP.ID_Division
LEFT OUTER JOIN dbo.tJobClass AS jc ON DES.ID_JobClass = jc.ID
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
LEFT OUTER JOIN dbo.tGender AS GEN ON PER.ID_Gender = GEN.ID
LEFT OUTER JOIN dbo.tUnit AS u ON u.ID = e.ID_Unit
LEFT OUTER JOIN dbo.tNationality AS n ON n.ID = PER.ID_Nationality
LEFT OUTER JOIN dbo.tMonth AS m ON m.ID = MONTH(PER.BirthDate)
LEFT OUTER JOIN dbo.tCitizenship AS cit ON PER.ID_Citizenship = cit.ID
LEFT OUTER JOIN dbo.tCivilStatus AS civ ON PER.ID_CivilStatus = civ.ID
LEFT OUTER JOIN dbo.tReligion AS rel ON PER.ID_Religion = rel.ID
LEFT OUTER JOIN dbo.tBloodType AS bt ON PER.ID_BloodType = bt.ID
LEFT OUTER JOIN tEmployeeCategory ec ON e.ID_EmployeeCategory = ec.ID
LEFT OUTER JOIN
(
        SELECT MIN(pass.ID) ID_PersonaAddress,
               pass.ID_Persona
        FROM dbo.tPersonaAddress pass
        WHERE pass.ID_AddressType = 1
        GROUP BY pass.ID_Persona
) addp ON addp.ID_Persona = PER.ID
LEFT OUTER JOIN dbo.tPersonaAddress pa ON pa.ID_Persona = addp.ID_Persona AND pa.ID = addp.ID_PersonaAddress 
LEFT OUTER JOIN dbo.tUser usr ON usr.ID_Employee = e.ID;
GO
