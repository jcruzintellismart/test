/****** Object:  View [dbo].[vEmployeeTemplateFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeTemplateFile_Detail]
AS
SELECT     ID, dbo.fIsValidEmployeeTemplateFile_Detail(ID) AS Valid, ID_EmployeeTemplateFile, EmployeeCode, AccessNo, LastName, FirstName, MiddleName, NickName, 
                      Nationality, HDMFNo, PreviousDesignation, Course, Concept, Company, Branch, CostCenter, Designation, Department, JobClass, DateValidated, HomeAddress, 
                      HomePhoneNo, ProvincialAddress, ProvincialPhoneNo, BirthDate, Gender, Citizenship, SSSNo, TinNo, PhilHealthNo, CompanyBank, CompanyBankNo, AcctNo, 
                      CompanyBank2, CompanyBankNo2, AcctNo2, PreviousEmployer, PreviousEmployerAddress, PreviousEmployerNo, Elementary, ElementaryAddress, YearGraduated1, 
                      HighSchool, HighSchoolAddress, YearGraduated2, College, CollegeAddress, YearGraduated3, Vocational, VocationalAddress, YearGraduated4, Others, OthersAddress, 
                      YearGraduted5, Scheme, PayrollFrequency, ExemptionStatus, Status, MonthlySalary, HourlySalary, DailySalary, Name1, Relationship1, BirthDate1, Name2, 
                      Relationship2, BirthDate2, Name3, Relationship3, BirthDate3, Name4, Relationship4, BirthDate4, DateRegularized, Allowance, SP, EducationalAttainment, Remarks, 
                      CellphoneAllowance, IsRequiredToLog, DaysperYear, HoursperDay, ContactPerson, ContactAddress, ContactNumber, Father, Mother
FROM         dbo.tEmployeeTemplateFile_Detail
GO
