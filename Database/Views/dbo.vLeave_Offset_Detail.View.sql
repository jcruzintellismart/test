/****** Object:  View [dbo].[vLeave_Offset_Detail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeave_Offset_Detail]
AS
SELECT lod.ID
	, lod.ID_Leave
	, lod.ID_Overtime
	, lod.Date
	, lod.ApprovedHours
	, lod.Minutes 
	, lod.MustUse
	, CONVERT(VARCHAR(15),o.ExpirationDate,107) ExpirationDate
	, lod.SeqNo
FROM dbo.tLeave_Offset_Detail lod
LEFT OUTER JOIN dbo.tOvertime o ON o.ID = lod.ID_Overtime
GO
