/****** Object:  View [dbo].[vDependent]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vDependent]
AS
SELECT     d.ID, d.ID_Persona, d.IsActive, d.Comment, d.ID_Transaction_Created, d.ID_Transaction_Modified, d.DateTimeCreated, d.DateTimeModified, 
                      d.DateCreated,
                      d.DateModified,
                      d.LastName, 
                      d.FirstName, 
                      d.MiddleName, 
                      d.BirthDate, 
                      d.Name, 
                      d.Relationship, 
                      d.IsOtherDependent, 
                      d.Age,
					  d.ID_Gender,
					  d.isInCapacitated
FROM         dbo.tDependent d
GO
