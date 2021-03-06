/****** Object:  View [dbo].[vPersonaChildren]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vPersonaChildren]
AS
SELECT     dbo.tPersonaChildren.ID, dbo.tPersonaChildren.Name, dbo.tPersonaChildren.ImageFile, dbo.tPersonaChildren.SeqNo, dbo.tPersonaChildren.IsActive, 
                      dbo.tPersonaChildren.Comment, dbo.tPersonaChildren.ID_Gender, dbo.tPersonaChildren.Age, dbo.tPersonaChildren.BirthDate, dbo.tPersonaChildren.IsStudying, 
                      dbo.tGender.Name AS Gender, dbo.tPersonaChildren.ID_Persona
FROM         dbo.tPersonaChildren LEFT OUTER JOIN
                      dbo.tGender ON dbo.tPersonaChildren.ID_Gender = dbo.tGender.ID
GO
