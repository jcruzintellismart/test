/****** Object:  View [dbo].[vMonthlySchedule]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMonthlySchedule] 
AS
SELECT	
ID
,Code
,Name
,StartDate
,EndDate
,IsActive
,Comment
FROM tMonthlySchedule
GO
