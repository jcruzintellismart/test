/****** Object:  View [dbo].[vzOffsetReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzOffsetReport]
AS
    SELECT * FROM dbo.fzOffsetReport('2018-01-01 00:00:00.000','2030-09-30 00:00:00.000') fore
GO
