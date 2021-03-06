/****** Object:  View [dbo].[vDocumentProperties]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDocumentProperties]
AS
SELECT     dp.ID, dp.Code, dp.Name, dp.ImageFile, dp.SeqNo, dp.IsActive, dp.Comment, dp.ID_Branch, dp.ID_Original, dp.ID_Company, dp.ID_Menu, dp.ID_Table, 
                      t.Name AS [Table], m.Name AS Menu, c.Name AS Company, dp.DateCreated, dp.DateModified, dp.ID_ModifiedBy, dp.ID_CreatedBy, 
                      (CASE WHEN u.ID_Employee IS NULL THEN u.Name ELSE p.Name END) AS CreatedBy, (CASE WHEN uu.ID_Employee IS NULL THEN uu.Name ELSE pp.Name END) 
                      AS ModifiedBy, dp.DateAccessed, dp.ID_AccessedBy, (CASE WHEN uuu.ID_Employee IS NULL THEN uuu.Name ELSE ppp.Name END) AS AccessedBy, 
                      dp.ID_Original AS OriginalID
FROM         dbo.tPersona AS pp RIGHT OUTER JOIN
                      dbo.tEmployee AS ee ON pp.ID = ee.ID_Persona RIGHT OUTER JOIN
                      dbo.tEmployee AS e LEFT OUTER JOIN
                      dbo.tPersona AS p ON e.ID_Persona = p.ID RIGHT OUTER JOIN
                      dbo.tTable AS t RIGHT OUTER JOIN
                      dbo.tMenu AS m RIGHT OUTER JOIN
                      dbo.tDocumentProperties AS dp LEFT OUTER JOIN
                      dbo.tUser AS uuu LEFT OUTER JOIN
                      dbo.tPersona AS ppp RIGHT OUTER JOIN
                      dbo.tEmployee AS eee ON ppp.ID = eee.ID_Persona ON uuu.ID_Employee = eee.ID ON dp.ID_AccessedBy = uuu.ID LEFT OUTER JOIN
                      dbo.tCompany AS c ON dp.ID_Company = c.ID ON m.ID = dp.ID_Menu ON t.ID = dp.ID_Table LEFT OUTER JOIN
                      dbo.tUser AS uu ON dp.ID_ModifiedBy = uu.ID LEFT OUTER JOIN
                      dbo.tUser AS u ON dp.ID_CreatedBy = u.ID ON e.ID = u.ID_Employee ON ee.ID = uu.ID_Employee
GO
