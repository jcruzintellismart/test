/****** Object:  View [dbo].[vzAWOPReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzAWOPReport]
AS
SELECT * FROM dbo.fzAWOPReport('2018-09-01 00:00:00.000','2030-09-30 00:00:00.000' ,1) far
GO
