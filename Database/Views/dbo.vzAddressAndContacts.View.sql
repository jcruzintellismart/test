/****** Object:  View [dbo].[vzAddressAndContacts]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzAddressAndContacts]
AS
SELECT 
e.ID [ID_Employee],
e.ID_Company
,e.ID_Designation
,e.ID_Department
,e.Code [EmployeeCode]
,per.Name [Employee]
,com.Name [Company]
,dm.Name [Department]
,pad.Address
,at.Name [AddressType]
,ct.Name [City]
,per.ContactNo
,e.ID_Store --erron 12/15/2020
 FROM  dbo.tEmployee e 
INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
INNER JOIN dbo.tCompany com ON com.ID = e.ID_Company
INNER JOIN dbo.tDepartment dep ON dep.ID = e.ID_Department
LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = dep.ID_DepartmentMaintenance
LEFT JOIN dbo.tPersonaAddress pad ON pad.ID_Persona = per.ID
LEFT JOIN dbo.tAddressType at ON at.ID = pad.ID_AddressType
LEFT JOIN dbo.tCity ct ON ct.ID = pad.ID_Area
WHERE e.IsActive = 1
GO
