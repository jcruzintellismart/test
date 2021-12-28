/****** Object:  View [dbo].[vQuarter]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vQuarter]
AS
SELECT     ID, Code, Name, MinMonth, MaxMonth, SeqNo, IsActive, Comment, ID_Transaction_Created, ID_Transaction_Modified, 
                      DateTimeCreated, DateTimeModified, DateCreated, DateModified
FROM         dbo.tQuarter
GO
