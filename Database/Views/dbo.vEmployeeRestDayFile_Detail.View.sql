/****** Object:  View [dbo].[vEmployeeRestDayFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vEmployeeRestDayFile_Detail]
AS


SELECT     
rfd.ID
, rfd.ID_RestDayFile
, rfd.SeqNo
, rfd.EmployeeCode
--, rfd.Employee
, per.Name Employee
, rfd.Day1
, rfd.Day2
, rfd.Day3
, rfd.Day4
, rfd.Day5
, rfd.Day6
, rfd.Day7
, rfd.Comment
, rfd.IsApplied
FROM dbo.tEmployeeRestDayFile_Detail AS rfd
LEFT JOIN dbo.tEmployee e ON e.Code = rfd.EmployeeCode
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
