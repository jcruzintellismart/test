/****** Object:  View [dbo].[vLogDeviceUser]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vLogDeviceUser]
AS
SELECT     ID, AccessNo, ID_LogDevice, Comment
FROM         dbo.tLogDeviceUser
GO
