/****** Object:  View [dbo].[vSchedulerListingTemplate_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSchedulerListingTemplate_Detail_List]
AS
SELECT
SchedulerEmployeeCode
,Scheduler
,EmployeeCode
,Employee
FROM
vSchedulerListingTemplate_Detail
GO
