/****** Object:  View [dbo].[vMenuButton]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vMenuButton]
AS
SELECT     mb.ID, mb.Code, mb.Name, mb.ImageFile, mb.SeqNo, mb.IsActive, mb.Comment, mb.CommandText, mb.ID_Menu, mb.ConfirmationText, mb.SuccessInfoText, 
                      mb.DisabledOnNewInfo, mb.ID_MenuDetailTab, mdt.Name AS MenuDetailTab, mb.ID_MenuButtonType, mbt.Name AS MenuButtonType, mb.MustSaveFirst, 
                      mb.EnabledIf, mb.ListSource, mb.IsGeneratedTextFile , mb.DefaultFileName, mb.ID_MenuButtonModuleType, mbmt.Name [MenuButtonModuleType],
					  mb.ValidateCommandText, mb.TemplateFile
FROM         dbo.tMenuButton AS mb LEFT OUTER JOIN
                      dbo.tMenuButtonType AS mbt ON mb.ID_MenuButtonType = mbt.ID LEFT OUTER JOIN
                      dbo.tMenuDetailTab AS mdt ON mb.ID_MenuDetailTab = mdt.ID
					  LEFT JOIN dbo.tMenuButtonModuleType mbmt ON mbmt.ID = mb.ID_MenuButtonModuleType
GO
