/****** Object:  View [dbo].[vScheduler_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduler_Detail]  
AS  
    SELECT  sd.ID ,  
            sd.ImageFile ,  
            sd.SeqNo ,  
            sd.IsActive ,  
            sd.Comment ,  
            sd.ID_Scheduler ,  
            sd.ID_Employee ,  
            c.Name AS Company ,  
            per.Name AS Employee ,  
            s.Name ,  
            dm.Name AS Department ,  
            c.ID AS ID_Company ,  
            d.ID [ID_Department],  
            e.Code AS EmployeeCode ,  
            dem.Name AS Designation ,  
            es.Name AS EmployeeStatus  
    FROM    dbo.tScheduler_Detail AS sd  
            LEFT OUTER JOIN dbo.tScheduler AS s ON s.ID = sd.ID_Scheduler  
            LEFT OUTER JOIN dbo.tEmployee AS e ON sd.ID_Employee = e.ID  
            LEFT OUTER JOIN dbo.tCompany AS c ON e.ID_Company = c.ID  
            LEFT OUTER JOIN dbo.tDepartment AS d ON e.ID_Department = d.ID  
			INNER JOIN dbo.tDepartmentMaintenance AS dm ON dm.ID = d.ID_DepartmentMaintenance
            LEFT OUTER JOIN dbo.tPersona AS per ON per.ID = e.ID_Persona  
            LEFT OUTER JOIN dbo.tDesignation AS dg ON dg.ID = e.ID_Designation  
			INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = dg.ID_DesignationMaintenance
            LEFT OUTER JOIN dbo.tEmployeeStatus es ON es.ID = e.ID_EmployeeStatus;
GO
