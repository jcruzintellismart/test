/****** Object:  View [dbo].[vManualAttendanceLog]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vManualAttendanceLog]
AS
SELECT 
mal.ID
, mal.ID_Employee
, mal.StartDate
, mal.EndDate
, mal.FileDate
, mal.ID_EditedByUser
, mal.SeqNo
, mal.IsActive
, mal.Comment
, p.Name AS Employee
, p.ImageFile
, e.ID_Company
, mal.IsExecuted
, mal.DateExecuted
FROM dbo.tManualAttendanceLog AS mal 
LEFT OUTER JOIN dbo.tEmployee AS e ON mal.ID_Employee = e.ID
LEFT OUTER JOIN dbo.tPersona AS p ON p.ID = e.ID_Persona
LEFT OUTER JOIN dbo.tCompany com ON com.ID = e.ID_Company
GO
