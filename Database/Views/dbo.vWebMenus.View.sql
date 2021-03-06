/****** Object:  View [dbo].[vWebMenus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[vWebMenus]           
AS          
	SELECT           
		wm.ID ,               
        wm.Name ,        
        wm.ImageFile ,        
        wm.SeqNo ,        
        wm.IsActive ,        
        wm.Comment ,        
        wm.DateTimeCreated ,       
        wm.DateTimeModified ,      
        wm.ID_WebMenus ,        
        wm2.Name WebMenus ,        
        wm.ID_WebMenuTypes ,    
        wmt.Name WebMenuTypes ,          
        wm.StaticPage ,        
        wm.TableName ,
        wm.DataSource,
        wm.HasApproval,
        wm.ViewFilter,
        wm.IsDefault,
        wm.ReportPath,
        wm.ReportDataSource,
        wm.WithPagination,
        wm.HasNew,
        wm.HasOpen,
        wm.HasDelete,
        wm.ID_WebMenus_Redirect,
        wmr.Name WebMenus_Redirect ,
        wm.IsVisible,
        wm.HideGridCheckBoxIF, 
        wm.DeleteFilter,
        wm.RedirectPath,
        wm.[Columns],
        wm.RedirectString,
        wm.HasNewIf,
        wm.HasDeleteIf,
        wm.SortBy,
        wm.HasGridCheckBox,
        wm.HasGridSorting,
        wm.ID_WebMenuTypes_Open,
        wmo.Name AS WebMenuTypes_Open,
        wm.HasFilter,
        wm.VisibleIf,
        wm.ShowMenuIf,
        wm.DeleteConfirmation,
        wm.HasOpenIf,
        --dbo.fMenuHasFileUpload(wm.ID) AS MenuHasFileUpload,
        wm.ColumnCount,
        wm.ButtonCount,
        wm.WidsCount,
        wm.LinksCount,
        wm.isToolbarOnLeft,
        wm.ID_Alignment,
        a.Name AS toolTipAlignment,
		a.Name AS Alignment,
        wm.WithExportToExcel,
        wm.Width,
		wm.Height ,
		wm.FixedColumns,
		wm.HasDownload,
		wm.HasDownloadPath,
		wm.ID_WebSystemApplication,
		wsa.Name AS WebSystemApplication,
		wm.IsSlidingForm,
		wm.IsCollapse,
		wm.SubDataSourceCount,
		wm.FormTemplate,
		wm.GridTemplate,
		wm.IsViewResume,
		wm.IsSystemMenu,
		wm.TabsCount,
		wm.IsCustomPage,
		wm.Label COLLATE SQL_Latin1_General_CP1_CI_AS [Label],
		wm.IsGroupsCollapsedByDefault,
		wm.IsEnableColumnResize,
		wm.ListSource
		,wm.HasBack
	FROM tWebMenus wm        
	LEFT JOIN dbo.tWebMenus wm2 ON wm.ID_WebMenus = wm2.ID  
	LEFT JOIN dbo.tWebMenuTypes wmt ON wmt.ID = wm.ID_WebMenuTypes
	LEFT JOIN dbo.tWebMenus wmr ON wmr.ID = wm.ID_WebMenus_Redirect
	LEFT JOIN dbo.tWebMenuTypes wmo ON wmo.ID = wm.ID_WebMenuTypes_Open
	LEFT JOIN dbo.tAlignment a ON a.ID = wm.ID_Alignment
	LEFT JOIN dbo.tWebSystemApplication wsa ON wsa.ID = wm.ID_WebSystemApplication
GO
