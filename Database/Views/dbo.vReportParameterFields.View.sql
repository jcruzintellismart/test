/****** Object:  View [dbo].[vReportParameterFields]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vReportParameterFields]
AS
SELECT  ID ,
        Code ,
        Name ,
        ImageFile ,
        SeqNo ,
        IsActive ,
        Comment ,
        ID_Menu ,
        Label FROM [dbo].[tReportParameterFields]
GO
