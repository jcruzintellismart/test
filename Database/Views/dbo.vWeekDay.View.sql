/****** Object:  View [dbo].[vWeekDay]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vWeekDay]
AS
SELECT     TOP 100 PERCENT ID, Code, Name, SeqNo, IsActive, Comment, ID_Transaction_Created, ID_Transaction_Modified, 
                      DateTimeCreated, DateTimeModified, DateCreated, DateModified
FROM         dbo.tWeekDay
ORDER BY SeqNo
GO
