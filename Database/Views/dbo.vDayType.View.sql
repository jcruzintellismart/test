/****** Object:  View [dbo].[vDayType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vDayType]
AS
SELECT     ID, Code, Name, IsActive, Comment, DateTimeCreated, DateTimeModified
FROM         dbo.tDayType dt
GO
