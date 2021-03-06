/****** Object:  View [dbo].[vPersonaAddress]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vPersonaAddress]
AS
SELECT pa.ID,
       pa.Address,
       pa.ID_Area,
       pa.ID_AddressType,
       pa.SeqNo,
       pa.ID_Persona,
       at.Name AS AddressType,
       am.Name AS Area,
       pa.ContactNo
FROM dbo.tPersonaAddress AS pa
LEFT OUTER JOIN dbo.tArea AS c ON pa.ID_Area = c.ID
INNER JOIN dbo.tAreaMaintenance AS am ON am.ID = c.ID_AreaMaintenance
LEFT OUTER JOIN dbo.tAddressType AS at ON pa.ID_AddressType = at.ID;
GO
