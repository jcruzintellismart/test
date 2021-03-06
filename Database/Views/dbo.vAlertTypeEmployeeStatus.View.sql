/****** Object:  View [dbo].[vAlertTypeEmployeeStatus]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlertTypeEmployeeStatus]
AS
SELECT     ates.ID, ates.Code, ates.ID_AlertType, ates.ID_EmployeeStatus, ates.SeqNo, ates.IsActive, ates.Comment, at.Name AS AlertType, es.Name AS EmployeeStatus
FROM         dbo.tAlertTypeEmployeeStatus AS ates LEFT OUTER JOIN
                      dbo.tEmployeeStatus AS es ON ates.ID_EmployeeStatus = es.ID LEFT OUTER JOIN
                      dbo.tAlertType AS at ON ates.ID_AlertType = at.ID
GO
