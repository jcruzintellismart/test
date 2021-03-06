/****** Object:  View [dbo].[vLeaveCreditFile_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeaveCreditFile_Detail] AS
SELECT
lfd.ID
,lfd.ID_LeaveCreditFile
, 1 Valid --dbo.fValidLeaveCreditFile_Detail(lfd.ID) Valid
,lfd.EmployeeCode
,per.Name Employee
,lfd.LeavePayrollItemCode
,lfd.Value
,lfd.Remarks
,lfd.IsApplied
FROM dbo.tLeaveCreditFile_Detail lfd
LEFT JOIN dbo.tEmployee e ON e.Code = lfd.EmployeeCode
LEFT JOIN dbo.tPersona per ON per.ID = e.ID_Persona
GO
