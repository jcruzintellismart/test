/****** Object:  View [dbo].[vzWebEmployeeUndertime]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebEmployeeUndertime]
AS
SELECT	
ID
,ID_Employee
,EmployeeCode
,Employee
,[Date]
,ID_DailySchedule
,DailySchedule
,UT
,[TimeIn]
,[TimeOut]
,ID_Company
,Company
,ID_Department
,Department
,ID_Branch
,Branch
,StartDate
,EndDate
FROM dbo.fzWebEmployeeUndertime('01-01-2014','12-31-2017',1,0,1)
GO
