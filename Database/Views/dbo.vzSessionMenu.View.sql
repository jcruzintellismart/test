/****** Object:  View [dbo].[vzSessionMenu]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzSessionMenu]
AS
SELECT     TOP (100) PERCENT M.ID, M.Name, M.Code, M.DataSource, M.SeqNo, M.ReportFile, M.IsActive, M.Comment, M.Menu, M.ParentMenu, M.ID_Menu, M.IsVisible, 
                      M.BaseDataSource, M.ID_MenuType, CAST(CAST(M.AllowNew AS INT) * CAST(UGM.AllowNew AS INT) AS BIT) AS AllowNew, M.TableName, CAST(CAST(M.AllowDelete AS INT) * CAST(ugm.AllowDelete AS INT) AS BIT) AllowDelete, 
                      M.AllowOpen, M.ReportTitle, M.ReportSubTitle, M.Description, M.ReadOnly, M.ColorRGB, M.MenuType, M.DarkColorRGB, M.ImageFile, M.Sort, UGM.AllowEdit, 
                      S.ID AS ID_Session, M.ID_ListMenu, M.ListMenu, M.ListSource, M.ListRowCategory, M.ListRowFieldHeader, M.ListRowCategoryHeader, M.ListRowField, M.ParentID, 
                      M.IsUserData, M.IsSpanView, M.ListFixedFilter, U.ID_Employee, M.StatusTable, M.IsPOS, M.AllowNew AS Expr1, M.YField, M.XField, M.SaveTrigger,
					    m.ID_MenuInfo, m.MenuInfo, m.Icon, m.TableFilter, m.SearchField
FROM         dbo.tUserGroup AS ug INNER JOIN
                      dbo.tSession AS S INNER JOIN
                      dbo.tUser AS U ON U.ID = S.ID_User INNER JOIN
                      dbo.vMenu AS M INNER JOIN
                      dbo.tUserGroupMenu AS UGM ON M.ID = UGM.ID_Menu INNER JOIN
                          (SELECT DISTINCT SAM.ID_Menu
                            FROM          dbo.tSystemApplicationMenu AS SAM INNER JOIN
                                                   dbo.tSystemApplication AS SA ON SAM.ID_SystemApplication = SA.ID
                            WHERE      (SA.IsActive = 1)) AS SAM_1 ON SAM_1.ID_Menu = M.ID ON U.ID_UserGroup = UGM.ID_UserGroup ON ug.ID = U.ID_UserGroup LEFT OUTER JOIN
                      dbo.tEmployee AS e ON U.ID_Employee = e.ID
WHERE     (U.IsActive = 1) AND (ug.IsActive = 1) AND (ug.IsActive = 1) AND (M.IsActive = 1)
ORDER BY M.ID_Menu, M.SeqNo, M.Name
GO
