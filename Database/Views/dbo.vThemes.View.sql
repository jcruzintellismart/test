/****** Object:  View [dbo].[vThemes]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vThemes]
AS
SELECT  t.ID ,
        t.Name ,
        t.PrimaryColor ,
        t.RightBox ,
        t.RightBoxHeader ,
        t.LabelColorRB ,
        t.RightBoxInput ,
        t.TextColorRB ,
        t.SecondaryColor ,
        t.SideMenu ,
        t.TextColorMenu ,
        t.Header ,
        t.HeaderSearch ,
        t.SearchTextColor ,
        t.TextColor ,
        t.IsActive ,
		t.ID_Company FROM dbo.tThemes t
GO
