/****** Object:  View [dbo].[vEmployeeTemplateFileDetail_PersonalInfo]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeTemplateFileDetail_PersonalInfo] 
AS
SELECT	
	ID
	, dbo.fIsValidEmployeeTemplateFile_Detail(ID) AS Valid
	,ID_EmployeeTemplateFile
	,EmployeeCode
	,AccessNo
	,LastName
	,FirstName
	,MiddleName
	,Suffix
	,NickName
	,Nationality
	,Citizenship
	,BirthDate
	,BirthPlace
	,Gender
	,Height
	,[Weight]
	,CivilStatus
	,Religion
	,SSSStatus
	,ExemptionStatus
	,BloodType
	,HomeAddress
	,HomePhoneNo
	,MobileNo
	,HomeAddressRegion
	,HomeAddressArea
	,HomeAddressCity
	,ProvincialAddress
	,ProvincialPhoneNo
	,ProvincialAddressRegion
	,ProvincialAddressArea
	,ProvincialAddressCity
	,EmailAddress1
	,EmailAddress2
	,HDMFNo
	,SSSNo
	,GSISNo
	,TinNo
	,PhilHealthNo
	,DriversLicenseNo
	,PassportNo
	,ContactPerson
	,ContactAddress
	,ContactNumber
	,ContactPersonRelationship
	,Spouse
	,SpouseBirthdate
	,SpouseEmployer
	,SpouseOccupation
	,Father
	,FatherBirthday
	,FatherOccupation
	,Mother
	,MotherBirthday
	,MotherOccupation

FROM 
	tEmployeeTemplateFileDetail_PersonalInfo
GO
