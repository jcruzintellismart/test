/****** Object:  View [dbo].[vScheduleAssignment_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleAssignment_Detail]
AS
SELECT S.ID,
       S.ID_ScheduleAssignment,
       S.ID_Employee,
       S.SeqNo,
       S.IsActive,
       S.Comment,
       S.ID_Transaction_Created,
       S.ID_Transaction_Modified,
       S.DateTimeCreated,
       S.DateTimeModified,
       S.DateCreated,
       S.DateModified,
       P.Name AS Employee,
       dm.Name AS Department,
       E.Code AS EmployeeCode,
       dem.Name AS Designation
FROM dbo.tDepartment AS d 
INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
RIGHT OUTER JOIN dbo.tEmployee AS E ON D.ID = E.ID_Department
LEFT OUTER JOIN dbo.tPersona AS P ON E.ID_Persona = P.ID
RIGHT OUTER JOIN dbo.tScheduleAssignment_Detail AS S ON E.ID = S.ID_Employee
LEFT OUTER JOIN dbo.tDesignation AS des ON des.ID = E.ID_Designation
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = des.ID_DesignationMaintenance;
GO
