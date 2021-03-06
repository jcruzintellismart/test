/****** Object:  View [dbo].[vAreaHoliday]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAreaHoliday]
AS
-- Update for JFC Policy HANABI20180912
SELECT
AH.ID
,AH.ID_Store
,AH.ID_Holiday
,AH.IsCBA1
,AH.IsCBA2
,H.Name [Holiday]
,am.Name [Area]
,sm.Name Store
FROM
dbo.tAreaHoliday AH
LEFT JOIN dbo.tHoliday H ON H.ID = AH.ID_Holiday
LEFT JOIN dbo.tStore AS s ON s.ID = ah.ID_Store
LEFT JOIN dbo.tStoreMaintenance AS sm ON sm.ID = s.ID_StoreMaintenance
LEFT JOIN dbo.tArea A ON A.ID = s.ID_Area
LEFT JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
GO
