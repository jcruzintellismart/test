/****** Object:  View [dbo].[vLeave_Attachments]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeave_Attachments]
AS
SELECT  ID ,
        Name ,
        Name_GUID ,
        ID_Leave FROM dbo.tLeave_Attachments
GO
