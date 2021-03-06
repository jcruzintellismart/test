/****** Object:  View [dbo].[vPersonaSiblings]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vPersonaSiblings]
AS
SELECT     dbo.tPersonaSiblings.ID, dbo.tPersonaSiblings.Name, dbo.tPersonaSiblings.ImageFile, dbo.tPersonaSiblings.SeqNo, dbo.tPersonaSiblings.IsActive, 
                      dbo.tPersonaSiblings.Comment, dbo.tPersonaSiblings.ID_Persona, dbo.tPersonaSiblings.ID_Gender, dbo.tPersonaSiblings.Age, dbo.tPersonaSiblings.ID_CivilStatus, 
                      dbo.tPersonaSiblings.IsEmployed, dbo.tGender.Name AS Gender, dbo.tCivilStatus.Name AS CivilStatus
FROM         dbo.tPersonaSiblings LEFT OUTER JOIN
                      dbo.tCivilStatus ON dbo.tPersonaSiblings.ID_CivilStatus = dbo.tCivilStatus.ID LEFT OUTER JOIN
                      dbo.tGender ON dbo.tPersonaSiblings.ID_Gender = dbo.tGender.ID
GO
