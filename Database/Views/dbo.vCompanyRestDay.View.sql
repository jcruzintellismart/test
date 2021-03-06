/****** Object:  View [dbo].[vCompanyRestDay]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCompanyRestDay]
AS
SELECT     CRD.ID, CRD.ID_Company, CRD.ID_WeekDay, WD.SeqNo, CRD.IsActive, CRD.Comment, CRD.ID_Transaction_Created, CRD.ID_Transaction_Modified, 
                      CRD.DateTimeCreated, CRD.DateTimeModified, CRD.DateCreated, CRD.DateModified, C.Name AS Company, WD.Name AS WeekDay
FROM         dbo.tCompanyRestDay AS CRD LEFT OUTER JOIN
                      dbo.tCompany AS C ON CRD.ID_Company = C.ID LEFT OUTER JOIN
                      dbo.tWeekDay AS WD ON CRD.ID_WeekDay = WD.ID
GO
