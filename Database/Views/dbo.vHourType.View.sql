/****** Object:  View [dbo].[vHourType]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vHourType]
AS
SELECT     ID, Name, IsForApproval, IsActive, Comment,NULL SeqNo
FROM         dbo.tHourType
--WHERE ID NOT IN (5) --Policy of Direct HANABI20180911
GO
