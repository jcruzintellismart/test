/****** Object:  View [dbo].[vTypeOfSalary]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vTypeOfSalary]
AS
SELECT  ts.ID ,
        ts.Name FROM dbo.tTypeOfSalary ts
GO
