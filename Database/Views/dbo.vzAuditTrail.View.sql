/****** Object:  View [dbo].[vzAuditTrail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzAuditTrail]
AS
SELECT * FROM dbo.fzAuditTrail(DATEADD(dd, DATEDIFF(dd, 0, dbo.fGetDate()), 0),DATEADD(dd, DATEDIFF(dd, 0, dbo.fGetDate()), 0),1) at
GO
