/****** Object:  View [dbo].[vAlertNotificationPeriod]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlertNotificationPeriod]
AS
SELECT     anp.ID, anp.Code, anp.Name, anp.ID_Period, anp.Value, anp.SeqNo, anp.IsActive, anp.Comment, p.Name AS Period
FROM         dbo.tAlertNotificationPeriod AS anp LEFT OUTER JOIN
                      dbo.tPeriod AS p ON anp.ID_Period = p.ID
GO
