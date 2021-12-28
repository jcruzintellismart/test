/****** Object:  View [dbo].[vFilingModules]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vFilingModules]
AS

SELECT 'OB' AS Code, 'Official Business' AS Name
UNION ALL
SELECT 'ML', 'Missed Log'
UNION ALL
SELECT 'OT', 'Overtime'
UNION ALL
SELECT 'COS', 'Change of Schedule'
UNION ALL
SELECT 'UT', 'Undertime'
UNION ALL
SELECT 'SCHED', 'Schedule File'
GO
