/****** Object:  View [dbo].[vOvertime_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOvertime_List]
AS
SELECT 
 ID
,Employee
,Date
,StartTime
,EndTime
,FilingStatus
,Reason
--,ForBatchApproval
FROM dbo.vOvertime
GO
