/****** Object:  View [dbo].[vTimekeepingFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTimekeepingFile]
AS
SELECT        tf.ID, tf.Name, tf.StartDate, tf.EndDate, tf.IsApplied, tf.DateExecuted, tf.ID_Company, c.Name AS Company
FROM            dbo.tTimekeepingFile AS tf LEFT OUTER JOIN
                         dbo.tCompany AS c ON c.ID = tf.ID_Company
GO
