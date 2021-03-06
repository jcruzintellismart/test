/****** Object:  View [dbo].[vMenu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vMenu]
AS
SELECT     m.ID, m.Name, m.Code, m.DataSource, m.SeqNo, m.ReportFile, m.IsActive, m.Comment, pm.Name AS Menu, pm.Name AS ParentMenu, m.ID_Menu, m.IsVisible, 
                      m.BaseDataSource, m.ID_MenuType, m.AllowNew, m.TableName, m.AllowDelete, m.AllowOpen, m.ReportTitle, m.ReportSubTitle, m.Description, m.ReadOnly, 
                      m.ColorRGB, m.DarkColorRGB, m.ImageFile, m.Sort, m.ID_ListMenu, mt.Name AS MenuType, lm.Name AS ListMenu, lm.DataSource AS ListSource, pm.ID AS ParentID, 
                      m.ListRowField, m.ListRowCategoryHeader, m.ListRowFieldHeader, m.ListRowCategory, m.IsUserData, m.IsSpanView, m.ListFixedFilter, m.StatusTable, m.IsPOS, 
                      m.YField, m.XField, m.SaveTrigger
                     ,dbo.fMenuHasValidationApproveButton(m.ID) HasValidationApproveButton ,
					 m.ID_MenuInfo,  mi.[Name] MenuInfo, m.Icon, m.TableFilter, m.SearchField, m.HasChildren, m.ID_ApplicationType , at.Name [ApplicationType]
					 , m.MultiSelect , m.IsMenuDialog, m.EnableSaveIf, m.WritableAttachmentIf,m.MultiSelectIf, m.IsReportPasswordProtected
FROM         dbo.tMenu AS pm RIGHT OUTER JOIN
                      dbo.tMenu AS lm RIGHT OUTER JOIN
                      dbo.tMenu AS m ON lm.ID = m.ID_ListMenu ON pm.ID = m.ID_Menu LEFT OUTER JOIN
                      dbo.tMenuType AS mt ON m.ID_MenuType = mt.ID
					   LEFT OUTER JOIN  dbo.tMenu mi ON mi.ID = m.ID_MenuInfo
					   LEFT JOIN dbo.tApplicationType at ON at.ID = m.ID_ApplicationType
GO
