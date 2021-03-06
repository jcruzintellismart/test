/****** Object:  View [dbo].[vWebAuditTrail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebAuditTrail]
AS
SELECT     at.ID, at.ParentID, at.ID_AuditTrailType, at.Name, at.OldValue, at.NewValue, at.DateTime, at.Details, at.Comment, att.Name AS AuditTrailType, at.ImageFile, 
                      at.Hostname ,at.ID_User,u.Name [User]
FROM         dbo.tWebAuditTrail AS at LEFT OUTER JOIN
                      dbo.tAuditTrailType AS att ON at.ID_AuditTrailType = att.ID 
					  LEFT OUTER JOIN tUser u ON u.ID = at.ID_User
GO
