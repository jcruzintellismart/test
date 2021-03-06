/****** Object:  View [dbo].[vAlertTypeDesignation]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vAlertTypeDesignation]
AS
SELECT atd.ID,
       atd.Code,
       atd.ID_AlertType,
       atd.ID_Designation,
       atd.SeqNo,
       atd.IsActive,
       atd.Comment,
       at.Name AS AlertType,
       dem.Name AS Designation,
       c.Name AS Company,
       jcm.Name AS JobClass,
       cr.ID_Company,
       d.ID_JobClass
FROM dbo.tJobClass AS jc
INNER JOIN dbo.tJobClassMaintenance AS jcm ON jcm.ID = jc.ID_JobClassMaintenance
RIGHT OUTER JOIN dbo.tDesignation AS d ON jc.ID = d.ID_JobClass
INNER JOIN dbo.tDesignationMaintenance AS dem ON dem.ID = d.ID_DesignationMaintenance
INNER JOIN dbo.tStore AS s ON s.ID = jc.ID_Store 
INNER JOIN dbo.tArea AS a ON a.ID = s.ID_Area
INNER JOIN dbo.tDistrict AS dis ON dis.ID = a.ID_District
INNER JOIN dbo.tCompanyRegion AS cr ON cr.ID = a.ID_District
INNER JOIN dbo.tCompany AS c ON c.ID = cr.ID_Company
RIGHT OUTER JOIN dbo.tAlertTypeDesignation AS atd ON d.ID = atd.ID_Designation
LEFT OUTER JOIN dbo.tAlertType AS at ON atd.ID_AlertType = at.ID;
GO
