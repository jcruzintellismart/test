/****** Object:  View [dbo].[vWidgetType]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWidgetType]
AS
SELECT  wt.ID ,
        wt.Name ,
		wt.MinW ,
		wt.MinH FROM dbo.tWidgetType wt
GO
