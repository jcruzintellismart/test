/****** Object:  View [dbo].[vEmployeeDailyScheduleFile_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailyScheduleFile_Detail_List]
AS
SELECT     ID, EmployeeCode, Employee, [Date], REG, EXT, OT, ND, NDOT, TARDY, UT, IsRD
FROM         dbo.vEmployeeDailyScheduleFile_Detail
GO
