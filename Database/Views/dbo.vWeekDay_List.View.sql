/****** Object:  View [dbo].[vWeekDay_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vWeekDay_List]
AS
SELECT     ID, Code, Name
FROM         dbo.vWeekDay
GO
