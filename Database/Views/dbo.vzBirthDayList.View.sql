/****** Object:  View [dbo].[vzBirthDayList]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzBirthDayList] 
AS
SELECT e.ID_Company
,e.ID_Department
,e.ID [ID_Employee]
,e.StartDate
,dep.Name [Department]
,com.Name [Company]
,e.Code [EmployeeCode]
,per.Name [Employee]
,dem.Name [Position]
,dep.BirthDate
 FROM  dbo.tEmployee e
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
INNER JOIN dbo.tDependent dep ON dep.ID = e.ID_Department
INNER JOIN dbo.tCompany com ON com.ID = e.ID_Company
INNER JOIN dbo.tDesignation des ON des.ID = e.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance
WHERE e.IsActive = 1
GO
