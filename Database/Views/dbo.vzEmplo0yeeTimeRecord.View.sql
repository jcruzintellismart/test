/****** Object:  View [dbo].[vzEmplo0yeeTimeRecord]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	 VIEW [dbo].[vzEmplo0yeeTimeRecord]
AS
SELECT * FROM  dbo.fzEmplo0yeeTimeRecord('05-01-2014','05-31-2014')
GO
