/****** Object:  View [dbo].[vWebWidgetsType]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vWebWidgetsType]
AS
SELECT  ID ,
        Name ,
		SeqNo FROM dbo.tWebWidgetsType
GO
