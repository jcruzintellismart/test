/****** Object:  View [dbo].[vCharacterReference]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCharacterReference]
AS
SELECT     ID, Code, Name, ID_Persona, SeqNo, IsActive, Comment, ID_Transaction_Created, ID_Transaction_Modified, DateTimeCreated, 
                      DateTimeModified, DateCreated, DateModified, ContactNo, Occupation, Relationship
FROM         dbo.tCharacterReference CR
GO
