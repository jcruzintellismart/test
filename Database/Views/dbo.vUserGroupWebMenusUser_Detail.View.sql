/****** Object:  View [dbo].[vUserGroupWebMenusUser_Detail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vUserGroupWebMenusUser_Detail]
AS

SELECT  ugwmd.ID ,
        ugwmd.ID_UserGroupWebMenusUser ,
        ugwmd.ID_User ,
		u.Name AS [User] FROM dbo.tUserGroupWebMenusUser_Detail ugwmd
		INNER JOIN dbo.tUser u ON ugwmd.ID_User = u.ID
GO
