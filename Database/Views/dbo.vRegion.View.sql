/****** Object:  View [dbo].[vRegion]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vRegion]
AS
SELECT     ID, Code, Name, ImageFile, SeqNo, IsActive, Comment, BereavementDays
FROM         dbo.tRegion
GO
