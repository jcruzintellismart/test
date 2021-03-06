/****** Object:  View [dbo].[vMenuDetailTab]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMenuDetailTab]   
AS   
SELECT     mdt.ID, mdt.Code, mdt.Name, mdt.ImageFile, mdt.SeqNo, mdt.IsActive, mdt.Comment, mdt.TableName, mdt.ChildColumn, mdt.Description, mdt.ID_Menu,    
                      mdt.ParentColumn, mdt.DataSource, mdt.CheckBoxes, mdt.ListSource, mdt.ParentTableName, mdt.ID_DetailMenu, m.Name AS DetailMenu, mdt.ReportFile, mdt.Sort,    
                      mdt.Sortable, mdt.ShowInBrowser, mdt.ID_MenuDetailTabType, mdtt.Name AS MenuDetailTabType, mdt.ParentLookUp, mdt.ID_ListMenu, m_1.Name AS ListMenu,    
                      mdt.ListMenuDetailSource, mdt.ListMenuFixedFilter, mdt.ShowInInfo, mdt.Label, mdt.DetailTabFilter, mdt.AllowDuplicateList, mdt.SaveTrigger, mdt.ImportFile,   
                      mdt.AllowNewRow, mdt.AllowDeleteRow, mdt.FileReferenceDataSource, mdt.FileReferenceSort, mdt.IsSalaryAuthenticatedTab, mdt.VisibleIf, mdt.IsDetailMenuDialog, mdt.DeleteRowBeforeImportFile   
					  ,mdt.DisableButtonsIf,mdt.DisableDetailDeleteIf, mdt.IsReportPasswordProtected
FROM         dbo.tMenuDetailTab AS mdt LEFT OUTER JOIN   
                      dbo.tMenu AS m_1 ON mdt.ID_ListMenu = m_1.ID LEFT OUTER JOIN   
                      dbo.tMenu AS m ON mdt.ID_DetailMenu = m.ID LEFT OUTER JOIN   
                      dbo.tMenuDetailTabType AS mdtt ON mdt.ID_MenuDetailTabType = mdtt.ID
GO
