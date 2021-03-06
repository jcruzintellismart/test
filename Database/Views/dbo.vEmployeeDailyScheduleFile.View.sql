/****** Object:  View [dbo].[vEmployeeDailyScheduleFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeDailyScheduleFile]
AS
SELECT     
edsf.ID
, edsf.Code
, edsf.Name
, edsf.ID_Company
, c.Name AS Company
, edsf.Comment
, edsf.SeqNo
, edsf.IsActive
, edsf.IsExecuted
, edsf.DateExecuted
FROM  dbo.tEmployeeDailyScheduleFile edsf LEFT OUTER JOIN
dbo.tCompany c ON edsf.ID_Company = c.ID
GO
