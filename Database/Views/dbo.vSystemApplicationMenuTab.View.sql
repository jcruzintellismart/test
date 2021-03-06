/****** Object:  View [dbo].[vSystemApplicationMenuTab]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemApplicationMenuTab]
AS
SELECT     samt.ID, mt.Name AS MenuTab, sa.Name AS SystemApplication, samt.ID_SystemApplication, samt.ID_MenuTab, sa.SeqNo, sa.IsActive
FROM         dbo.tSystemApplicationMenuTab AS samt LEFT OUTER JOIN
                      dbo.tMenuTab AS mt ON samt.ID_MenuTab = mt.ID LEFT OUTER JOIN
                      dbo.tSystemApplication AS sa ON samt.ID_SystemApplication = sa.ID
GO
