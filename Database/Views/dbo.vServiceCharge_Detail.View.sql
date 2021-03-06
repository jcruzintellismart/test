/****** Object:  View [dbo].[vServiceCharge_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vServiceCharge_Detail]
AS
SELECT        scd.ID, scd.ID_Employee, scd.TotalAmount, scd.ID_ServiceCharge, scd.IsActive, scd.Comment, p.Name AS Employee, sc.Name AS ServiceCharge, e.ID_Company, scd.Days, scd.SCPerDay
FROM            dbo.tServiceCharge_Detail AS scd LEFT OUTER JOIN
                         dbo.tServiceCharge AS sc ON scd.ID_ServiceCharge = sc.ID LEFT OUTER JOIN
                         dbo.tEmployee AS e ON scd.ID_Employee = e.ID LEFT OUTER JOIN
                         dbo.tPersona AS p ON e.ID_Persona = p.ID
GO
