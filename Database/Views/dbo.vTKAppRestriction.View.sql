/****** Object:  View [dbo].[vTKAppRestriction]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTKAppRestriction] AS 
SELECT tar.ID
     , tar.Name
     , tar.ID_Company
	 , c.Name Company
     , tar.ID_FilingType
	 , ft.Name FilingType
     , tar.ID_TimekeepingItem
     , pi.Name TimekeepingItem
     , tar.MaxDay
     , tar.SeqNo
     , tar.IsActive
     , tar.DateTimeCreated
     , tar.DateTimeModified
     , tar.Comment 
FROM dbo.tTKAppRestriction tar
	LEFT OUTER JOIN dbo.tFilingType ft ON ft.ID = tar.ID_FilingType
	LEFT OUTER JOIN dbo.tCompany c ON c.ID = tar.ID_Company
	LEFT OUTER JOIN dbo.tTimekeepingItem pi ON pi.ID = tar.ID_TimekeepingItem
GO
