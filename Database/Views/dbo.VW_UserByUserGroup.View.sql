/****** Object:  View [dbo].[VW_UserByUserGroup]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_UserByUserGroup]
AS
SELECT     a.Name AS Username, b.Name AS 'User Group'
FROM         dbo.tUser a INNER JOIN
                      dbo.tUserGroup b ON a.ID_UserGroup = b.ID
GO
