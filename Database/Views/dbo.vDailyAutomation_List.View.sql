/****** Object:  View [dbo].[vDailyAutomation_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vDailyAutomation_List]
AS
SELECT     ID, [Date], Comment
FROM         dbo.vDailyAutomation da
GO
