/****** Object:  View [dbo].[vzEmployeeAttendanceLog]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vzEmployeeAttendanceLog]
AS

SELECT * FROM dbo.fzEmployeeAttendanceLog('2011-01-01','2011-01-01')a
GO
