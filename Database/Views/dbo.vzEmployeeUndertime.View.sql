/****** Object:  View [dbo].[vzEmployeeUndertime]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vzEmployeeUndertime] AS

SELECT * FROM dbo.fzEmployeeUndertime('2001-01-01','2001-01-01',1)a
GO
