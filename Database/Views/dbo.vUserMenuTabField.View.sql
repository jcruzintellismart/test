/****** Object:  View [dbo].[vUserMenuTabField]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserMenuTabField]
AS
SELECT     umtf.ID, umtf.ID_User, umtf.ID_MenuTabField, mtf.Name, mt.SeqNo AS MenuTabSeqNo, mtf.IsActive, mt.IsActive AS MenuTabIsActive, mtf.Label, 
                      mt.ID_Menu AS MenuTabMenuID, mtf.ID_MenuTab, mt.Name AS MenuTab, mtf.Panel, mtf.ShowInList, umtf.SeqNo, mtf.SeqNo AS MenuTabFieldSeqNo, 
                      umtf.GroupSeqNo, mtf.Sort, COALESCE (mtf.Label, m.Name, mtf.Name) AS EffectiveLabel, m.ID AS MenuID
FROM         dbo.tMenuTab AS mt RIGHT OUTER JOIN
                      dbo.tMenuTabField AS mtf ON mt.ID = mtf.ID_MenuTab RIGHT OUTER JOIN
                      dbo.tUserMenuTabField AS umtf ON mtf.ID = umtf.ID_MenuTabField LEFT OUTER JOIN
                      dbo.tMenu AS m ON mtf.ID_Menu = m.ID
GO
