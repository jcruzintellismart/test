/****** Object:  View [dbo].[vParameter]    Script Date: 28/12/2021 1:36:21 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vParameter]
AS
SELECT     p.ID, p.ID_TaxComputation, p.Code, p.Name, p.DaysPerYear, p.HoursPerDay, p.IsActive, p.Comment, p.ID_Transaction_Created, 
                      p.ID_Transaction_Modified, p.DateTimeCreated, p.DateTimeModified, p.DateCreated, p.DateModified, p.SeqNo, p.FirstHalfMonthlyRate, 
                      p.SecondHalfMonthlyRate, p.MonthsPerYear, p.CompressedWorkWeek, p.MinTakeHomePayPerc, -- tc.Name AS TaxComputation,
                      p.MinTakeHomePayAmt
FROM         dbo.tParameter AS p 
-- LEFT OUTER JOIN
                      --dbo.tTaxComputation AS tc ON p.ID_TaxComputation = tc.ID
GO
