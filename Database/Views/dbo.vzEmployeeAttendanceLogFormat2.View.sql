/****** Object:  View [dbo].[vzEmployeeAttendanceLogFormat2]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeAttendanceLogFormat2] 
AS

SELECT * FROM fzEmployeeAttendanceLogFormat2('2011-01-01','2011-01-01')a
GO
