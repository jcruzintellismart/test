/****** Object:  View [dbo].[vEmployeeChangeOfSchedule_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeChangeOfSchedule_Detail_List] AS

SELECT ID, SchedDate,OldSched,NewSched,ForRDSD
FROM dbo.vEmployeeChangeOfSchedule_Detail
GO
