/****** Object:  View [dbo].[vScheduleFile_Attachments]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vScheduleFile_Attachments]
AS
SELECT  ID ,
        Name ,
        Name_GUID ,
        ID_ScheduleFile FROM dbo.tScheduleFile_Attachments
GO
