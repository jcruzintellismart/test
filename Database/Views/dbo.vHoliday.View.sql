/****** Object:  View [dbo].[vHoliday]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vHoliday]
AS
SELECT TOP (100) PERCENT
       h.ID,
       h.Code,
       h.Name,
       h.Date,
       h.ID_HolidayType,
       h.ID_Area,
	   am.Name AS Area,
       h.Comment,
       dt.Name AS HolidayType,
       h.Year,
       h.ID_Month,
       h.ID_Date,
       m.Name AS Month,
       h.IsWorking,
       h.ID_SuspensionType,
       st.Name SuspensionType,
	   h.CBA1,
	   h.CBA2
FROM dbo.tHoliday AS h
LEFT OUTER JOIN dbo.tMonth AS m ON h.ID_Month = m.ID
LEFT OUTER JOIN dbo.tDate AS d ON h.ID_Date = d.ID
LEFT OUTER JOIN dbo.tArea AS a ON h.ID_Area = a.ID
LEFT OUTER JOIN dbo.tAreaMaintenance AS am ON am.ID = a.ID_AreaMaintenance
LEFT OUTER JOIN dbo.tDayType AS dt ON h.ID_HolidayType = dt.ID
LEFT OUTER JOIN dbo.tSuspensionType st ON st.ID = h.ID_SuspensionType
ORDER BY h.Year DESC,
h.Date,
m.ID;
GO
