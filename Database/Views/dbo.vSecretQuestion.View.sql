/****** Object:  View [dbo].[vSecretQuestion]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSecretQuestion]
AS
SELECT  ID ,
        Name FROM dbo.tSecretQuestion
GO
