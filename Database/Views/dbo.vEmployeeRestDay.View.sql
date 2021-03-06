/****** Object:  View [dbo].[vEmployeeRestDay]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vEmployeeRestDay]
AS
SELECT     ERD.ID, ERD.ID_Employee, ERD.ID_WeekDay, wd.SeqNo, ERD.Comment, P.Name AS Employee, WD.Name AS WeekDay
FROM         dbo.tPersona P RIGHT OUTER JOIN
                      dbo.tEmployee E ON P.ID = E.ID_Persona RIGHT OUTER JOIN
                      dbo.tEmployeeRestDay ERD ON E.ID = ERD.ID_Employee LEFT OUTER JOIN
                      dbo.tWeekDay WD ON ERD.ID_WeekDay = WD.ID
GO
