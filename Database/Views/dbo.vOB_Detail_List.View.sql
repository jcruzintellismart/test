/****** Object:  View [dbo].[vOB_Detail_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vOB_Detail_List]
AS
SELECT     ob_d.ID, ob_d.Date, ob_d.StartTime, ob_d.EndTime, ob_d.Comment
FROM         dbo.vOB_Detail ob_d
GO
