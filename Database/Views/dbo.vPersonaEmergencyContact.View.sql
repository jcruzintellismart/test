/****** Object:  View [dbo].[vPersonaEmergencyContact]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vPersonaEmergencyContact]
AS
SELECT     ID, Code, Name, Address, ContactNo, Relationship, Comment, ID_Persona, ID_Transaction_Created, ID_Transaction_Modified, DateTimeCreated, 
                      DateTimeModified, DateCreated, DateModified, IsActive
FROM         dbo.tPersonaEmergencyContact
GO
