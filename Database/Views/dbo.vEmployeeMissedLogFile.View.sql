/****** Object:  View [dbo].[vEmployeeMissedLogFile]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vEmployeeMissedLogFile] 
AS
SELECT	
mlf.ID
,mlf.Code
,mlf.Name
,mlf.IsActive
,mlf.Comment
,mlf.ID_Company
,c.Name Company
,mlf.IsExecuted
,mlf.DateTimeModified
,mlf.ID_User
FROM 
tEmployeeMissedLogFile mlf
LEFT JOIN dbo.tCompany c ON c.ID = mlf.ID_Company
GO
