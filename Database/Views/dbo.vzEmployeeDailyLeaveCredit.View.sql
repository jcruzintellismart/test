/****** Object:  View [dbo].[vzEmployeeDailyLeaveCredit]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeDailyLeaveCredit]
AS
SELECT TOP 100 PERCENT ID_Employee,ID_TimekeepingItem,Date, SUM(Alloted) Alloted, SUM(Used) Used, SUM(Alloted - Used) Balance
FROM

(
SELECT
	 ID_Employee
	,ID_TimekeepingItem
	,Date
	,Total Alloted
	,0 Used
FROM	
	tLeaveCreditAccrual
WHERE	
	Forfeited=0

-----------------------------------------------
UNION ALL
-----------------------------------------------
SELECT 
	 ID_Employee
	,ID_TimekeepingItem
	,Date
	,0 Alloted
	,ld.Days Used
FROM
	tLeave_Detail ld
	INNER JOIN tLeave l ON l.ID = ld.ID_Leave
	
WHERE	
	ID_FilingStatus=2
AND	WithPay=1
and ld.date >=  dbo.fGetSetting('DailyAutomationStartDate') 

-----------------------------------------------
UNION ALL
-----------------------------------------------

SELECT 
	pod.ID_Employee
	,47 ID_TimekeepingItem
	,pod.[Date]
	,(SUM(pod.OffSetRate)/par.HoursPerDay)  Alloted
	, 0 Used
FROM tEmployeeDailySchedule pod
INNER JOIN tEmployee e ON e.ID = pod.ID_Employee
INNER JOIN tParameter par ON par.ID = e.ID_Parameter
WHERE pod.OffSetRate > 0
GROUP BY pod.ID_Employee,par.HoursPerDay,pod.[Date]

) A

GROUP BY 
ID_Employee,ID_TimekeepingItem,Date
ORDER BY ID_Employee,ID_TimekeepingItem,Date
GO
