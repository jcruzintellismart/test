/****** Object:  View [dbo].[vAlert]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlert]
AS


SELECT a.ID
,a.Code
,a.Name
,a.ID_AlertType
,at.Name AS AlertType
,a.ID_User
,per.Name AS [USER]
,a.ID_Employee
,per.Name AS Employee
,a.DateHired
,a.RegularizationDate
,a.AnniversaryDate
,a.BirthDate
,a.DateResigned
,a.Comment
FROM dbo.tAlert a
LEFT JOIN dbo.tAlertType at ON at.ID = a.ID_AlertType
LEFT JOIN dbo.tUser u ON u.ID = a.ID_User
LEFT JOIN dbo.tEmployee e ON e.ID = a.ID_Employee
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
