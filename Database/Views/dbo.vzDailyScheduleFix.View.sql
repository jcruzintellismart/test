/****** Object:  View [dbo].[vzDailyScheduleFix]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzDailyScheduleFix]
AS
SELECT * FROM
(
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/01/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/01/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/01/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/02/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/02/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/02/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks


UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/03/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	NULL TimeIn, NULL TimeOut, 'VL' Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	CAST(1.00 AS DECIMAL(18,2)) Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	'Leave not Approve' Remarks


UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/04/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	NULL TimeIn, NULL TimeOut, NULL Leave, 'RD' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks


UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/05/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	NULL TimeIn, NULL TimeOut, NULL Leave, 'RD' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks


UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/06/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/06/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/06/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/07/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	NULL TimeIn, CAST('10/07/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	CAST(1.00 AS DECIMAL(18,2)) Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	'No Time In' Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/08/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/08/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/08/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/09/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/09/2014 8:00 AM' AS DATETIME) TimeIn, NULL TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	CAST(1.00 AS DECIMAL(18,2)) Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	'No Time Out' Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/10/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/10/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/10/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/11/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/11/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/11/2014 3:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RD' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	'Overtime Not Filed' Remarks


UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/12/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/12/2014 8:00 AM' AS DATETIME) TimeIn, NULL TimeOut, NULL Leave, 'RD' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, NULL REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/13/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/13/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/13/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '12PM - 8PM' ScheduleCode, 
	NULL Absences, NULL Tardy, CAST(300.00 AS DECIMAL(18,2)) UT, CAST(3.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	'Invalid Schedule' Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/14/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/14/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/14/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

	
UNION ALL
SELECT 1 ID_Employee, 1 ID_Company, 1 ID_Department, 'Mateo, John Kenneth L.' Employee, 'Intellismart Technology Inc.' Company, 'Development' Department, 
	CAST('10/15/2014' AS DATETIME) Date, '0009234' EmployeeCode, 
	CAST('10/15/2014 8:00 AM' AS DATETIME) TimeIn, CAST('10/15/2014 5:00 PM' AS DATETIME) TimeOut, NULL Leave, 'RG' DayType, NULL HolidayType, '8AM - 5PM' ScheduleCode, 
	NULL Absences, NULL Tardy, NULL UT, CAST(8.00 AS DECIMAL(18,2)) REG, NULL OT, NULL ND, NULL NDOT, NULL RIn, NULL BOut, NULL BIn, NULL ROut, 
	NULL Remarks

)A
GO
