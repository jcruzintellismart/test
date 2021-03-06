/****** Object:  View [dbo].[vLeaveFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vLeaveFile]
AS
SELECT     
lf.ID
,Lf.Name
,lf.SeqNo
,lf.IsActive
,lf.Comment
,lf.ID_Company
,c.Name AS Company
,lf.IsExecuted
,lf.DateExecuted
,lf.ID_User
,lf.DateTimeModified
FROM dbo.tLeaveFile AS lf LEFT JOIN
dbo.tCompany AS c ON lf.ID_Company = c.ID
GO
