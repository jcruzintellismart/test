/****** Object:  View [dbo].[vAlignment]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vAlignment]
AS 
SELECT ID,Name, SeqNo FROM dbo.tAlignment
GO
