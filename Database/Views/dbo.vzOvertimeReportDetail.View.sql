/****** Object:  View [dbo].[vzOvertimeReportDetail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzOvertimeReportDetail]
AS
SELECT * FROM fzOvertimeReportDetail('01-01-2014','12-31-2014',1)
GO
