/****** Object:  View [dbo].[vWebMenuColumns]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuColumns]         
AS        
SELECT         
		wmc.ID ,    
        wmc.Code ,    
        wmc.Name ,    
        wmc.ImageFile ,    
        wmc.SeqNo ,    
        wmc.IsActive ,    
        wmc.Comment ,    
        wmc.DateTimeCreated ,    
        wmc.ID_CreatedBy ,    
        wmc.DateTimeModified ,    
        wmc.ID_ModifiedBy ,    
        wmc.ID_WebMenuControlTypes ,    
        wmc.IsVisible ,    
        wmc.IsReadOnly ,    
        wmc.IsHideLabel ,    
        wmc.Format ,    
        wmc.ID_WebMenuSummaryTypes ,    
        wmc.SummaryLabel ,    
        wmc.Filter ,    
        u.Name CreatedBy,    
        u2.Name ModifiedBy,    
        wm.Name WebMenus,  
        wmc.SummaryFormat,  
        wmc.Label,  
        ct.Name AS WebMenuControlTypes,  
        st.Name AS WebMenuSummaryTypes  ,
        wmc.id_table,
        --wmc.TableName,
        wmc.DefaultValue,
        wmc.JSEvents,
        wmc.ShowInList,
        wmc.ShowInListIf,
        wmc.DisplayMember,
        wmc.VisibleIf,
        dbo.fIsColumnRequired(wmc.ID) AS IsColumnRequired,
        wmc.IsEnabled,
        wmc.cssClass,
        wmc.InFilter,
        wmc.IsGroup,
        wmc.ListKey,
        wmc.EnabledIf,
        wmc.Position,
        wmc.HeaderText,
        wmc.ID_TargetWebMenus,
        wm2.Name AS TargetWebMenus,
        wmc.FilterSeqNo,
        wmc.Width,
        wmc.Height,
        wmc.ID_FilterWebMenuControlTypes,
        ct2.Name AS FilterWebMenuControlTypes,
        wmc.GroupSeqNo,
        wmc.DisplayID,
        wmc.ParentKey,
        wmc.WithLinkButton,
        wmc.LinkButtonText,
        wmc.FilePath,
        wmc.FileExtensions,
        wmc.IsRequired,
        wmc.RequiredIf,
        --CAST(TYPE_NAME(cd.user_type_id) AS VARCHAR(128)) colDataType,
		CAST((SELECT CASE WHEN t.Name = 'nvarchar' THEN 'varchar' ELSE t.Name END FROM  sys.columns c INNER JOIN sys.types t ON c.user_type_id = t.user_type_id WHERE c.object_id = OBJECT_ID(dbo.fGetMenuSysObjects(wm.DataSource)) AND c.name = wmc.Name) AS VARCHAR) colDataType,

        wmc.HelperText,
        --v.Name MenuView,
        wmc.isTitle,
        wmc.HasNull,
        wmc.ID_TargetTable,
        wmc.IsImported,
        t2.Name AS targetTableName,
        wmc.HasValidation,
		wmc.ID_DetailedViewPagePosition,
		dvp.NAME DetailedViewPagePosition,
		wmc.LinkButtonParameter,
		wmc.TableName,
		--CASE WHEN wm.TableName IS NULL THEN 0 ELSE dbo.fIsForeignKey(wmc.Name,wm.TableName) END IsForeignKey,
		--0 IsForeignKey,
		wmt.ID_WebMenus,
		wmc.ID_WebMenuTabs,
		wmt.Name AS WebMenuTabs,
		wmc.ValidationCount
        --t3.Name AS WebMenuTable
		,wmc.IsParentColumn
		,AdditionalColumns
FROM tWebMenuColumns wmc    
LEFT JOIN dbo.tUser u ON u.ID = wmc.ID_CreatedBy    
LEFT JOIN dbo.tUser u2 ON u2.ID = wmc.ID_ModifiedBy      
LEFT JOIN dbo.tWebMenus wm2 ON wm2.ID = wmc.ID_TargetWebMenus 
LEFT JOIN dbo.tWebMenuControlTypes ct ON ct.ID = wmc.ID_WebMenuControlTypes 
LEFT JOIN dbo.tWebMenuControlTypes ct2 ON ct2.ID = wmc.ID_FilterWebMenuControlTypes   
LEFT JOIN dbo.tWebMenuSummaryTypes st ON st.ID = wmc.ID_WebMenuSummaryTypes 
LEFT JOIN ttable t ON t.id = wmc.id_table
--LEFT JOIN dbo.tTable v ON v.ID = wm.ID_View
LEFT JOIN dbo.tTargetTable t2 ON t2.id = wmc.ID_TargetTable
--LEFT JOIN dbo.tTable t3 ON wm.ID_Table = t3.ID
--LEFT JOIN sys.columns cd ON OBJECT_NAME(object_id) = wm.DataSource AND cd.name = wmc.Name
LEFT JOIN vDetailedViewPagePosition dvp ON dvp.ID = wmc.ID_DetailedViewPagePosition
LEFT JOIN dbo.tWebMenuTabs wmt ON wmt.ID = wmc.ID_WebMenuTabs
LEFT JOIN dbo.tWebMenus wm ON wm.ID = wmt.ID_WebMenus
--LEFT JOIN sys.columns cd ON OBJECT_NAME(object_id) = dbo.fGetMenuSysObjects(wm.DataSource) AND cd.name = wmc.Name
WHERE wm.IsActive = 1
GO
