/****** Object:  View [dbo].[vAlertTypeReferenceDate]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlertTypeReferenceDate]
AS

SELECT TOP 100 PERCENT 
a.ID, 
a.Code, 
a.Name, 
a.SeqNo, 
a.IsActive, 
a.Comment

FROM  dbo.tAlertTypeReferenceDate a
GO
