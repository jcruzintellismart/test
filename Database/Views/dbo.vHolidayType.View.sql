/****** Object:  View [dbo].[vHolidayType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vHolidayType]
AS
SELECT     ID, Name,NULL SeqNo
FROM         dbo.tDayType
WHERE     (ID IN (3,5,7))
GO
