/****** Object:  View [dbo].[vzScheduleReport]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzScheduleReport]
AS   
SELECT TOP 10 * FROM dbo.fzScheduleReport('01/01/2017','12/31/2018',1)
GO
