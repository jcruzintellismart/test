/****** Object:  View [dbo].[vCitizenship]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vCitizenship]
AS
SELECT     ID, Code, Name, SeqNo, IsActive, Comment, ID_Transaction_Created, ID_Transaction_Modified, DateTimeCreated, 
                      DateTimeModified, DateCreated, DateModified
FROM         dbo.tCitizenship
GO
