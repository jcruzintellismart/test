/****** Object:  View [dbo].[vSystemArchiving]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSystemArchiving]
AS
SELECT     ID, Code, Name, ImageFile, SeqNo, IsActive, Comment, StartDate, EndDate
FROM         dbo.tSystemArchiving
GO
