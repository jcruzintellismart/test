/****** Object:  View [dbo].[vHourType2]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vHourType2]
AS
SELECT     ID, Name, IsForApproval, IsActive, Comment,NULL SeqNo
FROM         dbo.tHourType
--WHERE ID <> 5
GO
