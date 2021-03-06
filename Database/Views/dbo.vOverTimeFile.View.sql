/****** Object:  View [dbo].[vOverTimeFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vOverTimeFile] 
AS
SELECT	
o.ID
,o.Code
,o.Name
,o.SeqNo
,o.IsActive
,o.Comment
,o.IsExecuted
,o.ID_Company
,c.Name Company
,o.DateExecuted
,o.ID_User
,u.Name [User]
,o.DateTimeModified
FROM 
	tOverTimeFile o
	LEFT JOIN dbo.tCompany c ON c.ID = o.ID_Company
	LEFT OUTER JOIN tUser u ON u.ID =o.ID_User
GO
