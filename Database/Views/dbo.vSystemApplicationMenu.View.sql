/****** Object:  View [dbo].[vSystemApplicationMenu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemApplicationMenu]
AS
SELECT     sam.ID, sam.ID_SystemApplication, sam.ID_Menu, sa.Name AS SystemApplication, sa.SeqNo
FROM         dbo.tSystemApplicationMenu AS sam LEFT OUTER JOIN
                      dbo.tSystemApplication AS sa ON sam.ID_SystemApplication = sa.ID
GO
