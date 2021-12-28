/****** Object:  View [dbo].[vSchool]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSchool]
AS
SELECT  ID ,
        Code ,
        Name ,
        IsActive ,
        Comment ,
        DateTimeCreated ,
        DateTimeModified ,
        DateCreated ,
        DateModified ,
        ID_Transaction_Created ,
        ID_Transaction_Modified ,
        ID_JobMatching ,
        ImageFile
FROM dbo.tSchool
GO
