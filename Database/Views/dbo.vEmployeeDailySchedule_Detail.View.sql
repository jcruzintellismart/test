/****** Object:  View [dbo].[vEmployeeDailySchedule_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailySchedule_Detail]
AS
SELECT     edsd.ID, edsd.ID_EmployeeDailySchedule, edsd.ID_Hourtype, edsd.Minutes, edsd.Tardy, edsd.Approved, edsd.Comment, ht.Name AS HourType, 
                      edsd.StartTime, edsd.EndTime, edsd.ApprovedMinutes, edsd.ConsideredHours, edsd.ComputedHours, eds.ID_Employee, eds.[Date], 
                      dbo.tPersona.Name AS Employee, edsd.ActualTardy, edsd.ID_VerifierEmployee, edsd.ID_ApproverEmployee, edsd.VerificationDate, 
                      edsd.ApprovalDate, dbo.tPersona.ImageFile, pv.Name AS Verifiedby, pa.Name AS ApprovedBy, edsd.ForApproval, edsd.IsBasic, edsd.NDAMMinuteIn, 
                      edsd.NDAMMinuteOut, edsd.NDAMMinutes, edsd.NDPMMinuteIn, edsd.NDPMMinuteOut, edsd.NDPMMinutes, edsd.NDMinutes, edsd.NDHours, 
                      edsd.ID_WorkCredit, wc.Name AS WorkCredit, eds.REG, eds.OT, eds.ND, eds.NDOT, dbo.tEmployee.ID_Company
FROM         dbo.tWorkCredit wc RIGHT OUTER JOIN
                      dbo.tEmployeeDailySchedule_Detail edsd ON wc.ID = edsd.ID_WorkCredit LEFT OUTER JOIN
                      dbo.tEmployee LEFT OUTER JOIN
                      dbo.tPersona ON dbo.tEmployee.ID_Persona = dbo.tPersona.ID RIGHT OUTER JOIN
                      dbo.tEmployeeDailySchedule eds ON dbo.tEmployee.ID = eds.ID_Employee ON edsd.ID_EmployeeDailySchedule = eds.ID LEFT OUTER JOIN
                      dbo.tHourType ht ON edsd.ID_Hourtype = ht.ID LEFT OUTER JOIN
                      dbo.tEmployee ev ON edsd.ID_VerifierEmployee = ev.ID LEFT OUTER JOIN
                      dbo.tPersona pv ON ev.ID_Persona = pv.ID LEFT OUTER JOIN
                      dbo.tEmployee ea ON edsd.ID_ApproverEmployee = ea.ID LEFT OUTER JOIN
                      dbo.tPersona pa ON ea.ID_Persona = pa.ID
GO
