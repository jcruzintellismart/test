/****** Object:  View [dbo].[vAuditTrail]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAuditTrail]
AS
SELECT     at.ID, at.ParentID, at.ID_AuditTrailType, at.Name, at.OldValue, at.NewValue, at.DateTime, at.Details, at.Comment, att.Name AS AuditTrailType, at.ImageFile, 
                      at.Hostname , at.ID_Session
FROM         dbo.tAuditTrail AS at LEFT OUTER JOIN
                      dbo.tAuditTrailType AS att ON at.ID_AuditTrailType = att.ID
GO
