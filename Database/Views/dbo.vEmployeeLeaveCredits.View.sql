/****** Object:  View [dbo].[vEmployeeLeaveCredits]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeLeaveCredits] 
AS 
SELECT 
--lc.ID, 
lc.ID_Employee 
--, lc.LeavePayrollItem AS [LeaveItem] 
, CONVERT(DECIMAL(18, 2), lc.Alloted) AS Alloted 
, CONVERT(DECIMAL(18, 2), lc.Used) AS Used 
, CONVERT(DECIMAL(18, 2), lc.Balance) AS Balance 
--, ID_LeavePayrollItem 
--,lc.Code
FROM vzEmployeeLeaveCredit lc 
INNER JOIN dbo.tEmployee e ON e.ID = lc.ID_Employee 
INNER JOIN dbo.tPersona p ON p.ID = e.ID_Persona
GO
