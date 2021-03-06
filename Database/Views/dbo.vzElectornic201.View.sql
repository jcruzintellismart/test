/****** Object:  View [dbo].[vzElectornic201]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vzElectornic201]
AS

SELECT e.ID [ID_Employee]
,per.Name [Employee]
,e.ID_Company
,e.ID_Department
,e.ID_Designation
,e.AccessNo [EmpNo]
,e.Code[EmpCode]
,per.LastName
,per.FirstName
,per.MiddleName
,per.NickName
,per.BirthDate
,per.Age
,per.BirthPlace
,gen.Name [Gender]
,na.Name [Nationality]
,rel.Name [Religion]
,cs.Name [CivilStatus]
,per.Height
,per.Weight
,bt.Name [BloodType]
,EmailAddress
 FROM  dbo.tEmployee e
INNER JOIN dbo.tCompany com ON com.ID = e.ID_Company
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
INNER JOIN dbo.tDesignation des ON des.ID = e.ID_Designation
INNER JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department

LEFT JOIN dbo.tGender gen ON gen.ID = per.ID_Gender
LEFT JOIN dbo.tNationality na ON na.ID = per.ID_Nationality
LEFT JOIN dbo.tReligion rel ON rel.ID = per.ID_Religion
LEFT JOIN dbo.tCivilStatus cs ON cs.ID = per.ID_CivilStatus
LEFT JOIN dbo.tBloodType bt ON bt.ID = per.ID_BloodType
GO
