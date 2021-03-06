/****** Object:  View [dbo].[vUserGroupMenuSolution]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vUserGroupMenuSolution]
AS	
--dough not delettte
						SELECT m.ID ,
                          m.Name ,
                          m.Code ,
                          m.DataSource ,
                          m.BaseDataSource ,
                          m.ID_Menu ,
                          m.SeqNo ,
                          m.ReportFile ,
                          m.IsActive ,
                          m.IsVisible ,
                          m.Comment ,
                          m.ID_MenuType ,
                          ugm.AllowNew ,
                          m.TableName ,
                          ugm.AllowDelete ,
						  m.AllowOpen,
						  ugm.AllowEdit,
                          m.ReportTitle ,
                          m.ReportSubTitle ,
                          m.Description ,
                          m.ReadOnly ,
                          m.ColorRGB ,
                          m.DarkColorRGB ,
                          m.ImageFile ,
                          m.Sort ,
                          m.ID_ListMenu ,
                          m.ListRowFieldHeader ,
                          m.ListRowCategoryHeader ,
                          m.ListRowField ,
                          m.ListRowCategory ,
                          m.IsUserData ,
                          m.IsSpanView ,
                          m.ListFixedFilter ,
                          m.StatusTable ,
                          m.IsPOS ,
                          m.XField ,
                          m.YField ,
                          m.SaveTrigger ,
                          m.ID_MenuInfo ,
                          m.Icon ,
                          m.TableFilter ,
                          m.SearchField ,
                          m.HasChildren ,
                          m.ID_ApplicationType ,
                          m.MultiSelect ,
                          m.IsMenuDialog ,
                          m.EnableSaveIf ,
                          m.WritableAttachmentIf ,
                          m.MultiSelectIf
						  ,ugm.ID_UserGroup
						   from dbo.tUserGroupMenu ugm 
						   INNER JOIN dbo.tMenu m  ON ugm.ID_Menu = m.ID
GO
