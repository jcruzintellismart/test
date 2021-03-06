/****** Object:  View [dbo].[vSchedulerListingTemplate_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSchedulerListingTemplate_Detail]
AS
SELECT
SLTD.ID
,SLTD.ID_SchedulerListingTemplate
,PS.Name [Scheduler]
,SLTD.SchedulerEmployeeCode
,SLTD.EmployeeCode
,P.Name [Employee]
FROM
dbo.tSchedulerListingTemplate_Detail SLTD
LEFT JOIN tEmployee E ON E.Code = SLTD.EmployeeCode
LEFT JOIN dbo.tPersona P ON P.ID = E.ID_Persona
LEFT JOIN dbo.tEmployee ES ON ES.Code = SLTD.SchedulerEmployeeCode
LEFT JOIN dbo.tPersona PS ON PS.ID = ES.ID_Persona
GO
