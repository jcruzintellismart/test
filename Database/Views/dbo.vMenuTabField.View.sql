/****** Object:  View [dbo].[vMenuTabField]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuTabField]
AS
SELECT     TOP (100) PERCENT mtf.ID, mtf.Name, mtf.ID_MenuTab, mtf.ID_SystemControlType, mtf.ID_Menu, mtf.Label, mtf.SeqNo, mtf.IsActive, mtf.Header, 
                      mtf.Comment, m.Name AS Menu, mtf.Description, mt.Name AS MenuTab, mtf.ShowInBrowser, mtf.ReadOnly, mtf.Panel, 
                      mt.ID_Menu AS MenuTabMenuID, mt.SeqNo AS MenuTabSeqNo, mtf.ShowInInfo, mtf.ShowInList, sct.Name AS SystemControlType, m.TableName, 
                      mtf.StringFormat, mtf.Sort,
					  
					  CASE WHEN LOWER(mtf.Name) ='id' THEN
							'ID'
						ELSE	                    
					   COALESCE (mtf.Label, m.Name, mtf.Name) 
						END				   
					   
					   AS EffectiveLabel, m.ImageFile, mtf.ParentLookUp, 
                      mtf.ParentLookUpChildColumn, mtf.Expression, mtf.ID_SystemAggregateFunction, saf.Name AS SystemAggregateFunction, mtf.DefaultValue, 
                      mtf.IsRequired, mtf.FixedFilter, mtf.ListColumn, mtf.VisibleIf, mtf.WritableIf, mtf.Height, mtf.RequiredIf, mtf.IsSalaryAuthenticatedField,
					  mtf.EnabledIf, mtf.TableColumn, mm.TableName ParentTableName, mtf.DataSource, mtf.DisplayMember, mtf.DisplayID, mtf.IsClear
FROM         dbo.tMenuTabField AS mtf LEFT OUTER JOIN
                      dbo.tSystemAggregateFunction AS saf ON mtf.ID_SystemAggregateFunction = saf.ID LEFT OUTER JOIN
                      dbo.tSystemControlType AS sct ON mtf.ID_SystemControlType = sct.ID LEFT OUTER JOIN
                      dbo.tMenuTab AS mt ON mtf.ID_MenuTab = mt.ID LEFT OUTER JOIN
                      dbo.tMenu AS m ON mtf.ID_Menu = m.ID LEFT OUTER JOIN
					  dbo.tMenu mm ON mt.ID_Menu = mm.ID
ORDER BY mtf.ID_MenuTab, mtf.SeqNo, mtf.ID
GO
