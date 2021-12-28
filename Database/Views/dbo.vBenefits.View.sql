/****** Object:  View [dbo].[vBenefits]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBenefits]
AS
SELECT  b.ID ,
        b.DateTimeCreated ,
        b.ID_User ,
        b.Name ,
		u.Name AS [User] FROM dbo.tBenefits b
		LEFT JOIN dbo.vUser u ON b.ID_User = u.ID
GO
