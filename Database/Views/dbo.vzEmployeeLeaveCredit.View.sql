/****** Object:  View [dbo].[vzEmployeeLeaveCredit]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeLeaveCredit]
AS



SELECT
*
FROM
(
SELECT A.ID_TimekeepingItem AS ID
, A.ID_Employee
, A.ID_TimekeepingItem
, A.Alloted
, A.Used
, A.Alloted - A.Used AS Balance
, i.Name AS TimekeepingItem
, i.Code
FROM         
(
SELECT     ID_Employee, ID_TimekeepingItem, SUM(Alloted) Alloted, SUM(Used) Used
FROM
(
						--SELECT ID_Employee, ID_TimekeepingItem, SUM(Total) Alloted, 0 Used
		    --            FROM   tLeaveCreditAccrual
		    --            WHERE  Forfeited = 0 AND Converted = 0
		    --            GROUP BY ID_Employee, ID_TimekeepingItem


		    --            UNION ALL


						--SELECT l.ID_Employee, l.ID_TimekeepingItem, 0 Alloted, SUM(ld.Days) Used
						--FROM  dbo.tLeave_Detail ld
						--INNER JOIN tLeave l ON l.ID = ld.ID_Leave
						--WHERE l.ID_FilingStatus = 2
						--AND l.startdate >  ISNULL(dbo.fGetCompanySetting('DailyAutomationStartDate',(SELECT ID_Company FROM dbo.tEmployee WHERE	ID = ID_Employee)),'1/1/1900' )
						--AND l.isActive = 1
						--AND ld.WithPay = 1
						--GROUP BY l.ID_Employee,l.ID_TimekeepingItem


						--UNION ALL
--Offset--------------------------------------------------------------------------------------------------------|
						SELECT
							ID_Employee
							, ID_TimekeepingItem
							,SUM(Alloted) Alloted
							, 0 Used
						FROM
							(
							SELECT 
								eds.ID_Employee
								,48 ID_TimekeepingItem
								--,SUM((CAST((ApprovedMinutes / 60.00)/4.00 AS INT)*.5)) Alloted
								--, SUM(CAST((edsd.ApprovedMinutes / 60) / ds.WorkingHours AS DECIMAL(18,1))) Alloted
								, SUM(CAST(FLOOR(((edsd.ApprovedMinutes / 60) / ds.WorkingHours)/.5)*.5  AS DECIMAL(18,1)) ) Alloted -- FLOOR(n/.5)*.5
								, 0 Used
							FROM dbo.tEmployeeDailySchedule eds
							INNER JOIN dbo.tEmployeeDailySchedule_Detail edsd ON eds.ID = edsd.ID_EmployeeDailySchedule
							INNER JOIN dbo.tEmployee e ON e.ID = eds.ID_Employee
							
							--INNER JOIN tParameter par ON par.Id = e.ID_Parameter
							INNER JOIN dbo.tDailySchedule ds ON ds.ID = eds.ID_DailySchedule
							LEFT OUTER JOIN dbo.tOvertime o ON o.ID_Employee = eds.ID_Employee AND o.WorkDate = eds.Date AND o.ID_WorkCredit = edsd.ID_WorkCredit
							WHERE edsd.ID_WorkCredit = 2 --ForOffset
							AND dbo.fGetDate() < o.ExpirationDate
							GROUP BY eds.ID_Employee

							) a


						GROUP BY ID_Employee, ID_TimekeepingItem	
						
						UNION ALL
						
						SELECT
							ID_Employee
							, ID_TimekeepingItem
							,0 Allotted
							,SUM(Used) Used
						FROM
							(
							SELECT 
								l.ID_Employee
								,48 ID_TimekeepingItem
								--,SUM((CAST((ApprovedMinutes / 60.00)/4.00 AS INT)*.5)) Alloted
								, 0 Alloted
								, SUM(l.DaysWithPay) [Used]
							FROM dbo.tLeave l

							INNER JOIN dbo.tEmployee e ON e.ID = l.ID_Employee
							--INNER JOIN dbo.tEmployeeDailySchedule eds ON l.ID_Employee = eds.ID_Employee 
							--INNER JOIN tParameter par ON par.Id = e.ID_Parameter

							AND l.ID_FilingStatus = 2 
							AND l.ID_TimekeepingItem = 48
							GROUP BY l.ID_Employee,l.DaysWithPay

							) a


						GROUP BY ID_Employee, ID_TimekeepingItem				                      
--Offset-------------------------------------------------------------------------------------------------------|

)a
GROUP BY ID_Employee, ID_TimekeepingItem
)A 
LEFT OUTER JOIN dbo.tTimekeepingItem i ON A.ID_TimekeepingItem = i.ID
)A
GO
