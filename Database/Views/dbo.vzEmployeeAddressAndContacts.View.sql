/****** Object:  View [dbo].[vzEmployeeAddressAndContacts]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeAddressAndContacts]
AS
SELECT 
e.ID ID_Employee
,per.ID ID_Persona
,per.Code
,per.Name1
,h.AddressType
,h.Address
,h.Area
,h.ContactNo
,h.MobileNo
,c.ID ID_Company
,c.Name Company
,e.IsActive
,e.ID_Designation
,dem.Name AS Designation
FROM dbo.tPersona per
LEFT OUTER JOIN dbo.tEmployee e ON per.id = e.ID_Persona
LEFT OUTER JOIN	dbo.tDesignation d ON d.ID = e.ID_Designation
LEFT OUTER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = d.ID_DesignationMaintenance
LEFT OUTER JOIN dbo.tCompany c ON per.ID_Company = c.ID AND e.ID_Company = c.ID
LEFT OUTER JOIN (
		SELECT 
		p.ID ID_Persona
		,p.code
		,p.Name1
		,at.Name AddressType
		,Address
		,am.Name Area
		,pa.ContactNo
		,p.MobileNo
		FROM dbo.tPersona p
		LEFT OUTER JOIN dbo.tPersonaAddress pa ON p.ID = pa.ID_Persona
		LEFT OUTER JOIN dbo.tAddressType at ON pa.ID_AddressType = at.ID
		LEFT OUTER JOIN dbo.tArea a ON pa.ID_Area = a.ID
		LEFT OUTER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
		WHERE ID_AddressType = 1

		UNION ALL
        
		SELECT 
		p.ID ID_Persona
		,p.code
		,p.Name1
		,at.Name AddressType
		,Address
		,am.Name Area
		,pa.ContactNo
		,p.MobileNo
		FROM dbo.tPersona p
		LEFT OUTER JOIN dbo.tPersonaAddress pa ON p.ID = pa.ID_Persona
		LEFT OUTER JOIN dbo.tAddressType at ON pa.ID_AddressType = at.ID
		LEFT OUTER JOIN dbo.tArea a ON pa.ID_Area = a.ID
		LEFT OUTER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
		WHERE ID_AddressType = 2
		
		
		UNION ALL
        
		SELECT 
		p.ID ID_Persona
		,p.code
		,p.Name1
		,at.Name AddressType
		,Address
		,am.Name Area
		,pa.ContactNo
		,p.MobileNo
		FROM dbo.tPersona p
		LEFT OUTER JOIN dbo.tPersonaAddress pa ON p.ID = pa.ID_Persona
		LEFT OUTER JOIN dbo.tAddressType at ON pa.ID_AddressType = at.ID
		LEFT OUTER JOIN dbo.tArea a ON pa.ID_Area = a.ID
		LEFT OUTER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
		WHERE ID_AddressType = 3) h ON per.ID = h.ID_Persona
 WHERE h.AddressType IS NOT NULL
GO
