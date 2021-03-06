/****** Object:  View [dbo].[vTMonth_Detail]    Script Date: 28/12/2021 1:36:22 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vTMonth_Detail]
AS
SELECT     TOP 100 PERCENT tmd.ID, p.Name AS Employee, tmd.Amount, tmd.SeqNo, tmd.IsActive, tmd.Comment, tmd.Code, 
                      tmd.ID_TMonth, tmd.ID_Employee, e.ID_Company, tmd.MonthlyRate, tmd.Months, tmd.LWOP
FROM         dbo.tEmployee e LEFT OUTER JOIN
                      dbo.tPersona p ON p.ID = e.ID_Persona RIGHT OUTER JOIN
                      dbo.tTMonth_Detail tmd ON e.ID = tmd.ID_Employee
ORDER BY p.Name
GO
