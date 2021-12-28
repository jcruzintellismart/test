/****** Object:  View [dbo].[vUndertime_Attachments]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUndertime_Attachments]
AS
SELECT  a.ID ,
        a.Name ,
        a.Name_GUID ,
        a.ID_Undertime FROM dbo.tUndertime_Attachments a
LEFT JOIN dbo.tUndertime b ON a.ID_Undertime = b.ID
GO
