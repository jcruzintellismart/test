/****** Object:  View [dbo].[vCity]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vCity]
AS
SELECT  ID ,
        Code ,
        Name ,
        ID_JobMatching
FROM dbo.tCity
GO
