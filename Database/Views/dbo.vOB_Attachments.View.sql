/****** Object:  View [dbo].[vOB_Attachments]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOB_Attachments]
AS
SELECT  ID ,
        Name ,
        Name_GUID ,
        ID_OB FROM dbo.tOB_Attachments
GO
