/****** Object:  View [dbo].[vMenuDetailTabField]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuDetailTabField]
AS
SELECT     TOP (100) PERCENT mtf.ID, mtf.Name, mtf.ID_MenuDetailTab, mtf.ID_SystemControlType, mtf.ID_Menu, mtf.Label, mtf.SeqNo, mtf.IsActive, mtf.Header, mtf.Comment, 
                      m.Name AS Menu, mtf.Description, mdt.Name AS MenuDetailTab, mtf.ShowInBrowser, mtf.Formula, mtf.ReadOnly, mtf.Width, mtf.ListKey, mtf.ListColumn, mtf.IsGroup, 
                      mtf.Text, mtf.ListText, mtf.Sort, mtf.IsColumn, mtf.CopyFromList, mtf.ImageFile, mtf.ShowInInfo, COALESCE (mtf.Label, m.Name, mtf.Name) AS EffectiveLabel, 
                      mdt.ID_Menu AS MenuDetailTabMenuID, mtf.Expression, mdt.TableName, mtf.ParentLookUp, mtf.ParentLookUpChildColumn, mtf.IsRequired, mtf.FixedFilter, 
                      mtf.Defaultvalue, mtf.IsFrozen, mtf.ParentLookUpListColumn, mtf.IsWordWrap,mtf.ReadOnlyIf, mtf.VisibleIf, mtf.IsTextArea,mtf.IsClear

FROM         dbo.tMenuDetailTabField AS mtf LEFT OUTER JOIN
                      dbo.tMenuDetailTab AS mdt ON mtf.ID_MenuDetailTab = mdt.ID LEFT OUTER JOIN
                      dbo.tMenu AS m ON mtf.ID_Menu = m.ID
ORDER BY mtf.ID_MenuDetailTab, mtf.IsGroup, mtf.SeqNo, mtf.ID
GO
