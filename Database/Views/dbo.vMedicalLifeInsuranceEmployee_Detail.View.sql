/****** Object:  View [dbo].[vMedicalLifeInsuranceEmployee_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMedicalLifeInsuranceEmployee_Detail]
AS
SELECT  mlied.ID ,
        mlied.ID_MedicalLifeInsurance ,
        mlied.LastName ,
        mlied.Suffix ,
        mlied.FirstName ,
        mlied.MiddleName ,
        mlied.BirthDate ,
        mlied.BirthPlace ,
        mlied.ID_Gender ,
        mlied.ID_CivilStatus ,
        mlied.Address ,
        mlied.TelNo ,
        mlied.ContactNo ,
        mlied.EmailAddress ,
		mlied.ID_Employee ,
		g.Name AS Gender ,
		cs.Name AS CivilStatus ,
		e.Name AS Employee FROM tMedicalLifeInsuranceEmployee_Detail mlied
		LEFT JOIN dbo.tGender g ON mlied.ID_Gender = g.ID
		LEFT JOIN dbo.tCivilStatus cs ON mlied.ID_CivilStatus = cs.ID
		LEFT JOIN dbo.vEmployee e ON mlied.ID_Employee = e.ID
GO
