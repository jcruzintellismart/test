/****** Object:  View [dbo].[vTimekeepingScheme]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTimekeepingScheme]
AS
SELECT     ID, Code, Name, IsActive, Comment, ID_Transaction_Created, ID_Transaction_Modified, DateTimeCreated, DateTimeModified, 
                      DateCreated, DateModified, SeqNo
FROM         dbo.tTimekeepingScheme
GO
