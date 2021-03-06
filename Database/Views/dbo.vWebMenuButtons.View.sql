/****** Object:  View [dbo].[vWebMenuButtons]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebMenuButtons]           
AS          
	SELECT           
		mb.ID ,      
		mb.Code ,      
		mb.Name ,      
		mb.ImageFile ,      
		mb.SeqNo ,      
		mb.IsActive ,      
		mb.Comment ,      
		mb.DateTimeCreated ,      
		mb.ID_CreatedBy ,      
		mb.DateTimeModified ,      
		mb.ID_ModifiedBy ,      
		mb.ID_WebMenus ,      
		mb.ID_WebMenuButtonTypes ,      
		u.Name CreatedBy ,      
		u2.Name ModifiedBy  ,    
		mb.SecurityKey  ,  
		mb.Label,  
		mb.CommandText,  
		mb.IsVisible  ,
		bt.Name AS WebMenuButtonTypes,
		mb.visibleif,
		mb.ConfirmationDialog ,
		mb.ID_TargetWebMenus,
		wm.Name TargetWebMenus,
		mb.Message,
		mb.MessageTitle,
		mb.ListDataSource,
		mb.AccessKey,
		mb.ValidationCount,
		mb.ParameterCount,
		mb.HelperText,
		mb.TriggerButtonAfterExecute,
		mb.TriggerAfterExecuteConfirmation,
		mb.ExcelSubDataSource,
		mb.FileReferenceSort,
		mb.RequiredColumns,
		mb.IsAsync,
		mb.IsOtherOption,
		mb.ImportFile
	FROM tWebMenuButtons mb      
	LEFT JOIN dbo.tUser u ON u.ID = mb.ID_CreatedBy      
	LEFT JOIN dbo.tUser u2 ON u2.ID = mb.ID_ModifiedBy 
	LEFT JOIN dbo.tWebMenuButtonTypes bt ON bt.ID = mb.ID_WebMenuButtonTypes		
	LEFT JOIN dbo.tWebMenus wm ON wm.ID = mb.ID_TargetWebMenus
GO
