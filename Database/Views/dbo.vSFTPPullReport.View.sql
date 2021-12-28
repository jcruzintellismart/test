/****** Object:  View [dbo].[vSFTPPullReport]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW	[dbo].[vSFTPPullReport]
AS
SELECT [ID],
       RemoteFileName,
       LogDateTime,
       FileType,
       WithProblems,
       Details
FROM tSFTPPullReport;
GO
