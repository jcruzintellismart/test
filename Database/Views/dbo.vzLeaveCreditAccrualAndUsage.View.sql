/****** Object:  View [dbo].[vzLeaveCreditAccrualAndUsage]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzLeaveCreditAccrualAndUsage]
AS

SELECT 
Date
,YEAR(Date) [Year]
,MONTH(Date) [ID_Month]
,lca.ID_Employee
,com.Name [Company]
,per.Name [Employee]
,e.Code [EmpCode]
,e.ID_Designation
,e.ID_Department

 FROM  dbo.tLeaveCreditAccrual lca
 INNER JOIN dbo.tEmployee e ON e.ID = lca.ID_Employee
 INNER JOIN dbo.tPersona per ON per.ID = e.ID_Persona
 INNER JOIN dbo.tCompany com ON com.ID = e.ID_Company
GO
