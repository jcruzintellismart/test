/****** Object:  View [dbo].[vzOnlineUser]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzOnlineUser]
AS
SELECT     A.ID_User, A.[User], A.ID, A.StartDateTime, dbo.fTimeSpan(A.StartDateTime, dbo.fGetDate()) AS ElapsedTime
FROM         dbo.vSession AS A INNER JOIN
                          (SELECT     MAX(ID) AS ID
                            FROM          dbo.vSession
                            GROUP BY [User]) AS B ON A.ID = B.ID
WHERE     (A.EndDateTime IS NULL)
GO
