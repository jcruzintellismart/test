/****** Object:  View [dbo].[vSystemApplicationMenuDetailTab]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemApplicationMenuDetailTab]
AS
SELECT     samdt.ID, mdt.Name AS MenuDetailTab, sa.Name AS SystemApplication, samdt.ID_SystemApplication, sa.SeqNo, sa.IsActive, samdt.ID_MenuDetailTab
FROM         dbo.tSystemApplicationMenuDetailTab AS samdt LEFT OUTER JOIN
                      dbo.tMenuTab AS mdt ON samdt.ID_MenuDetailTab = mdt.ID LEFT OUTER JOIN
                      dbo.tSystemApplication AS sa ON samdt.ID_SystemApplication = sa.ID
GO
