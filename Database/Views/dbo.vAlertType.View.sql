/****** Object:  View [dbo].[vAlertType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlertType]
AS


SELECT TOP 100 PERCENT
at.ID
,at.Code
,at.Name
,at.ID_AlertTypeReferenceDate
,ard.Name AS AlertTypeReferenceDate
,at.SpecificDate
,at.StartDate
,at.EndDate
,at.ID_AlertApplicationType
,apt.Name AS AlertApplicationType
,at.Message
,at.SeqNo
,at.IsActive
,at.Comment
,at.ID_Transaction_Created
,at.ID_Transaction_Modified
,at.DateTimeCreated
,at.DateTimeModified
,at.DateCreated
,at.DateModified
FROM dbo.tAlertType at
LEFT JOIN dbo.tAlertTypeReferenceDate ard ON ard.ID = at.ID_AlertTypeReferenceDate
LEFT JOIN dbo.tAlertApplicationType apt ON apt.ID = at.ID_AlertApplicationType
GO
