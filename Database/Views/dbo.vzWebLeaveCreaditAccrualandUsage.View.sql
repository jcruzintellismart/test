/****** Object:  View [dbo].[vzWebLeaveCreaditAccrualandUsage]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzWebLeaveCreaditAccrualandUsage]
AS

SELECT [Date]
,[Year]
,[ID_Month]
,ID_Employee
,[Company]
,[Employee]
,[EmpCode]
,ID_Designation
,ID_Company
,ID_Department
FROM dbo.fzWebLeaveCreaditAccrualandUsage(1,2016,17,0,1)
GO
