/****** Object:  View [dbo].[vExcelReportPasswordToken]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vExcelReportPasswordToken] 
AS
SELECT 
erpt.ID,
erpt.IsActive,
erpt.Date,
erpt.Token,
erpt.ID_Company,
c.Name Company
FROM dbo.tExcelReportPasswordToken AS erpt
INNER JOIN dbo.tCompany AS c ON c.ID = erpt.ID_Company
GO
