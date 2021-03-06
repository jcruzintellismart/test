/****** Object:  View [dbo].[vOverTimeFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOverTimeFile_Detail]
AS
SELECT     
otfd.ID
,otfd.ID_Employee
,otfd.EmployeeCode
,per.Name Employee
,otfd.WorkDate
,otfd.StartTime
,otfd.EndTime
,otfd.IsActive
,otfd.Comment
,otfd.ID_OverTimeFile
,otfd.FollowingDay
--,dbo.fCheckOvertime(NULL, e.ID, otfd.WorkDate, otfd.FollowingDay, otfd.StartTime, otfd.EndTime) AS isValid
,otfd.ComputedTimeIn
,otfd.ComputedTimeOut
,otfd.ForOffSet
,otfd.Reason
,otfd.IsApplied
,dbo.fIsValidOTTemplateFile_Detail(otfd.ID) AS isValid
FROM dbo.tOverTimeFile_Detail AS otfd LEFT JOIN
dbo.tEmployee e ON e.Code = otfd.EmployeeCode LEFT JOIN
dbo.tPersona per ON per.ID = e.ID_Persona
GO
