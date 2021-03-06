/****** Object:  View [dbo].[vzEmployeeCommendation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeCommendation]
As
	
	
	Select
	
		ec.ID_Employee
	,	c.Name Commendation
	,	ec.Date
	,	ec.Weight
	,	e.Code EmployeeCode
	,	e.Name Employee
	,	e.Company	
	--------- for filter	
	,	e.ID_Designation
	,	e.ID_Department
	,	c.ID ID_Commendation
	,   	ct.Name CommendationType
	,	ct.ID ID_CommendationType
	,	dm.Name Department
	,	e.ID_Company
	,             e.IsActive
	From 
		tEmployeeCommendation ec Left Outer Join
		tCommendation c ON c.ID= ec.ID_Commendation Left Outer Join
		vEmployee e ON e.ID=ec.ID_Employee Left Outer Join
		tCommendationType ct ON ct.ID=c.ID_CommendationType
 		left join tdepartment d on e.ID_Department = d.ID
	   LEFT OUTER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
GO
