/****** Object:  View [dbo].[vBatchFingerDataTransfer]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vBatchFingerDataTransfer]
AS
SELECT     ID, Code, Name, ImageFile, ImagePath, SeqNo, IsActive, Comment
FROM         dbo.tBatchFingerDataTransfer
GO
