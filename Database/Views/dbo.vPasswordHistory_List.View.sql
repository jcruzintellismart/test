/****** Object:  View [dbo].[vPasswordHistory_List]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vPasswordHistory_List]
AS
SELECT     ID, Password, ID_User, ImageFile, ImagePath, SeqNo, IsActive, Comment
FROM         dbo.vPasswordHistory
GO
